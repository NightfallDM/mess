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
main: add_one.c
	gcc -g -c add_one.c -o add_one.o
	ar -crs libadd_one.a add_one.o
	rustc -g main.rs -L. -lstatic=add_one

#	-----------------------------------------
#	2. Now we mix "asm" and "Rust"("rust" call "asm" code), and it just like the above what we have talk about
#	  --:(1) The only different between 2 and 1 just we use the "as" to assembly the "asm" code.
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
