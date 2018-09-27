; ModuleID = 'compress_r.bc'
source_filename = "compress.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

@maxbits = global i32 16, align 4
@maxmaxcode = global i64 65536, align 8
@hsize = global i64 257, align 8
@free_ent = global i64 0, align 8
@exit_stat = global i32 0, align 4
@nomagic = global i32 1, align 4
@zcat_flg = global i32 0, align 4
@quiet = global i32 1, align 4
@block_compress = global i32 128, align 4
@clear_flg = global i32 0, align 4
@ratio = global i64 0, align 8
@checkpoint = global i64 10000, align 8
@force = global i32 0, align 4
@InCnt = common global i32 0, align 4
@apsim_InCnt = common global i32 0, align 4
@orig_text_buffer = common global [50 x i8] zeroinitializer, align 16
@InBuff = common global i8* null, align 8
@comp_text_buffer = common global [55 x i8] zeroinitializer, align 16
@OutBuff = common global i8* null, align 8
@in_count = global i64 1, align 8
@out_count = global i64 0, align 8
@offset = internal global i32 0, align 4
@bytes_out = common global i64 0, align 8
@n_bits = common global i32 0, align 4
@maxcode = common global i64 0, align 8
@htab = common global [257 x i64] zeroinitializer, align 16
@codetab = common global [257 x i16] zeroinitializer, align 16
@lmask = global [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", align 1
@rmask = global [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", align 1
@buf = common global [16 x i8] zeroinitializer, align 16
@fsize = common global i64 0, align 8
@ofname = common global [100 x i8] zeroinitializer, align 16
@FunctionCounter = internal global i32 0
@0 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@1 = private unnamed_addr constant [5 x i8] c"main\00"
@2 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00"
@3 = private unnamed_addr constant [35 x i8] c"****** Function frequencies ******\00"
@4 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00"
@5 = private unnamed_addr constant [5 x i8] c"main\00"
@6 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@7 = private unnamed_addr constant [28 x i8] c"****** Call sequence ******\00"
@FunctionCounter.1 = internal global i32 0
@8 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@9 = private unnamed_addr constant [11 x i8] c"initbuffer\00"
@FunctionCounter.2 = internal global i32 0
@10 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@11 = private unnamed_addr constant [9 x i8] c"compress\00"
@FunctionCounter.3 = internal global i32 0
@12 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@13 = private unnamed_addr constant [8 x i8] c"getbyte\00"
@FunctionCounter.4 = internal global i32 0
@14 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@15 = private unnamed_addr constant [8 x i8] c"cl_hash\00"
@FunctionCounter.5 = internal global i32 0
@16 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@17 = private unnamed_addr constant [9 x i8] c"cl_block\00"
@FunctionCounter.6 = internal global i32 0
@18 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@19 = private unnamed_addr constant [7 x i8] c"output\00"
@FunctionCounter.7 = internal global i32 0
@20 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@21 = private unnamed_addr constant [8 x i8] c"putbyte\00"
@FunctionCounter.8 = internal global i32 0
@22 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@23 = private unnamed_addr constant [11 x i8] c"writebytes\00"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @7, i32 0, i32 0))
  %1 = load i32, i32* @FunctionCounter
  %2 = add i32 1, %1
  store i32 %2, i32* @FunctionCounter
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i32 0, i32 0))
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 50, i32* %count, align 4
  call void @initbuffer()
  store i32 16, i32* @maxbits, align 4
  %4 = load i32, i32* @maxbits, align 4
  %shl = shl i32 1, %4
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* @maxmaxcode, align 8
  %5 = load i32, i32* %count, align 4
  store i32 %5, i32* @InCnt, align 4
  store i32 53, i32* @apsim_InCnt, align 4
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @orig_text_buffer, i32 0, i32 0), i8** @InBuff, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @comp_text_buffer, i32 0, i32 0), i8** @OutBuff, align 8
  call void @compress()
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3, i32 0, i32 0))
  %7 = load i32, i32* @FunctionCounter
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0), i32 %7)
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define void @initbuffer() #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.1
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.1
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0))
  %seed = alloca i32, align 4
  %i = alloca i32, align 4
  %tabort = alloca i32, align 4
  store i32 1, i32* %seed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %tabort, align 4
  %5 = load i32, i32* %seed, align 4
  %mul = mul nsw i32 %5, 133
  %add = add nsw i32 %mul, 81
  %rem = srem i32 %add, 8095
  store i32 %rem, i32* %seed, align 4
  %6 = load i32, i32* %seed, align 4
  %rem1 = srem i32 %6, 256
  %conv = trunc i32 %rem1 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @compress() #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.2
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.2
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0))
  %fcode = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %ent = alloca i64, align 8
  %disp = alloca i32, align 4
  %hsize_reg = alloca i64, align 8
  %hshift = alloca i32, align 4
  %apsim_bound111 = alloca i32, align 4
  store i64 0, i64* %i, align 8
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %3 = load i32, i32* @block_compress, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 257, i32 256
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* @free_ent, align 8
  %call = call i32 @getbyte()
  %conv1 = zext i32 %call to i64
  store i64 %conv1, i64* %ent, align 8
  store i32 0, i32* %hshift, align 4
  %4 = load i64, i64* @hsize, align 8
  store i64 %4, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %fcode, align 8
  %cmp = icmp slt i64 %5, 65536
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %7, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %hshift, align 4
  %sub = sub nsw i32 8, %8
  store i32 %sub, i32* %hshift, align 4
  %9 = load i64, i64* @hsize, align 8
  store i64 %9, i64* %hsize_reg, align 8
  %10 = load i64, i64* %hsize_reg, align 8
  call void @cl_hash(i64 %10)
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %if.then35, %if.then, %for.end
  %11 = load i32, i32* @InCnt, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %apsim_bound111, align 4
  %call5 = call i32 @getbyte()
  store i32 %call5, i32* %c, align 4
  %12 = load i64, i64* @in_count, align 8
  %inc6 = add nsw i64 %12, 1
  store i64 %inc6, i64* @in_count, align 8
  %13 = load i32, i32* %c, align 4
  %conv7 = sext i32 %13 to i64
  %14 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 %conv7, %sh_prom
  %15 = load i64, i64* %ent, align 8
  %add = add nsw i64 %shl, %15
  store i64 %add, i64* %fcode, align 8
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %hshift, align 4
  %shl8 = shl i32 %16, %17
  %conv9 = sext i32 %shl8 to i64
  %18 = load i64, i64* %ent, align 8
  %xor = xor i64 %conv9, %18
  store i64 %xor, i64* %i, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %19
  %20 = load i64, i64* %arrayidx, align 8
  %21 = load i64, i64* %fcode, align 8
  %cmp10 = icmp eq i64 %20, %21
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %22 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %22
  %23 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %23 to i64
  store i64 %conv13, i64* %ent, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  %24 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %24
  %25 = load i64, i64* %arrayidx14, align 8
  %cmp15 = icmp slt i64 %25, 0
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  br label %nomatch

if.end:                                           ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end
  %26 = load i64, i64* %hsize_reg, align 8
  %27 = load i64, i64* %i, align 8
  %sub19 = sub nsw i64 %26, %27
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %disp, align 4
  %28 = load i64, i64* %i, align 8
  %cmp21 = icmp eq i64 %28, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i32 1, i32* %disp, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18
  br label %probe

probe:                                            ; preds = %if.then46, %if.end24
  %29 = load i32, i32* %disp, align 4
  %conv25 = sext i32 %29 to i64
  %30 = load i64, i64* %i, align 8
  %sub26 = sub nsw i64 %30, %conv25
  store i64 %sub26, i64* %i, align 8
  %cmp27 = icmp slt i64 %sub26, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %probe
  %31 = load i64, i64* %hsize_reg, align 8
  %32 = load i64, i64* %i, align 8
  %add30 = add nsw i64 %32, %31
  store i64 %add30, i64* %i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %probe
  %33 = load i64, i64* %i, align 8
  %arrayidx32 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %33
  %34 = load i64, i64* %arrayidx32, align 8
  %35 = load i64, i64* %fcode, align 8
  %cmp33 = icmp eq i64 %34, %35
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  %36 = load i64, i64* %i, align 8
  %arrayidx36 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %36
  %37 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %37 to i64
  store i64 %conv37, i64* %ent, align 8
  br label %while.cond

if.end38:                                         ; preds = %if.end31
  %38 = load i64, i64* %i, align 8
  %arrayidx39 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %38
  %39 = load i64, i64* %arrayidx39, align 8
  %cmp40 = icmp sgt i64 %39, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.end38
  %40 = load i32, i32* %apsim_bound111, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %apsim_bound111, align 4
  %conv43 = sext i32 %inc42 to i64
  %41 = load i64, i64* @in_count, align 8
  %cmp44 = icmp slt i64 %conv43, %41
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true
  br label %probe

if.end47:                                         ; preds = %land.lhs.true, %if.end38
  br label %nomatch

nomatch:                                          ; preds = %if.end47, %if.then17
  %42 = load i64, i64* @out_count, align 8
  %inc48 = add nsw i64 %42, 1
  store i64 %inc48, i64* @out_count, align 8
  %43 = load i32, i32* %c, align 4
  %conv49 = sext i32 %43 to i64
  store i64 %conv49, i64* %ent, align 8
  %44 = load i64, i64* @free_ent, align 8
  %45 = load i64, i64* @maxmaxcode, align 8
  %cmp50 = icmp slt i64 %44, %45
  br i1 %cmp50, label %if.then52, label %if.else57

if.then52:                                        ; preds = %nomatch
  %46 = load i64, i64* @free_ent, align 8
  %inc53 = add nsw i64 %46, 1
  store i64 %inc53, i64* @free_ent, align 8
  %conv54 = trunc i64 %46 to i16
  %47 = load i64, i64* %i, align 8
  %arrayidx55 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %47
  store i16 %conv54, i16* %arrayidx55, align 2
  %48 = load i64, i64* %fcode, align 8
  %49 = load i64, i64* %i, align 8
  %arrayidx56 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %49
  store i64 %48, i64* %arrayidx56, align 8
  br label %if.end64

if.else57:                                        ; preds = %nomatch
  %50 = load i64, i64* @in_count, align 8
  %51 = load i64, i64* @checkpoint, align 8
  %cmp58 = icmp sge i64 %50, %51
  br i1 %cmp58, label %land.lhs.true60, label %if.end63

land.lhs.true60:                                  ; preds = %if.else57
  %52 = load i32, i32* @block_compress, align 4
  %tobool61 = icmp ne i32 %52, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true60
  call void @cl_block()
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true60, %if.else57
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then52
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load i64, i64* @bytes_out, align 8
  %54 = load i64, i64* @in_count, align 8
  %cmp65 = icmp sgt i64 %53, %54
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.end
  store i32 2, i32* @exit_stat, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %while.end
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @getbyte() #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.3
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.3
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0))
  %retval = alloca i32, align 4
  %3 = load i32, i32* @InCnt, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @apsim_InCnt, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @apsim_InCnt, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @InCnt, align 4
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, i32* @InCnt, align 4
  %6 = load i8*, i8** @InBuff, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** @InBuff, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind ssp uwtable
define void @cl_hash(i64 %hsize) #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.4
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0))
  %hsize.addr = alloca i64, align 8
  %htab_p = alloca i64*, align 8
  %i = alloca i64, align 8
  %m1 = alloca i64, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %3 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([257 x i64], [257 x i64]* @htab, i32 0, i32 0), i64 %3
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %4 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %4, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i64, i64* %m1, align 8
  %6 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %6, i64 -16
  store i64 %5, i64* %add.ptr1, align 8
  %7 = load i64, i64* %m1, align 8
  %8 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %8, i64 -15
  store i64 %7, i64* %add.ptr2, align 8
  %9 = load i64, i64* %m1, align 8
  %10 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %10, i64 -14
  store i64 %9, i64* %add.ptr3, align 8
  %11 = load i64, i64* %m1, align 8
  %12 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %12, i64 -13
  store i64 %11, i64* %add.ptr4, align 8
  %13 = load i64, i64* %m1, align 8
  %14 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %14, i64 -12
  store i64 %13, i64* %add.ptr5, align 8
  %15 = load i64, i64* %m1, align 8
  %16 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %16, i64 -11
  store i64 %15, i64* %add.ptr6, align 8
  %17 = load i64, i64* %m1, align 8
  %18 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %18, i64 -10
  store i64 %17, i64* %add.ptr7, align 8
  %19 = load i64, i64* %m1, align 8
  %20 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %20, i64 -9
  store i64 %19, i64* %add.ptr8, align 8
  %21 = load i64, i64* %m1, align 8
  %22 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %22, i64 -8
  store i64 %21, i64* %add.ptr9, align 8
  %23 = load i64, i64* %m1, align 8
  %24 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %24, i64 -7
  store i64 %23, i64* %add.ptr10, align 8
  %25 = load i64, i64* %m1, align 8
  %26 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %26, i64 -6
  store i64 %25, i64* %add.ptr11, align 8
  %27 = load i64, i64* %m1, align 8
  %28 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %28, i64 -5
  store i64 %27, i64* %add.ptr12, align 8
  %29 = load i64, i64* %m1, align 8
  %30 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %30, i64 -4
  store i64 %29, i64* %add.ptr13, align 8
  %31 = load i64, i64* %m1, align 8
  %32 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %32, i64 -3
  store i64 %31, i64* %add.ptr14, align 8
  %33 = load i64, i64* %m1, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %34, i64 -2
  store i64 %33, i64* %add.ptr15, align 8
  %35 = load i64, i64* %m1, align 8
  %36 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %36, i64 -1
  store i64 %35, i64* %add.ptr16, align 8
  %37 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %37, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %38 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %38, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i64, i64* %i, align 8
  %add = add nsw i64 %39, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %40 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %40, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i64, i64* %m1, align 8
  %42 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %42, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %41, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i64, i64* %i, align 8
  %dec = add nsw i64 %43, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @cl_block() #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.5
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.5
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0))
  %rat = alloca i64, align 8
  %3 = load i64, i64* @in_count, align 8
  %add = add nsw i64 %3, 10000
  store i64 %add, i64* @checkpoint, align 8
  %4 = load i64, i64* @in_count, align 8
  %cmp = icmp sgt i64 %4, 8388607
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %5 = load i64, i64* @bytes_out, align 8
  %shr = ashr i64 %5, 8
  store i64 %shr, i64* %rat, align 8
  %6 = load i64, i64* %rat, align 8
  %cmp1 = icmp eq i64 %6, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i64 2147483647, i64* %rat, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i64, i64* @in_count, align 8
  %8 = load i64, i64* %rat, align 8
  %div = sdiv i64 %7, %8
  store i64 %div, i64* %rat, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.else3:                                         ; preds = %entry
  %9 = load i64, i64* @in_count, align 8
  %shl = shl i64 %9, 8
  %10 = load i64, i64* @bytes_out, align 8
  %div4 = sdiv i64 %shl, %10
  store i64 %div4, i64* %rat, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  %11 = load i64, i64* %rat, align 8
  %12 = load i64, i64* @ratio, align 8
  %cmp6 = icmp sgt i64 %11, %12
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end5
  %13 = load i64, i64* %rat, align 8
  store i64 %13, i64* @ratio, align 8
  br label %if.end9

if.else8:                                         ; preds = %if.end5
  store i64 0, i64* @ratio, align 8
  %14 = load i64, i64* @hsize, align 8
  call void @cl_hash(i64 %14)
  store i64 257, i64* @free_ent, align 8
  store i32 1, i32* @clear_flg, align 4
  call void @output(i64 256)
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @output(i64 %code) #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.6
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.6
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0))
  %code.addr = alloca i64, align 8
  %r_off = alloca i32, align 4
  %bits = alloca i32, align 4
  %bp = alloca i8*, align 8
  store i64 %code, i64* %code.addr, align 8
  %3 = load i32, i32* @offset, align 4
  store i32 %3, i32* %r_off, align 4
  %4 = load i32, i32* @n_bits, align 4
  store i32 %4, i32* %bits, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i8** %bp, align 8
  %5 = load i64, i64* %code.addr, align 8
  %cmp = icmp sge i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else57

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %6, 3
  %7 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %8 = load i32, i32* %r_off, align 4
  %and = and i32 %8, 7
  store i32 %and, i32* %r_off, align 4
  %9 = load i8*, i8** %bp, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %11 = load i32, i32* %r_off, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %12 to i32
  %and2 = and i32 %conv, %conv1
  %conv3 = sext i32 %and2 to i64
  %13 = load i64, i64* %code.addr, align 8
  %14 = load i32, i32* %r_off, align 4
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 %13, %sh_prom
  %or = or i64 %conv3, %shl
  %15 = load i32, i32* %r_off, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %idxprom4
  %16 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %16 to i64
  %and7 = and i64 %or, %conv6
  %conv8 = trunc i64 %and7 to i8
  %17 = load i8*, i8** %bp, align 8
  store i8 %conv8, i8* %17, align 1
  %18 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %19 = load i32, i32* %r_off, align 4
  %sub = sub nsw i32 8, %19
  %20 = load i32, i32* %bits, align 4
  %sub9 = sub nsw i32 %20, %sub
  store i32 %sub9, i32* %bits, align 4
  %21 = load i32, i32* %r_off, align 4
  %sub10 = sub nsw i32 8, %21
  %22 = load i64, i64* %code.addr, align 8
  %sh_prom11 = zext i32 %sub10 to i64
  %shr12 = ashr i64 %22, %sh_prom11
  store i64 %shr12, i64* %code.addr, align 8
  %23 = load i32, i32* %bits, align 4
  %cmp13 = icmp sge i32 %23, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %24 = load i64, i64* %code.addr, align 8
  %conv16 = trunc i64 %24 to i8
  %25 = load i8*, i8** %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %bp, align 8
  store i8 %conv16, i8* %25, align 1
  %26 = load i64, i64* %code.addr, align 8
  %shr18 = ashr i64 %26, 8
  store i64 %shr18, i64* %code.addr, align 8
  %27 = load i32, i32* %bits, align 4
  %sub19 = sub nsw i32 %27, 8
  store i32 %sub19, i32* %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %28 = load i32, i32* %bits, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %29 = load i64, i64* %code.addr, align 8
  %conv21 = trunc i64 %29 to i8
  %30 = load i8*, i8** %bp, align 8
  store i8 %conv21, i8* %30, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %31 = load i32, i32* @n_bits, align 4
  %32 = load i32, i32* @offset, align 4
  %add = add nsw i32 %32, %31
  store i32 %add, i32* @offset, align 4
  %33 = load i32, i32* @offset, align 4
  %34 = load i32, i32* @n_bits, align 4
  %shl23 = shl i32 %34, 3
  %cmp24 = icmp eq i32 %33, %shl23
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i8** %bp, align 8
  %35 = load i32, i32* @n_bits, align 4
  store i32 %35, i32* %bits, align 4
  %36 = load i32, i32* %bits, align 4
  %conv27 = sext i32 %36 to i64
  %37 = load i64, i64* @bytes_out, align 8
  %add28 = add nsw i64 %37, %conv27
  store i64 %add28, i64* @bytes_out, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then26
  %38 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %39 = load i8, i8* %38, align 1
  call void @putbyte(i8 signext %39)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load i32, i32* %bits, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %bits, align 4
  %tobool30 = icmp ne i32 %dec, 0
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %41 = load i8*, i8** %bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([16 x i8]* @buf to i64)
  %cmp31 = icmp slt i64 %sub.ptr.sub, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %42 = phi i1 [ false, %do.cond ], [ %cmp31, %land.rhs ]
  br i1 %42, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  store i32 0, i32* @offset, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end22
  %43 = load i64, i64* @free_ent, align 8
  %44 = load i64, i64* @maxcode, align 8
  %cmp34 = icmp sgt i64 %43, %44
  br i1 %cmp34, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %45 = load i32, i32* @clear_flg, align 4
  %cmp36 = icmp sgt i32 %45, 0
  br i1 %cmp36, label %if.then38, label %if.end56

if.then38:                                        ; preds = %lor.lhs.false, %if.end33
  %46 = load i32, i32* @offset, align 4
  %cmp39 = icmp sgt i32 %46, 0
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.then38
  %47 = load i32, i32* @n_bits, align 4
  call void @writebytes(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i32 %47)
  %48 = load i32, i32* @n_bits, align 4
  %conv42 = sext i32 %48 to i64
  %49 = load i64, i64* @bytes_out, align 8
  %add43 = add nsw i64 %49, %conv42
  store i64 %add43, i64* @bytes_out, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then38
  store i32 0, i32* @offset, align 4
  %50 = load i32, i32* @clear_flg, align 4
  %tobool45 = icmp ne i32 %50, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end44
  %51 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* @n_bits, align 4
  %52 = load i32, i32* @n_bits, align 4
  %53 = load i32, i32* @maxbits, align 4
  %cmp47 = icmp eq i32 %52, %53
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else
  %54 = load i64, i64* @maxmaxcode, align 8
  store i64 %54, i64* @maxcode, align 8
  br label %if.end54

if.else50:                                        ; preds = %if.else
  %55 = load i32, i32* @n_bits, align 4
  %shl51 = shl i32 1, %55
  %sub52 = sub nsw i32 %shl51, 1
  %conv53 = sext i32 %sub52 to i64
  store i64 %conv53, i64* @maxcode, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then49
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then46
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %lor.lhs.false
  br label %if.end67

if.else57:                                        ; preds = %entry
  %56 = load i32, i32* @offset, align 4
  %cmp58 = icmp sgt i32 %56, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.else57
  %57 = load i32, i32* @offset, align 4
  %add61 = add nsw i32 %57, 7
  %div = sdiv i32 %add61, 8
  call void @writebytes(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i32 %div)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.else57
  %58 = load i32, i32* @offset, align 4
  %add63 = add nsw i32 %58, 7
  %div64 = sdiv i32 %add63, 8
  %conv65 = sext i32 %div64 to i64
  %59 = load i64, i64* @bytes_out, align 8
  %add66 = add nsw i64 %59, %conv65
  store i64 %add66, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end62, %if.end56
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @putbyte(i8 signext %c) #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.7
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.7
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0))
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %3 = load i8, i8* %c.addr, align 1
  %4 = load i8*, i8** @OutBuff, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** @OutBuff, align 8
  store i8 %3, i8* %4, align 1
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @writebytes(i8* %buf, i32 %n) #0 {
entry:
  %0 = load i32, i32* @FunctionCounter.8
  %1 = add i32 1, %0
  store i32 %1, i32* @FunctionCounter.8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @23, i32 0, i32 0))
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i8*, i8** @OutBuff, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** @OutBuff, align 8
  store i8 %9, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

declare i32 @printf(i8*, ...)

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 5.0.0 (trunk 292143)"}
