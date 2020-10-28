### Gcc Command Options

#### Notice:	
1. This file is to illustrate the option [-mregparm](https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html#x86-Options)

2. You can find related code in ["about/gcc_related/mregparm/"](TODO)

3. Though this is in the "x86-Options" field, but I can't find the "x86_64-Options", So the options in "x86-Options" may contain the "x86_64".But by reading the doc, "-mregparm" just have influence in "x86-32" target.

#### Illustrate
In the official gcc doc:
	```doc
	-mregparm=num
	Control how many registers are used to pass integer arguments. By default, no registers are used to pass arguments, and at most 3 registers can be used. You can control this behavior for a specific function by using the function attribute regparm. See Function Attributes.

	Warning: if you use this switch, and num is nonzero, then you must build all modules with the same value, including any libraries. This includes the system libraries and startup modules.

	```

There is the [Function Attributes](https://gcc.gnu.org/onlinedocs/gcc/x86-Function-Attributes.html#x86-Function)

> * So first we go to check the "-mregparm" detail behavior.
> > 1. in[mregparm_1_1.c](TODO):
	```c
	int test_mregparm(int a, int b, int c){
	return a + b + c;
}
	```
	
	if we use the gcc in 64bit machine,the gcc will puts a warning:
	```c
	cc1: warning: ‘-mregparm’ is ignored in 64-bit mode
	```

	So,it tell us this option do not active in "x86_64", We puts the option
"-m32" to gcc that let gcc emulation "x86" to let the "-mregparm" active.
	We also just let gcc compile this c source file,and omit at assembly stage.It means add the "-S" to gcc
	The whole command should be this
	```shell
	gcc -S -mregparm=3 mregparm_1_1.c
	```

	Then we will get the ["mregparm_1_1.s"](TODO) assembly file.
	
	
