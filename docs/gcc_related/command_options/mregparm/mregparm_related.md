---
description: To illustra the "-mregparm=num" command option provided by GCC with code.
---

# Gcc Command Options

## Official doc

In[ gcc documentation](https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html#x86-Options):

> `-mregparm=num`
>
> Control how many registers are used to pass integer arguments. By default, no registers are used to pass arguments, and at most 3 registers can be used. You can control this behavior for a specific function by using the function attribute `regparm`. See [Function Attributes](https://gcc.gnu.org/onlinedocs/gcc/Function-Attributes.html#Function-Attributes).
>
> **Warning:** if you use this switch, and num is nonzero, then you must build all modules with the same value, including any libraries. This includes the system libraries and startup modules.

## Problems

  But i think i just can't get the detail usage about this command like some point listed below:

1. Which three registers it use.
2. Order, i.e the match relative between paramenters and regs.
3. what's the warning about, how to deal with this case
4. What's the different between "-mregparm=num" command option and "regparm" Function Attribute.
5. Because the gcc doc just contain the "x86" machine depend option,it means the "x86" also contain the certain "x86\_64" options,So, is this      "mregparm" and "regparm" just active in the "x86"\(32 bit\).

  Because there point i do not get detail in the doc,So i would write some code and test it.

Let's dive in.

## Test

### Which Three Regs

By reading the [regparm](https://gcc.gnu.org/onlinedocs/gcc/x86-Function-Attributes.html#x86-Function-Attributes) Function Attribute:

> `regparm (number)`
>
> On x86-32 targets, the `regparm` attribute causes the compiler to pass arguments number one to number if they are of integral type in registers EAX, EDX, and ECX instead of on the stack. Functions that take a variable number of arguments continue to be passed all of their arguments on the stack.
>
> Beware that on some ELF systems this attribute is unsuitable for global functions in shared libraries with lazy binding \(which is the default\). Lazy binding sends the first call via resolving code in the loader, which might assume EAX, EDX and ECX can be clobbered, as per the standard calling conventions. Solaris 8 is affected by this. Systems with the GNU C Library version 2.1 or higher and FreeBSD are believed to be safe since the loaders there save EAX, EDX and ECX. \(Lazy binding can be disabled with the linker or the loader if desired, to avoid the problem.\)

It seems that use the EAX, EDX, ECX regs to pass at mostly 3  _**Integral type**_ args.And it also told us that just active in the "x86-32" target platform. I will verify these things in the next section.

### Order

  To test the Order that how does the func use the regs to pass args,below code can tell us the order:

  In file [test\_order.c](https://github.com/NightfallDM/mess/blob/main/about/gcc_related/Command_Options/test_order.c) and [test\_order.s](https://github.com/NightfallDM/mess/blob/main/about/gcc_related/Command_Options/test_order.s)

```text
#include<stdio.h>

int test_order_first(int a, int b, int c){
	return a - b - c;
}

int test_order_rest(int a, int b, int c){
	return a + b - c;
}

int main(void){
	printf("The result1 is : %d\n", test_order_first(5, 4, 3));
	printf("The result is : %d\n", test_order_rest(5, 4, 3));
}
```

We can't direct get the order by the c source file,But we can get the info after use gcc compile this file and omit it at the assembly file.

First we use this command:

```text
gcc -mregparm=3 -S test_order.c
```

When you in the "x86\_64" machine just like me, you would get a warning:

> cc1: warning: ‘-mregparm’ is ignored in 64-bit mode

So now you can confirm this option just active in the "x86"\(32 bit\)platform.

To let it work as what we want, we should add "-m32" to let gcc emulation 32bit machine,The whole command look like this:

```text
gcc -m32 -mregparm=3 -S test_order.c
```



Now we get the assembly file [test\_order.s](https://github.com/NightfallDM/mess/blob/main/about/gcc_related/Command_Options/test_order.s)

Look carefully in these two part in test\_order.s

in test\_order\_first func:

```text
  movl	%eax, -4(%ebp)
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-4(%ebp), %eax
	subl	-8(%ebp), %eax
	subl	-12(%ebp), %eax
```

In this part we can see it use the num in EAX to sub num in EDX and ECX.So compare the c func test\_order\_first we can know that EAX contain the first arg.

in test\_order\_rest func:

```text
  movl	%eax, -4(%ebp)
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	subl	-12(%ebp), %eax
```

in this part we can see it use the num in EAX add the num in EDX and then sub the num in ECX.So compare the c func test\_order\_rest and the first part\(EAX contain the first args\),we can know the EDX contain the second arg.And ECX contain the third arg.

