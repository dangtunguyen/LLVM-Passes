# LLVM Passes
This is project of the class "CS201 Compiler Construction" at UCR.

# How to use the code?

Here are the steps to compile:

1. Copy the source code under "CS201Group1/Source Code/"
and paste it under ".../llvm/projects/"

2. Open a terminal

3. `$ cd build`

4. `$ cmake -G \Unix Makeles" ../llvm`

5. `$ make`

Here are the steps to run the passes:

1. `$ clang -emit-llvm -O0 <input.c> -c -o <input.bc>`

2. `$ opt -load myCS201lib.dylib -myCS201 <input.bc> <result.bc>`

3. `$ llc result.bc`

4. `$ gcc result.s -o result`

5. `$ ./result`
