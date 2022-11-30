*TITLE*: Free C / C++ Compilers and Interpreters

*MARK*: Eotect

*DATE*: 2022-11-26

*SOURCE*: https://www.thefreecountry.com/compilers/cpp.shtml

--------------------------------------------------------

[Free C / C++ Compilers and Interpreters (thefreecountry.com)](https://www.thefreecountry.com/compilers/cpp.shtml)

> # Free C/C++ Compilers
> 
> ## Compilers, cross-compilers, interpreters for ANSI C and ANSI C++
> 
>   
> 
> You are here: [thefreecountry.com (main page)](https://www.thefreecountry.com/) > [Free Compilers/Interpreters for Programming Languages](https://www.thefreecountry.com/compilers/index.shtml) > [Free C/C++ Compilers and Interpreters](https://www.thefreecountry.com/compilers/cpp.shtml)
> 
> # Free C/C++ Compilers and Interpreters
> 
> C is a general purpose procedural programming language that is fairly easy to learn (in that it doesn't have many built-in features to memorize) but is nonetheless sufficiently expressive that it can be used to build any sort of computer program, including whole operating systems like [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml). C++ is a general purpose object-oriented programming language that was originally created as a superset of C (although nowadays the two languages have developed in different directions so that this is no longer strictly true). These two programming languages, C and C++, are probably among the most popular languages used to write programs.
> 
> This page lists numerous free C and C++ compilers, cross-compilers and interpreters for a wide variety of operating systems on PCs, Macs and other computers.
> 
> If you are looking for C/C++ compilers and cross-compilers for microcontrollers, PDA, calculators (like the HP calculators) and other such devices, you should also check the [Free C/C++ Compilers and Cross-Compilers for Microcontrollers, Embedded Systems, PDA, Calculators and Other Devices](https://www.thefreecountry.com/compilers/cpp-microcontrollers-pda.shtml) page. Most of the compilers that can be safely classified under that category has been moved to that page.
> 
> ## Related Pages
> 
> -   [How to Create / Make a Website: The Beginner's A-Z Guide](https://www.thesitewizard.com/gettingstarted/startwebsite.shtml) - start one for your software
> -   [Free C/C++ Source Code and Libraries](https://www.thefreecountry.com/sourcecode/cpp.shtml) - don't reinvent the wheel
> -   [Free Games Development Libraries and Source Code](https://www.thefreecountry.com/sourcecode/games.shtml)
> -   [Free Portable GUI Libraries](https://www.thefreecountry.com/sourcecode/gui.shtml)
> -   [Free Programming Editors and Integrated Development Environment (IDEs)](https://www.thefreecountry.com/programming/editors.shtml)
> -   [Free C# (C sharp) Compilers and Interpreters](https://www.thefreecountry.com/compilers/csharp.shtml)
> -   [Free D Compilers and Interpreters](https://www.thefreecountry.com/compilers/d.shtml)
> -   [Other Free Compilers](https://www.thefreecountry.com/compilers/index.shtml)
> 
> ## Free C, C++ Compilers and Interpreters for Computers
> 
> [Z88DK (Cross compiler)](https://z88dk.org/site/) ![New](https://www.thefreecountry.com/img/new.gif)
> 
> Z88DK is a development system that lets you cross-compile for 8080, 8085, gbz80, Z80, Z180, Z80n and Rabbit processors. It comprises 2 C cross compilers, an assembler, linker, librarian, data compression tools and a utility to convert the binaries output by the system into forms usable on the target machine (such as Intel hex files, ROMs, etc). One of the C compilers is derived from Small C, but has been updated so that it is nearly C89 compliant. The other C compiler is a customized version of SDCC, and "has very good standards compliance with C89, some C99 and a little C11" (to quote from their documentation). The compiler comes with two C libraries, the classic version and a newer version. Both can cross-compile for a wide range of platforms, too long to list here. (See their online documentation for details.) Note that this is a modern development system, still being maintained, and not an old compiler as you may expect. Source code is available, and is released under the Clarified Artistic License. Precompiled binaries for Windows and macOS are provided. If you use some other host system, you will have to compile the system from the sources.
> 
> [Microsoft Visual Studio Community](https://visualstudio.microsoft.com/downloads/)
> 
> For an individual or hobbyist programmer, Microsoft Visual Studio Community appears to include most of the important tools of its commercial cousins. Assuming the [list comparing the various versions](https://www.visualstudio.com/vs/compare/) is complete, you get the IDE, debugger, optimizing compiler of the full version, the editor, debugging and profiling facilities. With this suite, you can develop programs for the desktop and mobile versions of Windows as well as Android. The C++ compiler appears to support most of ISO C++11 and some of C++14 and C++17. The C compiler supports some of ISO C11 and C17 (only the required features, and therefore it does not support C99), although, depending on the date you read this entry, it may require you to [install Microsoft's Insider Preview Windows SDK](https://devblogs.microsoft.com/cppblog/c11-and-c17-standard-support-arriving-in-msvc/#c11-and-c17-getting-started) for it to be available. The software also comes with support for building programs with C#, Visual Basic, F# and Python. At the time I wrote this, the site states that Visual Studio Community is free for individual developers, open source projects, academic research, classroom learning and non-enterprise organizations with 5 or fewer users. **Warning**: the program requires that you sign in with a Microsoft account (which is free) to continue to use it beyond the evaluation period of 30 days. Alternatively, if you only need the command line tools, scroll down the page linked to above to download the "Build Tools for Visual Studio 2019". I'm told that the latter does not need any registration.
> 
> [MinGW-w64](https://www.mingw-w64.org/)
> 
> The MinGW-w64 project provides the libraries, headers and runtime needed for the GNU C and C++ compilers to run on a Windows system. (It supersedes the original MinGW, also listed on this page.) They allow you to create both 32 bit and 64 bit programs with the GNU compilers. The project also provides cross compilers, so that you can compile (say) a Windows program from a Linux system if you choose. Precompiled binaries can be obtained from a variety of sources, including [the official MinGW-w64 binaries site](https://github.com/niXman/mingw-builds-binaries/releases), and third-party sites such as [the MSYS2 project](https://www.msys2.org/) and [Nuwen](https://nuwen.net/mingw.html).
> 
> [Clang: C Language Frontend for LLVM](https://clang.llvm.org/)
> 
> Clang is a C, C++, Objective C and Objective C++ compiler, developed primarily by Apple. It is part of the LLVM project. (Before you ask, LLVM doesn't stand for anything in particular, although historically, it was short for "Low Level Virtual Machine". I guess they want to live down that name since it's not a virtual machine in the sense people use today.) It implements the various ISO C and C++ language standards, such as C11, ISO C++11, C++14, and parts of C++1z. It also supports various extensions found in the GNU C compiler family. The compiler is released under the BSD licence. I think the Windows binaries on their site requires you to have Visual Studio (for the C/C++ runtime libraries and possibly other supporting tools). If this is not acceptable, precompiled binaries using MinGW-w64 libraries and tools are available from third parties like the [MSYS2 project](https://www.msys2.org/) and [llvm-mingw](https://github.com/mstorsjo/llvm-mingw/releases).
> 
> [AMD x86 Open64 Compiler Suite](https://developer.amd.com/x86-open64-compiler-suite/)
> 
> This is a version of the Open64 compiler suite that has been tuned for AMD processors and has additional bug fixes. (The original Open64 suite is no longer being developed.) The C/C++ compiler conforms to the ANSI C99 and ISO C++ 98 standards, supports inter-language calling (since it has a Fortran compiler available as well), x86 32 bit and 64 bit code generation, vector and scalar SSE/SSE2/SSE3 code generation, OpenMP 2.5 for shared memory models, MPICH2 for distributed and shared memory models, IEEE 754 floating point support, an optimizer that supports a huge variety of optimizations (global, loop-nest, inter-procedural analysis, feedback-directed, etc), etc. It comes with an optimized AMD Core Math Library and documentation. This compiler suite requires [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml).
> 
> [NVIDIA HPC SDK](https://developer.nvidia.com/hpc-sdk)
> 
> The NVIDIA HPC (where "HPC" probably stands for High Performance Computing) SDK provides C, C++ and Fortran compilers, libraries, performance profiling, debugging and virtualization (containerization) tools, etc, for Linux (Intel x86\_64, OpenPOWER, and ARM Server) and, in the future, Windows x64 systems. It includes CUDA, OpenACC and GPU-accelerated mathematics libraries, and supports the full C++17 specifications, with the ability to offload parallel algorithms to NVIDIA GPUs without needing to use pragmas or language extensions.
> 
> [The Amsterdam Compiler Kit](http://tack.sourceforge.net/)
> 
> The Amsterdam Compiler Kit ("ACK"), for Unix-type systems including Linux, is a cross-platform compiler for ANSI C, K&R C, Pascal, Modula-2, and BASIC (although the BASIC support is primitive, according to their site). It can generate code for a wide variety of processors, although it has been tested only for 8086 (i86), 80386 (i386), 68000, 8080, and VideoCore IV. A fork of this compiler served as the default toolchain for Minix 1 and 2 (Minix 3 uses Clang). Note though, at the time I write this (in 2020), that the developer states (on the site) that he "cannot honestly recommend using the ACK for production code unless as a stop-gap measure or unless the other benefits of the ACK (e.g. having a very lightweight turnkey toolchain is valuable to you) outweigh the code quality". This software is released under the BSD licence.
> 
> [Open Watcom V2 Fork](https://github.com/open-watcom/open-watcom-v2)
> 
> This is a fork (ie, spin-off) of the seemingly-stalled Open Watcom project (see elsewhere on this page). It can run on and produce executables for Windows (16-bit, 32-bit and 64-bit), Linux (32-bit and 64-bit), OS/2 and MS-DOS (16-bit and 32-bit protected mode). For those not familiar with Watcom, it used to be a well-known commercially-sold compiler until the original developers discontinued it and released its source code (under the Sybase Open Watcom Public License). At the time I write this, it is still in development, although a pre-release snapshots are available for download on their [releases page](https://github.com/open-watcom/open-watcom-v2/releases).
> 
> [Open Source Watcom / Open Watcom C/C++ Compiler](http://www.openwatcom.org/)
> 
> \[**Update (22 September 2022)**: this website has not been accessible for some weeks now. I'm not sure if it is now defunct, or whether it is just a temporary (albeit prolonged) outage.\] The Watcom C/C++ compiler (now Open Watcom C/C++ compiler) is now open source and free. This compiler, which generates code for Win32, Windows 3.1 (Win16), OS/2, Netware NLM, MSDOS (16 bit and 32 bit protected mode), etc, was a highly coveted compiler some years back (until Sybase terminated it). The compiler also includes the rather well-known STLport (a [C++ Standard Template Library implementation](https://www.thefreecountry.com/sourcecode/cpp.shtml)). Note that a fork of this project (see elsewhere on this page) is also available, since the original appears to have stalled (with the last stable version released in 2010).
> 
> [Digital Mars C/C++ Compiler (Symantec C++ Replacement)](https://digitalmars.com/download/freecompiler.html)
> 
> Digital Mars C/C++ is a drop-in replacement for the Symantec C++ compiler, with support for compiling programs for Win32, Windows 3.1, MSDOS, and 32-bit extended MSDOS. If the target machine does not have a floating point processor (pre-Pentium machines), you can link the floating point emulation into your program. The compiler supports the C++ definition found in The Annotated C++ Reference Manual (ARM) and the enhanced language features of AT&T version 3.0, including templates, nested classes, nested types, exception handling, and runtime type identification.
> 
> [UPS Debugger (C Interpreter)](http://ups.sourceforge.net/main.html)
> 
> This is actually a graphical source level debugger for X Window, but it contains a built in C interpreter which can handle single or multiple source files. You can use it to build a byte-code executable and execute the interpreter on that executable. If you need an interpreter to debug or prototype programs, or to just learn the language, check this out. It supports the following platforms: Solaris, SunOS, [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml), [FreeBSD](https://www.thefreecountry.com/operating-systems/bsd-based.shtml), BSD/OS, and possibly other Unices.
> 
> [The BDS C Compiler](https://www.bdsoft.com/resources/bdsc.html)
> 
> Remember the old (famous) BDS C compiler for 8080/Z80 CP/M systems? It is now in the public domain, complete with assembly language source code. The package is the retail version of the compiler, with a linker and user manual. Before you scoff at this, remember that it can be used to generate 8080/8085/Z80 code for embedded systems with a little bit of work (ie, write your own routines to replace any runtime library code that access the operating system functions).
> 
> [Apple Xcode for Mac OS X](https://developer.apple.com/xcode/)
> 
> Xcode is Apple's integrated development environment which includes a syntax-highlighting editor, a build control system, a debugger, the GNU C compiler (gcc), an interface builder, AppleScript Studio, Java development support, WebObjects development tools, etc. You need to be an Apple Developer Connection (ADC) member to get the tools, but it appears that online membership is free.
> 
> [Pelles C Compiler](http://www.smorgasbordet.com/pellesc/)
> 
> This is a Windows-hosted C compiler that was originally based on LCC (listed elsewhere on this page) and since updated with support for C99, C11, C17, instrinsic functions, Microsoft C extensions, global optimizer, etc. It contains a C compiler, linker, resource compiler, message compiler, a make utility, etc. It compiles code for Windows.
> 
> [Tiny C Fork](https://repo.or.cz/w/tinycc.git)
> 
> This is a fork of the Tiny C compiler (which is listed elsewhere on this page) that is distributed in source form. Like the original Tiny C compiler, it implements many features of the ISO C99 standard. It works on Linux and Windows and is distributed under the GNU General Public License.
> 
> [Smaller C](https://github.com/alexfru/SmallerC)
> 
> The Smaller C compiler is a single-pass compiler that generates 16 or 32 bit Intel x86 (80386 and later) assembly language code for NASM, YASM or FASM (which are [free aseemblers](https://www.thefreecountry.com/compilers/assemblers.shtml)), that can then be assembled and linked on Windows, Mac OS X, Linux and DOS. It can also generate code for the MIPS and TR3200 CPUs. The language supports most of ANSI C89 standard and some of the ANSI C99 features. It is capable of compiling itself. At the time this entry was written, though, the standard C library is still a work-in-progress.
> 
> [Orange C Compiler](http://www.members.tripod.com/~ladsoft/orange_c_compiler.html)
> 
> Orange C Compiler is an optimising ("optimizing" if you use [other variants of English](https://www.thesitewizard.com/general/beware-of-english-variants.shtml)) C compiler that supports the latest C standards like C99 and C11. It runs on Windows as well as DOS, has an integrated development environment with a [programming editor](https://www.thefreecountry.com/programming/editors.shtml) (featuring syntax highlighting and code completion), [make utility](https://www.thefreecountry.com/programming/make.shtml), [debugger](https://www.thefreecountry.com/programming/debuggers.shtml) and a [Win32 resource editor](https://www.thefreecountry.com/programming/resourceeditors.shtml). It can generate programs for Win32 and MSDOS, as well as Intel and Motorola hex files (which is useful if you write programs for embedded systems). For MSDOS output, your programs will use a [DOS extender](https://www.thefreecountry.com/programming/dosextenders.shtml). The author of this program also produces the CC386 compiler, which is also listed on [this page](https://www.thefreecountry.com/compilers/cpp.shtml). The compiler can be obtained from its [Github repository's releases page](https://github.com/LADSoft/OrangeC/releases).
> 
> [PCC - Portable C Compiler](http://pcc.ludd.ltu.se/)
> 
> PCC is based on the original Portable C Compiler by S C Johnson. The goal of the project is to write a small, fast C compiler that can compile C99 source code. The compiler is a two-pass compiler that runs on OpenBSD and NetBSD.
> 
> [DeSmet C](http://www.desmet-c.com/)
> 
> DeSmet C will be familiar to those who programmed in C in the 1980s. It is an MSDOS C compiler. It has been released under the GNU GPL, and comes with manuals, an editor, and a third party optimizer.
> 
> [Tiny C Compiler - Smallest Linux C Compiler](https://bellard.org/tcc/)
> 
> \[**Update**: the author says on the website that he is no longer working on the compiler. See elsewhere on this page for a fork of this project, which is still ongoing at the time this is written.\] This small [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml) and [Windows](https://www.thefreecountry.com/operating-systems/windows-clones.shtml) C compiler generates optimized x86 native binaries. It purportedly compiles, assembles and links several times faster than GCC. The compiler is currently moving towards ISO C99 compliance. It also includes an optional bounds checker. It also handles C script files (just add the shebang line "`#!/usr/local/bin/tcc -run`" to the first line of your C source code file on Linux to have it executed directly). TCC is distributed under the GNU General Public License.
> 
> [Portable Object Compiler](https://sourceforge.net/projects/objc/)
> 
> This is a set of Objective C class libraries and a compiler that translates your Objective C code to plain C code. It works on Windows, [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml), OS/2, Macintosh, etc.
> 
> [Mingw32 C & C++ Compilers](https://osdn.net/projects/mingw/)
> 
> \[**Update:** this is probably superseded by the MinGW-w64 project. See elsewhere on this page (scroll up).\] This system comes with the GNU C/C++ compiler, which you can use to generate Win32 executables. It has its own <windows.h> which is in the public domain. Applications generated using this system are supposed to be faster than those generated by the Cygwin32 system (see elsewhere on this page), and they are free from the encumberances of the GNU license. Like other systems based on the GNU tools, Mingw32 comes with complete with various programming tools, such as a program maintainence program (ie, make), text processing tools (sed, grep), lexical analyser generator (flex), parser generator (bison), etc. It also comes with a resource compiler, allowing you to compile your Windows resources.
> 
> [GNU C/C++ Compiler](https://gcc.gnu.org/)
> 
> This is the GNU Compiler Collection page, from which you find the source code for the GNU C, C++, Fortran, Ada, Go and D compilers, as well as the standard libraries.
> 
> [DJGPP C and C++ Compilers](http://www.delorie.com/djgpp/)
> 
> This is a development system based on the GNU C/C++ compiler. It generates 32 bit MSDOS executables that is Windows 95 long-filename-aware. It is a very complete system with IDEs, graphics libraries, lexical analyser generators (flex), parser generators (bison), text processing utilities (like grep, sed), a program maintainence utility (ie, make), a dos extender, and so on. The compiler, utilities and libraries come with source code.
> 
> [OpenCilk](https://cilk.mit.edu/)
> 
> OpenCilk is an ANSI C-based language that can be used for multi-threaded parallel programming. It "is especially effective for exploiting dynamic, highly asynchronous parallelism in data-parallel or message-passing style". Their website mentions that Cilk has already been used to develop three world-class chess programs, StarTech, Socrates and Cilkchess.
> 
> [LSI C-86 C Compiler](http://www.lsi-j.co.jp/freesoft/index.html)
> 
> The website for this compiler is written in Japanese, which I don't understand, but I gather that this is a cross-compiler that allows you to generate ROMable code. An older version (3.30c) of the compiler appears to be free. The free version runs on [MSDOS](https://www.thefreecountry.com/operating-systems/dos-compatible-and-clones.shtml) only.
> 
> [SDCC C Cross-compiler](http://sdcc.sourceforge.net)
> 
> This is a C cross-compiler that targets the Intel 8051, DS390, Z80, HC08 and PIC microprocessors. It can also be retargetted for other 8 bit MCUs or PICs. It comes with a retargetable assembler and linker, a source level debugger and a simulator, and it is capable of a variety of optimisations. The libraries are Standard C99 compatible. Source code for the compiler is available under GPL. Host platforms supported include Linux, Windows, Mac OS X, Alpha, Sparc, etc.
> 
> [LADSoft CC386 C Compiler](http://www.members.tripod.com/~ladsoft/cc386_compiler.html)
> 
> This is an ANSI C compiler for MSDOS/DPMI and Win32 that comes with a runtime library, linker, rudimentary debugger, DOS extender (MSDOS version), an IDE (Win32 version) and a make utility. Source code is also available. It compiles most of the C99 constructs when you run it in C99 compatibility mode.
> 
> [Cygwin Project (C & C++ Compilers)](https://www.cygwin.com/)
> 
> This "project" includes a commercial quality compiler (GNU C/C++) that generates Win32 GUI and console applications. I have not used this port myself, but based on what I read, it appears that they have their own <windows.h> and so on. Source code for the compiler, libraries and tools are provided. Note that the default option in this package forces you to distribute your source code if you compile and link with their libraries. There is also a special option that you can invoke which will cause it to link with alternative libraries, allowing you to distribute your applications without sources.
> 
> [LCC - A Retargetable Compiler for ANSI C](https://github.com/drh/lcc)
> 
> LCC is a C compiler (source code only) that generates code for the Alpha, Sparc, MIPS R3000 and Intel x86. There is also a book [A Retargetable C Compiler](https://www.amazon.com/exec/obidos/ASIN/0805316701/christopherheng) written by the authors of the compiler that explains the code of the C compiler. The link above points to a newer version of LCC (by the same authors) than that described in the book.
> 
> [Sphinx C-- Compiler](https://sourceforge.net/projects/c--/)
> 
> This MSDOS compiler is a sort of hybrid C compiler and assembler that allows you to "create programs with the power and readability of C while retaining the efficiency of assembly language." It can produce MSDOS executables or .OBJ files which you can use in conjunction with other linkers to generate an executable. The above link leads to the source code and documentation for the compiler.
> 
> [Cyclone C](http://cyclone.thelanguage.org/)
> 
> Cyclone C is not strictly an ANSI C compiler but a compiler of a "safe dialect" of C. It enforces type safety, has a variety of checks to protect against buffer overflows, array-bound violations, etc. It currently works on [Linux](https://www.thefreecountry.com/operating-systems/linux-distributions.shtml) and Windows (the latter via Cygwin), and requires you to have the GNU compiler tools on your system (see elsewhere on [this page](https://www.thefreecountry.com/compilers/cpp.shtml)).
> 
> [Turbo C 2.01](http://edn.embarcadero.com/article/20841)
> 
> The old but famous Turbo C 2.01 for [DOS](https://www.thefreecountry.com/operating-systems/dos-compatible-and-clones.shtml) is available for free from the new owners of the (formerly) Borland development tools. This was a well-loved compiler from the MSDOS days, known for its fast compilation times, [integrated development environment](https://www.thefreecountry.com/programming/editors.shtml) ("IDE"), and (DOS-based) [graphics library](https://www.thefreecountry.com/sourcecode/graphics.shtml).
> 
> [LCC-Win32 C Compiler](https://lcc-win32.services.net/)
> 
> This is a C compiler that generates Win32 GUI and console applications. It comes with its own linker, IDE, debugger, resource editor and resource compiler. LCC-Win32 is based on the LCC compiler (listed elsewhere on this page). It is free only for non-commercial use.
> 
> Leonardo IDE
> 
> \[**Update**: this project has been discontinued.\] Leonardo IDE is a Macintosh-based IDE, compiler and debugger for C programs. It has a syntax highlighting editor, an ANSI C compiler, a compiler for the ALPHA visualization language, a graph editor, a reversible virtual CPU, etc. Note that the programs are not compiled to native code but to code to be executed for the virtual CPU. The virtual machine and debugger allows you to execute code forwards and backwards and supports multitasking. The IDE comes with animated algorithms, plus example source code for games like Tetris, Checkers, etc. The IDE is useful for checking and debugging your source code, search for memory leaks, etc.
> 
> Compaq C Compiler
> 
> \[**Update**: this compiler is no longer available. For the record, it used to be found at `h30097.www3.hp.com/linux/compaq_c/index.html`.\] Linux/Alpha users can now download and use Compaq's optimising C compiler freely by simply filling a form and agreeing to their license agreement. The compiler may be used to generate any sort of program, commercial or otherwise. The compiler includes a math library and a debugger (ladebug) ported from True64 Unix. It comes with the usual man pages as well as a Language Reference Manual and a Programmer's Guide.