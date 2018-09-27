/*********************************************
 Compiler Construction CS 201 Winter 2017
 Group: #1
 Students:
 1. Dang Tu Nguyen (tnguy208@ucr.edu)
 2. Abdulrahman Aloraini (aalor001@ucr.edu)
 *********************************************/

#include "llvm/ADT/Statistic.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/CFG.h"
#include "llvm/Support/raw_ostream.h"
#include <stack>
#include <stdio.h>
#include <string.h>

using namespace llvm;
using namespace std;

#define DEBUG_TYPE "myCS201"

namespace {
    struct myCS201 : public FunctionPass {
        /* Pass identification, replacement for typeid */
        static char ID;
        
        /* Module's context */
        LLVMContext* Context;
        
        /* The module on which we are working */
        Module* CurrentModule;
        
        /* Map between function and its counter */
        DenseMap<Function*, GlobalVariable*> FunctionCounterMap;
        
        /*******************************************************/
        
        myCS201() : FunctionPass(ID) {}
        
        bool doInitialization(Module &M) {
            errs() << "\n---------Starting CS201 Project---------\n\n";
            
            /* Set context and working module */
            Context = &M.getContext();
            CurrentModule = &M;
            
            /* Intialize counter to 0 for each function */
            for (auto &F: M) {
                ConstantInt * Zero = ConstantInt::get (Type::getInt32Ty(*Context), 0);
                FunctionCounterMap[&F] = new GlobalVariable(*CurrentModule,
                                                            Type::getInt32Ty(*Context),
                                                            false,
                                                            GlobalValue::InternalLinkage,
                                                            Zero,
                                                            "FunctionCounter" );
            }
  
            errs() << "Module: " << M.getName() << "\n";
            
            return true;
        }
        
        bool doFinalization(Module &M) {
            errs() << "\n\n-------Finished CS201 Project----------\n";
            return false;
        }
        
        /* InsertCallSeqStrPrintfInst is used to insert printf instruction, which will print out
         the string "****** Call sequence ******", before the first non-PHIorDb instruction of BB */
        void InsertCallSeqStrPrintfInst(BasicBlock& BB) {
            /* Insert printf instruction before the first instruction */
            IRBuilder<> Builder(BB.getFirstNonPHIOrDbg());
            
            /* Define the printf instruction */
            vector<Type *> Args;
            Args.push_back(Type::getInt8PtrTy(*Context));
            FunctionType *PrintfType =
            FunctionType::get(Builder.getInt32Ty(), Args, true);
            Constant *PrintfFunc = CurrentModule->getOrInsertFunction("printf", PrintfType);
            Value *FormatStr = Builder.CreateGlobalStringPtr("%s\n");
            Value *TitleStrPtr = Builder.CreateGlobalStringPtr("****** Call sequence ******");
            
            /* Create a call to printf function */
            vector<Value *> Values;
            Values.push_back(FormatStr);
            Values.push_back(TitleStrPtr);
            CallInst *Call = Builder.CreateCall(PrintfFunc, Values);
            Call->setTailCall(false);
        }

        /* InsertFuncNamePrintfInst is used to insert printf instruction, which will print out
         the name of a function (funcName), before the first non-PHIorDb instruction of BB */
        void InsertFuncNamePrintfInst(BasicBlock& BB, string funcName) {
            /* Insert printf instruction before the first instruction */
            IRBuilder<> Builder(BB.getFirstNonPHIOrDbg());
            
            /* Define the printf instruction */
            vector<Type *> Args;
            Args.push_back(Type::getInt8PtrTy(*Context));
            FunctionType *PrintfType = FunctionType::get(Builder.getInt32Ty(), Args, true);
            Constant *PrintfFunc = CurrentModule->getOrInsertFunction("printf", PrintfType);
            Value *FormatStr = Builder.CreateGlobalStringPtr("%s\n");
            Value *funcNamePtr = Builder.CreateGlobalStringPtr(funcName);
            
            /* Create a call to printf function */
            vector<Value *> Values;
            Values.push_back(FormatStr);
            Values.push_back(funcNamePtr);
            CallInst *Call = Builder.CreateCall(PrintfFunc, Values);
            Call->setTailCall(false);
        }
        
        /* InsertFuncCountInst is used to insert counting instruction, which will increment the 
         counter of a function by 1, before the first non-PHIorDb instruction of BB */
        void InsertFuncCountInst(BasicBlock& BB, Function& F) {
            /* Insert counting instruction before the first instruction */
            IRBuilder<> Builder(BB.getFirstNonPHIOrDbg());
            
            /* Load the counter of the function F into LoadAddr */
            Value *LoadAddr = Builder.CreateLoad(FunctionCounterMap[&F]);
            /* Increment the counter by 1 and store it to AddAddr */
            Value *AddAddr = Builder.CreateAdd(ConstantInt::get(Type::getInt32Ty(*Context), 1),LoadAddr);
            /* Update the global variable - counter of the function F */
            Builder.CreateStore(AddAddr, FunctionCounterMap[&F]);
        }

        /* InsertFuncCallFreqPrintfInst is used to insert printf instruction, which will print out
         the call frequencies of each function, before the last instruction of BB */
        void InsertFuncCallFreqPrintfInst(BasicBlock& BB) {
            /* Insert printf instruction before the first instruction */
            IRBuilder<> Builder(BB.getTerminator());
            
            /* Insert instruction to print out the string "****** Function frequencies ******" */
            vector<Type *> Args;
            Args.push_back(Type::getInt8PtrTy(*Context));
            FunctionType *PrintfType =
            FunctionType::get(Builder.getInt32Ty(), Args, true);
            Constant *PrintfFunc = CurrentModule->getOrInsertFunction("printf", PrintfType);
            Value *FormatStrForTitle = Builder.CreateGlobalStringPtr("\n%s\n");
            Value *TitleStr = Builder.CreateGlobalStringPtr("****** Function frequencies ******");
            vector<Value *> Values;
            Values.push_back(FormatStrForTitle);
            Values.push_back(TitleStr);
            CallInst *Call = Builder.CreateCall(PrintfFunc, Values);
            Call->setTailCall(false);
            
            /* Insert instruction to print out call frequencies of each function */
            Value *FormatStr = Builder.CreateGlobalStringPtr("%s: %d\n");
            for (DenseMap<Function*, GlobalVariable*>::iterator it = FunctionCounterMap.begin(),
                 en = FunctionCounterMap.end(); it != en; it++ ) {
                
                Function* F = it->first;
                GlobalVariable* Counter = it->second;
                Value *FuncCounter = Builder.CreateLoad(Counter);
                Value *FuncName = Builder.CreateGlobalStringPtr(F->getName());
                
                Values.clear();
                Values.push_back(FormatStr);
                Values.push_back(FuncName);
                Values.push_back(FuncCounter);
                Call = Builder.CreateCall(PrintfFunc, Values);
                Call->setTailCall(false);
            }
        }
        
        bool runOnFunction(Function &F) override {
            errs() << "myCS201: ";
            errs().write_escaped(F.getName()) << '\n';
            
            /* Insert an instruction printing name of a function F to F's entry basic block, 
             which is always executed when F is executed */
            InsertFuncNamePrintfInst(F.getEntryBlock(), F.getName());
            
            /* Insert an instruction incrementing the counter of a function F to F's entry basic 
             block, which is always executed when F is executed */
            InsertFuncCountInst(F.getEntryBlock(), F);
            
            if (F.getName().equals("main")) {
                for(auto &BB: F) {
                    if (isa<ReturnInst>(BB.getTerminator())) {
                        /* Insert an instruction printing call frequencies of all functions of 
                         the working module to function main's terminating basic block,
                         which is always executed at last */
                        InsertFuncCallFreqPrintfInst(BB);
                    }
                }
                /* Insert an instruction printing a string "****** Call sequence ******" to function 
                 main's entry basic block, which is always executed at first */
                InsertCallSeqStrPrintfInst(F.getEntryBlock());
            }
            
            return false;
    }
  };
}

char myCS201::ID = 0;
static RegisterPass<myCS201> X("myCS201", "CS201 Project's Passes: Call sequence and Call frequencies");
