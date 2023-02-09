---
created: 2022-12-22 03:19:41

author: Eotect Nahn

tags: [windows 98,virtualbox,windows]

source: https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53

---

# virtualbox.org • View topic - Windows 98SE step by step

> ## Excerpt
> Contents

---
Contents

1\. Introduction  
2\. System requirements  
3\. Recommended software  
4\. Virtual Machine settings  
5\. Required command  
6\. Installation sequence  
7\. File Associations  
8\. Troubleshooting  
9\. Usability tips  
10\. Useful websites  
11\. Other driver options  
12\. Other virtualization options

1\. Introduction

There are quite a few guides out there on how to install Windows 98se in VirtualBox, this one differs in the following ways:

-   Level of detail - for instance this guide takes you step by step through installing the video driver, the other guides I've seen only give a general outline
-   Installed software - once you finish you will have a fully updated system with a basic software loadout and some important runtimes

2\. System requirements

[VirtualBox 5.2.44](http://download.virtualbox.org/virtualbox/5.2.44/) plus extension pack (v6.x.x only fully supports Win 7 or later)

Host CPU must be capable of and have hardware virtualization enabled (VT-x/AMD-V)

Guest Base and Video memory allocations are quite generous and can be cut in half if desired

The install has been tested in Windows, Linux & OSX but obviously not all versions thereof

3\. Recommended software

Note on colour codes shown below (en-GB versions of Firefox and Open Office in archives and torent):  
@ means that the file is available in the [small patches](http://www.mediafire.com/file/658ce4lfrzj6xxa/Win98se_Small_Patches.7z) archive and as a part of the [torent](http://kurt-aust.dynu.com:21324/)  
# means that the file is available in the [medium patches](http://www.mediafire.com/file/4gjc2l0gc3s179z/Win98se_Medium_Patches.7z) archive and as a part of the [torent](http://kurt-aust.dynu.com:21324/)  
% means that the file is available in the slow (4KB/s) [torent](http://kurt-aust.dynu.com:21324/)

Create a CD image file containing the following software (size given includes dependencies):

@ The extracted config and batch files from this post's attachment

% [Auto-Patcher December 2007 Full](http://www.msfn.org/board/topic/80800-auto-patcher-for-windows-98se-english/) 331MB - MSFN topic  
% [Auto-Patcher December 2008 Upgrade](http://www.mdgx.com/web.htm#AP98) - download  
# [sdd-win-7.0.0.340-beta.exe](http://www.fileplanet.com/85954/80000/fileinfo/SciTech-Display-Doctor-v7.0-Beta) 11MB - SciTech Display Doctor  
@ [KernelEx-4.5.2.exe](http://sourceforge.net/projects/kernelex/) - compatibility layer to run XP programs

@ [GDIplus.dll](http://originaldll.com/file/gdiplus.dll/18184.html) - 5.1.3102.5581, needed by SumatraPDF and some other applications  
@ [flashplayer10\_3r183\_90\_winax.exe](http://www.mediafire.com/download/2k6l6g0xe4hx521/flashplayer10_3r183_90_winax.exe) 3MB - Flash for IE, extracted from [fp\_10.3.183.90\_archive.zip](http://download.macromedia.com/pub/flashplayer/installers/archive/fp_10.3.183.90_archive.zip), last version to work  
@ [msxml4-KB2758694-enu.exe](http://www.microsoft.com/en-us/download/details.aspx?id=36292) 2MB - Microsoft XML 4.0 SP3, extract msxml.msi and save that to the CD  
@ [vcredist\_x86.exe](http://www.microsoft.com/en-us/download/details.aspx?id=26347) 3MB - Visual C++ 2005 SP1 KB2538242  
# [dotnetfx.exe](http://www.microsoft.com/en-us/download/details.aspx?id=26) 55MB - .Net Framework 1.1 RtM  
# [NDP1.1sp1-KB867460-X86.exe](http://www.microsoft.com/en-us/download/details.aspx?id=33) - SP1 for .Net 1.1  
@ [NDP1.1sp1-KB971108-X86.exe](http://www.microsoft.com/en-us/download/details.aspx?id=2660) - .Net hotfix  
# [NDP1.1sp1-KB2833941-X86.exe](http://www.microsoft.com/en-us/download/details.aspx?id=39469) - .Net hotfix

@ [7z920.msi](http://www.7-zip.org/download.html) 1MB - 7-Zip file archiver, make sure you get the .msi version  
# [Firefox Setup 10.0.12esr.exe](http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/10.0.12esr/win32/) 19MB - a bit twitchy, last version to work  
@ [Dictionaries.7z](http://www.mediafire.com/file/277u6rekg9xz47a/Dictionaries.7z) - spell check for Yanks, Poms, Canuks & Aussies  
@ [install\_flash\_player\_32bit.exe](http://www.filehorse.com/download-flashplayer-firefox/9956/) - 11.1.102.63, last version to work  
@ [PlainOldFavorites\_1.3.1.xpi](http://www.iosart.com/firefox/plainoldfavorites/) - needed to create bookmarks  
# [jre-6u22-windows-i586.exe](http://www.filehorse.com/download-java-runtime-32/6846/) 15MB - Java runtime environment, last version to work  
% Open Office 3.2.1 - [United States](http://archive.apache.org/dist/incubator/ooo/stable/3.2.1/OOo_3.2.1_Win_x86_install_en-US.exe) - [Great Britain](http://archive.apache.org/dist/incubator/ooo/localized/en-GB/3.2.1/OOo_3.2.1_Win_x86_install_en-GB.exe) - [Other](http://archive.apache.org/dist/incubator/ooo/localized/) 127MB - needs Java, last version to work  
@ [SumatraPDF-2.2.1-install.exe](http://blog.kowalczyk.info/software/sumatrapdf/download-prev.html) 6MB - last version to work  
@ Any old .pdf file to register the file association  
# [klmcodec345.exe](http://www.filehorse.com/download-klite-mega-codec/4198/) 26MB - K-Lite Mega Codec Pack, last version to work  
@ [quicktimealt156.exe](http://www.videohelp.com/software/QuickTime-Alternative/old-versions) QuickTime Alternative, last version to work

4\. Virtual Machine settings

Create a new virtual machine named "Win 98se" with (preferred but optional) 512MB of RAM and an 8GB or larger hard drive (fixed size drives are usually faster) then adjust the VM settings to match as closely as possible the list given below. The changes from default settings are in bold, if an item is mentioned then its matching box is ticked.

-   General  
    -   Basic
        -   Name: Win 98se
        -   Type: Microsoft Windows
        -   Version: Windows 98
    -   Advanced
        -   Snapshot Folder: Default Setting
        -   Shared Clipboard: Disabled
        -   Drag'n'Drop: Disabled
    -   Encryption
        -   Not Enabled
-   System  
    -   Motherboard
        -   Base Memory: 512MB
        -   Boot Order: Optical then Hard Disk
        -   Chipset: PIIX3
        -   Pointing Device: USB Tablet
        -   Extended Features: Enable I/O APIC (only)
    -   Processor
        -   Processor(s): 1 CPU
        -   Execution Cap: 100%
        -   Extended Features: Enable PAE/NX
    -   Acceleration
        -   Paravirtualization Interface: Default
        -   Hardware Virtualization: Enable VT-x/AMD-V & Enable Nested Paging
-   Display  
    -   Screen
        -   Video Memory: 64MB
        -   Monitor Count: 1
        -   Scale Factor: 100%
        -   Acceleration: Enable 3D Acceleration & Enable 2D Video Acceleration
    -   Remote Display
        -   Not Enabled
    -   Video Capture
        -   Not Enabled
-   Storage  
    -   Controller: Floppy
        -   Type: I82078 - Use Host I/O Cache
        -   Floppy Drive: Floppy Device 0
    -   Controller: IDE
        -   Type: PIIX4 - Use Host I/O Cache
    -   Win 98se.vdi - 8+ GB Fixed
        -   Hard Disk: IDE Primary Master
    -   Win 98se Install CD
        -   Optical Drive: IDE Secondary Master
    -   Win 98se Updates CD
        -   Optical Drive: IDE Secondary Slave
-   Audio  
    -   Enable Audio
        -   Host Audio Driver: Windows DirectSound or Linux/OSX equivalent
        -   Audio Controller: SoundBlaster 16
        -   Extended Features: Enable Audio Output
-   Network  
    -   Adapter 1
        -   Enable Network Adapter
        -   Attached to: Bridged Adapter
        -   Name: {system specific}
        -   Adapter Type: PCnet-PCI II (Am79C970A)
        -   Promiscuous Mode: Deny
        -   MAC Address: {randomly generated}
        -   Cable Connected
    -   Adapters 2-4
        -   Not Enabled
-   Serial Ports  
    -   Ports 1-4
        -   Not Enabled
-   USB  
    -   Enable USB Controller
        -   USB 2.0 (EHCI) Controller
-   Shared Folders  
    -   Machine Folders
-   User Interface  
    -   Mini ToolBar: Show in Full-screen/Seamless & Show at Top of Screen

5\. Required command

After creating your virtual machine and applying all the settings but before starting it up exit VirtualBox and run the following terminal command in the same user account, it does not require admin privileges.

Windows (replace "Win 98se" with the name of your virtual machine if you changed it)

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)

`"%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe" setextradata "Win 98se" VBoxInternal/USB/HidMouse/0/Config/CoordShift 0`

Linux & OSX (replace "Win 98se" with the name of your virtual machine if you changed it)

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)

`VBoxManage setextradata "Win 98se" VBoxInternal/USB/HidMouse/0/Config/CoordShift 0`

You are now ready to start the installation

6\. Installation sequence

As Windows 98se can be more than a bit unstable you may wish to save your image at various points, just chose to "restart later" and shutdown instead of restarting then take a snapshot of the virtual hard drive before proceeding. I've given the time taken for some processes on my system (with the AntiVirus turned off) if you want to take a break while they run.

Optional steps are described in green, guaranteed errors are described in red, system specific errors are described in orange.

Start Windows 98 Setup and configure the hard drive (enable large disk support)  
Start computer with CD-ROM support then enter the following commands

-   D:
-   CD Win98
-   Format C: /V:Win98se
-   Setup /p j (there is a space between /p and j)

Custom - add ALL Windows components except additional Accessibility, Multilanguage Support and Web TV for Windows  
Setup will hang on the first reboot after entering the license code, just force a restart  
Setup might BSoD on the second reboot, press any key to continue  
Switch to Windows Logon (Network Neighbourhood >> Properties >> Configuration) \- save point 1  
Set Virtual Memory to 1GB (My Computer >> Properties >> Performance)  
Auto-Patcher December 2007 Full (install only)  
Auto-Patcher December 2008 Upgrade (install and run)  
Enter the following key sequence - M N U 5 1 3 7 B P S I I \- 35 minutes  
You might have to do the odd restart but if the VM continually aborts then it's time to refer to the troubleshooting section

sdd-win-7.0.0.340-beta.exe (SciTech Display Doctor)

-   Install and reboot \- save point 2
-   [Register](http://lmgtfy.com/?q=SciTech+CSCKnight) and reboot
-   Choose Monitor Model - (Standard monitor types) - Super VGA 1600x1200
-   Click Display Driver then change Active Driver to SciTech Nucleus Driver and reboot
-   Change Display Properties - Settings to 256 Colors - 1024 by 768 pixels and reboot
-   Windows will hang on startup, force a restart in normal mode
-   If you get a one dimensional screen resolution then force an ACPI shutdown
-   Change Display Settings to True Color (32 bit) and either 1152x864 or 1280x1024 pixels
-   Run the Optimize Wizard - Keep Current Mode - Continue Without Centring
-   Run MSconfig and disable "Check for SDD updates" on the Startup tab and reboot \- save point 3

Network Setup Wizard (Accessories >> System Tools, cable must be connected, keep files x3)  
Internet Connection Wizard (Accessories >> Communications, connect via LAN)  
Lock down Internet zones (Internet & Restricted to High, others to Medium)  
KernelEx-4.5.2.exe (compatibility layer to run XP programs)\- save point 4

Run1X.bat (& Run2X.bat) where X is your CD drive - installs the following, reboots on completion \- 10 minutes

-   uninstall MSXML 4.0 SP2
-   copy GDIplus.dll (5.1.3102.5581) to C:\\Windows
-   flashplayer10\_3r183\_90\_winax.exe (flash player for I.E.)
-   msxml.msi (MSXML 4.0 SP3 - extracted from msxml4-KB2758694-enu.exe)
-   vcredist\_x86.exe (Visual C++ 2005 SP1 KB2538242)
-   dotnetfx.exe (.NET Framework 1.1 RtM)
-   NDP1.1sp1-KB867460-X86.exe (Service Pack 1)
-   NDP1.1sp1-KB971108-X86.exe (hotfix)
-   NDP1.1sp1-KB2833941-X86.exe (hotfix)
-   reboot and autostart Run2X.bat
-   extract OOo\_3.2.1\_Win\_x86\_install\_en-\*\*.exe (Open Office)
-   7z920.msi (7-Zip file archiver)
-   Firefox Setup 10.0.12esr.exe (KernelEx - XP SP2)
-   extract Dictionaries.7z for Firefox
-   install\_flash\_player\_32bit.exe (flash player for Firefox)
-   jre-6u22-windows-i586.exe (Java Runtime Environment)
-   install openofficeorg32.msi
-   SumatraPDF-2.2.1-install.exe
-   klmcodec345.exe (K-Lite Mega Codec)
-   quicktimealt156.exe (QuickTime Alternative)
-   Set Firefox as the default web browser
-   MenuReorg.bat (tidy quick launch, desktop & start menu)

Windows Explorer settings (details view, don't hide file extensions)  
Open PlainOldFavorites\_1.3.1.xpi with Windows Explorer and link it to Firefox  
Restart Firefox three times to enable Plain Old Favourites  
Set Firefox home page to

[http://kproxy.com/](http://kproxy.com/)

or

[http://jailbreaked.net/](http://jailbreaked.net/)

(converts https to http)  
Set file associations for 7-Zip, K-Lite Mega Codec & SumatraPDF (see below)  
DeFrag & ScanDisk  
All done

7\. File Associations

To register the file associations:

-   7-Zip - Open 7-Zip and it's under Tools >> Options >> System (clear the email options on the 7-Zip tab)
-   K-Lite Mega Codec - Open Media Player Classic and it's under View >> Options >> Player >> Formats
-   SumatraPDF - Open a .pdf file in Windows Explorer and link it to C:\\SumatraPDF\\SumatraPDF.exe
-   Open Office - The easiest reset method is to uninstall Open Office, reboot and then reinstall Open Office with the command
    
    Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)
    
    `C:\Windows\System\msiexec.exe /I C:\OpenOffice3\openofficeorg32.msi REGISTER_ALL_MSO_TYPES=1 /Qb`
    
    or for individual file types you can open the file in Windows Explorer (shift-right-click if already linked) and link it to C:\\Program Files\\OpenOffice.org 3\\Program\\\[word=swriter|excel=scalc|powerpoint=simpress\] and then edit the file type (Tools >> Folder Options) adding \[ -o "%1"\] to the end of the open command - Open Office file association commands (these do not work on network shares, local files only)  
    
    Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)
    
    `"C:\Program Files\OpenOffice.org 3\program\swriter.exe" -o "%1"   "C:\Program Files\OpenOffice.org 3\program\scalc.exe" -o "%1"   "C:\Program Files\OpenOffice.org 3\program\simpress.exe" -o "%1"   "C:\Program Files\OpenOffice.org 3\program\sbase.exe" -o "%1"   "C:\Program Files\OpenOffice.org 3\program\smath.exe" -o "%1"   "C:\Program Files\OpenOffice.org 3\program\sdraw.exe" -o "%1"`
    

8\. Troubleshooting

A. Security software has been known to interfere with VirtualBox (for instance it is impossible to install Windows 2000 in VirtualBox if Avast Free anti-virus is installed on the host) so first try disabling such programs and if that doesn't help you might even have to uninstall them

B. Sometimes problems with installing Win98se in VirtualBox 5.2.44 are due to [incompatibilites with newer CPUs](http://forums.virtualbox.org/viewtopic.php?f=2&t=84858#p403359), so if you still have issues try mimicking a 2012 vintage processor by executing this command (with the VM shut down):

Windows (replace "Win 98se" with the name of your virtual machine if you changed it)

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)

`"%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe" modifyvm "Win 98se" --cpu-profile "Intel Core i5-3570"`

Linux & OSX (replace "Win 98se" with the name of your virtual machine if you changed it)

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=28&t=59559&sid=249d2269525d48a3ce542523c6155b53#)

`VBoxManage modifyvm "Win 98se" --cpu-profile "Intel Core i5-3570"`

If the Core i5 doesn't work here is a [list of supported CPUs](http://www.virtualbox.org/svn/vbox/trunk/src/VBox/VMM/VMMR3/cpus/) you can try instead, you can remove the modification by running the command again with the arguement \--cpu-profile ""

C. Finally, you could try installing Win 98se using [VirtualBox 4.3.40](http://download.virtualbox.org/virtualbox/4.3.40/) plus extension pack and then upgrading to 5.2.44

9\. Usability tips

Some games can have trouble with the mouse, if so try turning mouse integration off

Some games require that the install CD be in the drive, if so connect to a physical (or advanced virtual - [Windows](http://www.daemon-tools.cc/products/dtLite), [Linux](http://cdemu.sourceforge.net/)) drive and enable passthrough

You don't have the ability to switch to a true full screen mode so you will have to adjust the host's resolution to close to that of the guest

The supported modes are 640x480 800x600 1024x768 1152x864 1280x1024 1600x1200

Try to match the vertical resolution as closely as possible while maintaining your monitor's aspect ratio, full screen mode will save you about 120 pixels

10\. Useful websites

[KernelEx wiki (application compatibility database)](http://kernelex.sourceforge.net/wiki/Main_Page)  
[Auto-Patcher MSFN topic](http://www.msfn.org/board/topic/80800-auto-patcher-for-windows-98se-english/)  
[Main install guide used](https://forums.virtualbox.org/viewtopic.php?f=28&t=9918)

11\. Other driver options AKA wet bear (all in the [small patches](http://www.mediafire.com/file/658ce4lfrzj6xxa/Win98se_Small_Patches.7z) archive and [torent](http://kurt-aust.dynu.com:21324/))

The "Setup /p j" command is used to force ACPI support [(item 1)](https://forums.virtualbox.org/viewtopic.php?f=28&t=32989#p147358) on installation, the other method commonly used is to install [Rain 2.0](http://www.benchtest.com/rain.html), that should not be necessary in this case but if you are getting 100% CPU load from the VM even when it is sitting idle you could try it

SciTech Display Doctor was released for free [(item 2)](https://forums.virtualbox.org/viewtopic.php?f=28&t=32989#p147358) when the company went out of business, but if you don't feel comfortable using it or want to try something different you can install the Bear [Universal VESA/VBE Video Display Driver](http://bearwindows.zcm.com.au/vbe9x.htm) using the one in the VBE9X\\UNI folder [(install tips)](https://forums.virtualbox.org/viewtopic.php?f=28&t=9918#p163805)

You can use the [Intel PRO/1000 MT Desktop (82540EM)](https://downloadcenter.intel.com/Detail_Desc.aspx?agr=Y&DwnldID=4235) network adapter as drivers are available, however it won't increase your network speed as VirtualBox will push data through the virtual interface at the highest speed your physical network will support, also don't change to it until after you've run the Network Setup Wizard

To use AC97 audio download the [Realtek AC97 Windows 95 driver](http://www.realtek.com.tw/downloads/downloadsView.aspx?Langid=1&PNid=14&PFid=23&Level=4&Conn=3&DownTypeID=3&GetDown=false) (not the 98se one) then extract it and use the device manager to install it

12\. Other virtualization options

There are two other free virtualization options available, however VirtualBox with SciTech has better graphics performance for gaming

In both cases install the VM drivers after running the Auto-Patcher (at the same point you'd install SciTech on VirtualBox)

32 or 64 bit - If you are using Microsoft Windows 7 or earlier you can use MS Virtual PC 2007 which has full VM driver support for Windows 98se

If you also want access to Windows XP mode (only available in Windows 7 Professional & Ultimate) you will have to use [some tricks](http://nookkin.com/articles/how-tos-and-guides/run-virtual-pc-2007-and-windows-virtual-pc-on-the-same-machine.ndoc) to get both working

MS Virtual PC 2007 emulates a 1995 vintage 4MB 2D S3 Trio32/64 PCI (732/764) graphics adapter

Install MS Virtual PC 2007 in the following order

-   [Virtual PC 2007 SP1](https://web.archive.org/web/20200401213018/http://www.microsoft.com/en-us/download/details.aspx?id=4580)
-   [Hotfix rollup](https://web.archive.org/web/20151018045532/https://support.microsoft.com/en-us/kb/958162)
-   [Security update](https://web.archive.org/web/20200802185445/https://www.microsoft.com/en-us/download/details.aspx?id=25161) (also in the [small patches](http://www.mediafire.com/file/658ce4lfrzj6xxa/Win98se_Small_Patches.7z) archive and [torent](http://kurt-aust.dynu.com:21324/))

64 bit only - If you are using Microsoft Windows 7 (15) or later (16) or a current version of Linux you can use [VMware Player 15/16](https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/15_0) (or VMware Player 12 if your host has a pre-2010 CPU - [Windows](https://download3.vmware.com/software/player/file/VMware-player-12.5.9-7535481.exe), [Linux](http://download3.vmware.com/software/player/file/VMware-Player-12.5.9-7535481.x86_64.bundle))

VMware Player uses a custom SVGA implementation but it lacks acceleration, also the VM driver installation is buggy

Install VMware drivers in the following order

-   Install VMware Tools (Player >> Manage), the mouse driver will fail
-   Manually install the PS/2 mouse driver via the device manager, inf file at "C:\\Program Files\\VMware\\VMware Tools\\Drivers\\mouse"
-   Install the [audio driver](https://mega.nz/#!5IUFjbqI!DdbgBohypIYunbji3lS00y21DVWYRVcoQP15TNBxyUA) (also in the [small patches](http://www.mediafire.com/file/658ce4lfrzj6xxa/Win98se_Small_Patches.7z) archive and [torent](http://kurt-aust.dynu.com:21324/))
