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
main: add_one.c
	gcc -g -c add_one.c -o add_one.o
	ar -crs libadd_one.a add_one.o
	rustc -g main.rs -L. -lstatic=add_one

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
