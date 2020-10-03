# TODO: Add the doc to explain the "arg" and how to use this "Makefile"
# The files in this dir contain the topic "Mix 'C', 'ASM', 'RUST'".
#
# Note: Although the Rust official provide the way to mix 'C' and 'RUST',
# 	But there also have some trap in the official doc,
# 	Also they do not provide how to mix 'ASM' and 'RUST' directly.
# 	So i write this article to explain how to do it :-)
# 	(I will put the usefull URL that you can get what you want to know,
# 	Before go to see the content below the "URL", it's better to see the
# 	"URL" to do some prepare)
#	Good luck!

# Rust official doc:
# 	"https://rust-embedded.github.io/book/interoperability/c-with-rust.html"
# 	"https://rust-embedded.github.io/book/interoperability/rust-with-c.html"
# 	"https://doc.rust-lang.org/nomicon/ffi.html"
#
# 	-------------------------------------------
# 	1. So, we first mix "C" and "Rust" follow the first "URL" give above.("rust" call "C" func)
# 	  --:(1) I just use the "rustc" to deal the "rust" code, but it's not too difficult for you to convert it 
# 	  	 to "cargo".
# 	     (2) In file "main.rs", just put the "C" func in an "extern{}" is OK.
# 	         But you should translate the "C" func e.g. [int add_one(int x);] to "Rust" e.g.[fn add_one(x: i32)->i32;]
# 	     (3) You can use the fn just Put the it in an "unsafe" block in main.
#
# 	     (4) In "add_one.c" to see the detail define about the "add_one" func.
#
# 	     (5) In this file(Makefile):
# 	     	-- "-g": gen debug msg  ,"-c" compile the c file to gen object file and stop compile.(gcc)
# 	     	-- "-crs": use "ar" to gen archive file that we will use it to link to the rust file.(ar)
# 	     	-- "-g": gen debug msg  ,"-L" include the lib file search path(. mean the current dir),
# 	     	   "-l": link the lib file that refer(staric mean use the static link),So just the "add_one" lib file.
#
# 	     	   Note.1: In linux the static lib file name must follow "lib[lib_name].a",So the name we gen lib is
# 	     	   	 "libadd_one.a",then when you link it to the rust, you just need to refer to "add_one".
#
# 	     	   more msg about to see :
# 	     	   "https://blog.csdn.net/u011247251/article/details/9223557"
# 	     	   "https://doc.rust-lang.org/rustc/command-line-arguments.html"
#
# 	     	   Note.2: In "main.rs" we put the "C" after the extern, this is a "calling convention",
# 	     	   	   It's ok if you do remove the "C" just use "extern{}" because in "x86_64 linux"just have
# 	     	   	   the only one calling convention,but if you use "x86" or "windows", you may have to refer
# 	     	   	   the "C" calling convention
#		   more msg about to see :
#		   "https://zh.wikipedia.org/wiki/X86%E8%B0%83%E7%94%A8%E7%BA%A6%E5%AE%9A"
#		   or search "c calling convention" use google chrome.
#
#	Usage:
#		make main
#		./main
#		make clean
#
main: add_one.c
	gcc -g -c add_one.c -o add_one.o
	ar -crs libadd_one.a add_one.o
	rustc -g main.rs -L. -lstatic=add_one

#	-----------------------------------------
#	2. Now we mix "asm" and "Rust"("rust" call "asm" code), and it just like the above what we have talk about
#	  --:(1) The only different between 2 and 1 just we use the "as" to assembly the "asm" code.
#	     (2) In "add_one_asm.S" we define the "add_one" as a global symbol so that we can call it in rust(main.rs)
#	         You should notice that because the "calling convention"("x86 calling convention" wiki page)in x86_64
#	         use rdi, rsi, rdx... to transfer the arguement, and use the "stack" to store the "func ret address",
#	         And use the "rax" to hold the "ret value".
#	         So, "movq %rdi, %rax" mean to get the first arguement that pass by the func and mov it to "rax",
#	         Then add 1 in "rax", So now the "rax" contain the value we want to return.
#	         So, we just do "ret" to finish the func.
#
#	     (3) In this file(Makefile):
#		-- "-g": gen debug msg.(as)
#
#	Usage:
#		make asm
#		./main_use_asm
#		make asm_clean
#
asm:
	as -g add_one_asm.S -o add.o
	ar -crs libadd.a add.o
	rustc -g -L. -lstatic=add main.rs -o main_use_asm

asm_clean:
	rm -f add.o libadd.a main_use_asm

clean:
	rm -f add_one.o add_one.a main

main2: add_two.c
	gcc -g -c add_two.c -o add_two.o
	ar -crs libadd_two.a add_two.o
	rustc -g main_2.rs -L. -lstatic=add_two -o main_2
clean2:
	rm -f add_two.o add_two.a main_2

#	--------------------------------------------
#	3. Now we mix "Rust" and "asm"("asm" call "rust" fn)
#	  --:(1) In file "add_three.rs",First you should put the "#[no_mangle]" in the func to make sure that the 
#	  	 compile do not rename the "add_three" func,otherwise will raise aerror about "undefine reference to 'add_three'".
#		 You also need to put the pub "pub extern" in the func, the "C" is a calling convention,remove it is OK,But i think it's better to detemine the calling convention explicit.
#		 The "pub" mean you can access the symbol "add_three", the same as the ".global" in "asm".
#		 The "extern" mean that you is a func that provide to use it in other place
#		 (I guess may be in this place,The "extern" work with the "C" to define detemine the calling convention, so may be you can remove the 'extern "c"', you can try it by yourself).
#
#	     (2) In file "asm_call_rust.S",you can see the separate steps in the file,i will talk in this place simply
#	     	 Because we use three arguements,So we push the "rdi", "rsi", "rdx"(calling convention), we also push
#	     	 the "rax" because it will caontain the "ret value" that after calling the rust func.
#	     	 Then we setup the three arguements(4, 6, 10),after it you can call the "add_three" func.
#	     	 After the rust func ret, you can get the ret value in "rax"
#	     	 Then we will let the state become the same as that before we call the func by pop
#	     	 When finish these steps, we will call the "exit" systemcall that provide by linux.
#
#	     (3) In this file(Makefile):
#	     	-- "--crate-type": mean let the compile to gen what type output(staticlib just mean static lib file),
#	     	   "--crate-name": mean to detemine the name of the lib file.(we detemine the "add_three", So in linux it will gen the "libadd_three.a".)(rustc)
#
#		-- !!!Notice that:
#			|_ If you use the ld to link the object file gen by the "ASM"(call_rust.o) code with the lib file gen by the "rust"(libadd_three.a), you will get the Error about the undefine reference "memcpy" ... etc.
#			   It mean that the the rust lib file calling the c library implicitly,So you may add the "C"
#			   library file which contain these miss define e.g "memcpy",And you will get other Error when you have link this library, some other undefine Error you will get.
#			   You can open the two comment lines and comment the line that contain the "gcc" to see this Error.
#			   Get more info about the Error in:
#			   "https://os.phil-opp.com/minimal-rust-kernel/" to see the "Memory-Related Intrinsics" section.
#			|_ Now we use "gcc" to assemble the "ASM" code and link the "rust" lib for use,Because the gcc will search and link the "C" library file automatic.So you will do not see the undefine reference Error about "memcpy",But you also will get other Error.
#			Because the "gcc" would not link to some lib automatic, you should do it manually,just like the "pthread" and "dl".
#			About why use "-pthread" but not the "-lpthread" to see below "URL":
#			"https://stackoverflow.com/questions/2127797/significance-of-pthread-flag-when-compiling"
#			"https://stackoverflow.com/questions/22180354/why-am-i-getting-undefined-reference-to-pthread-mutexattr-settype"
#
#			"-Wl" mean transfer the arguement to the "linker" i.e "ld",So "-Wl,-e" mean "ld -e"
#
#			"ld -e" mean detemine the entry point in the program to instead the "main",Because we just 
#			define the "_start" in the "ASM" code,and we do not define the "main", the "gcc" will automatic make "main" as the entry point,So we just modify it.
#
#			"-nostartfiles": because the "gcc" will start the program in "_start" section whick define in  itself library,So we just modify it to tell the "gcc" do not use itself start code,otherwise it will report the 
#			Multidefine "_start".
#			Get more message in:
#			"https://stackoverflow.com/questions/7494244/how-to-change-entry-point-of-c-program-with-gcc"
#	
#	[Notice]: Because there do not have the output in "main3", So you have to debug the "main3" to see the "ret value" in "rax" is carrect by your self. :-)
#	Usage:
#		make main3
#		./main3
#		make clean3
#
#	  
main3: add_three.rs
	rustc -g --crate-type=staticlib --crate-name=add_three add_three.rs
	#as -g asm_call_rust.S -o call_rust.o
	#ld call_rust.o -L. -ladd_three -o main_3
	gcc -g asm_call_rust.S -L. -ladd_three -pthread -ldl -Wl,-e_start -nostartfiles -o main3

clean3:
	rm -f call_rust.o libadd_three.a main_3

test:
	gcc -g asm_call_rust.S -L. -ladd_three -pthread -ldl -o test

clean_test:
	rm -f test
