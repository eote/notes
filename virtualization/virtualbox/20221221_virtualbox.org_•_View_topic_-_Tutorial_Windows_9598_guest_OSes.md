---
created: 2022-12-21 01:57:18

author: Eotect Nahn

tags: []

source: https://forums.virtualbox.org/viewtopic.php?f=2&t=9918

---

# virtualbox.org • View topic - Tutorial: Windows 95/98 guest OSes

> ## Excerpt
> Since this is now became a common request by many, I decided to write a tutorial about Windows 9x (95/98/98SE/Me) usage on VirtualBox.

---
Since this is now became a common request by many, I decided to write a tutorial about Windows 9x (95/98/98SE/Me) usage on VirtualBox.

Forenote: Windows 9x is not officially supported by VirtualBox team, which means, that it lacks Guest VM Additions, and it runs slowly, because VirtualBox is not optimized to run Win 9x.

1\. Installation - I won't cover here in detail, except few points.

Most CD-ROMs available for Windows 95/98 are not bootable, which means, that you must boot from DOS floppy, install DOS first and only then install Windows 95/98.  
\*It does require DOS skills\*  
Official bootable CD media is starting from 98SE. So if you're newbie, you should use Windows 98 SE bootable CD.

Additionally I strongly suggest to limit system RAM to 512 MB for those OSes. Otherwise it will crash. (There are workarounds, that allow Win 9x run on modern physical systems, but I won't go into detail here)  
In some cases enabling or disabling AMD-V/VT-x can help you install the O.S.

For this tutorial, I presume, that you are able to install the OS.

Installing with ACPI:  
(contributed by Richard\_S)

Contrary to what you may have read here in some of the other VirtualBox Win98 threads, this is NOT because Win98se is a poorly written piece of antiquated crap that doesn't even know how to properly handle CPU IDLE.

Back when a lot of todays young Linux geeks were still pooping their dipiys, Win98 was already supporting ACPI functions to create greener PCs and help keep laptops from running down their batteries in 10 minutes (which is exactly what DID happen to me the first time I installed Linux on a laptop that was working FINE in Win98).

So, long story short, there is NOTHING really wrong with Win98, the problem is that VirtualBox's emulated BIOS doesn't fully match up with what Win98 expects a real ACPI BIOS to look like, so by default Win98 will not install ACPI support (and unfortunately, the older APM support doesn't handle CPU IDLE, so we get problems).

The solution is to FORCE ACPI support to be installed, by using the

/p j

command line switch when running the setup program that installs Win98.

This means that you can't just jam the virtual CD into the virtual CD drive and let 'autorun' take care of everything.

The best way to handle this is to simply move the Win98 install folder from the Windows 98 SE CD onto your virtual C: drive in VirtualBox, then change directory to that folder in a DOS prompt and run the setup program manually:

setup /p j

This will force ACPI power management (and the associated CPU IDLE functions) to be installed, and your Win98 virtual machine will consume no more system resources when running than a similar XP or Linux virtual machine.

2\. Sound /Audio Integration.

In VirtualBox, you must enable Sound, and use "Sound Blaster 16".  
It is available since VBox 1.6.0.

The procedure for installation is rather simple:  
NOTE: The procedure below is only needed if you switch from AC'97 to SB16.  
It is not needed, if you create new VM with SB16, then install Win98 on it.

2.1. Delete your sound card device and all unknown devices from "Device Manager".  
2.2 Add New Hardware (from Control Panel).

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img178.imageshack.us/img178/2780/win98soundscreenshot01xg6.png[/img]`

  

![win98soundscreenshot01xg6.png](https://forums.virtualbox.org/download/file.php?id=5652)

win98soundscreenshot01xg6.png (44.95 KiB) Viewed 891787 times

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img502.imageshack.us/img502/3426/win98soundscreenshot02sd3.png[/img]`

  

![win98soundscreenshot02sd3.png](https://forums.virtualbox.org/download/file.php?id=5653)

win98soundscreenshot02sd3.png (39.97 KiB) Viewed 891787 times

2.3 Select "no, device is not listed in the list".

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img397.imageshack.us/img397/7972/win98soundscreenshot03so7.png[/img]`

  

![win98soundscreenshot03so7.png](https://forums.virtualbox.org/download/file.php?id=5654)

win98soundscreenshot03so7.png (40.95 KiB) Viewed 891787 times

2.4 Let Windows search for non-plug'n'play devices.

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img168.imageshack.us/img168/1111/win98soundscreenshot04gd2.png[/img]`

  

![win98soundscreenshot04gd2.png](https://forums.virtualbox.org/download/file.php?id=5655)

win98soundscreenshot04gd2.png (42.2 KiB) Viewed 891787 times

2.5 It will manually detect non-plug-n-play devices. Click on "Details" to show them.

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img413.imageshack.us/img413/9726/win98soundscreenshot05yx4.png[/img]`

2.6. It will find "Soundblaster 16 or AWE 32 or compatible".

Code: [Select all](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)   [Expand view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)[Collapse view](https://forums.virtualbox.org/viewtopic.php?f=2&t=9918#)

`[img]http://img413.imageshack.us/img413/2001/win98soundscreenshot06me3.png[/img]`

  

![win98soundscreenshot06me3.png](https://forums.virtualbox.org/download/file.php?id=5656)

win98soundscreenshot06me3.png (39.92 KiB) Viewed 891787 times

2.7. Restart the VM.

3\. Video driver integration.  
By default Windows 98 will run only in 640x480 resolution, 16-colors.

Performance Note: VirtualBox is not optimized for 16-colors (4-bit) emulation. It works very slow this way.  
Having 32-bit True Color driver makes Win98 VMs run on VirtualBox \*much\* faster.

If you want True color or high resolution, you need to download special drivers.  
3.1. bearwindows driver (unstable)

[http://bearwindows.zcm.com.au/](http://bearwindows.zcm.com.au/)

NOTE: You must install "Universal version" (2nd link), as the "VirtualBox" version is known to have problems.  
WARNING: This driver is buggy, and many Windows fonts do not render correctly with it. Not recommended.

3.2. SciTech Display Doctor (recommended)  
The second option is to get the SciTech Display Doctor version 7 beta driver (12 MB) -  
(contributed by Richard\_S)

[https://www.dropbox.com/s/226caou8x0jf8 ... ctor-7.iso](https://www.dropbox.com/s/226caou8x0jf8vm/scitech-display-doctor-7.iso)

\-or-

[https://docs.google.com/open?id=0BycgkM ... UhnWGRycVE](https://docs.google.com/open?id=0BycgkMZbeQOzWXE5NUhnWGRycVE)

The driver is a high quality commercial grade video driver (even includes some software emulated Open GL 3D support), and it does include an exe installer program.

Despite having an installer, the SciTech Display Doctor is a little tricky to get going. After the program launches, you have to find the little round radio button link to click to 'enable' the new driver (otherwise you still have VGA). Even then, you can't select any higher resolution modes until you ditch the 'default monitor' and select one of the 'Super VGA' types.

After fiddling around with the above changes and rebooting several times you should be able to select 800x600 or 1024x768 (or higher) resolutions with 32 bit color depth. (setting 32 bit color mode optimizes the interface with Virtualbox and really speeds things up)

4\. Network  
Easiest thing, is to setup VirtualBox to NAT, and AMD PCnet-II network chip. It will be auto-detected by Win 9x.

5\. Mouse  
(contributed by stefan.becker)

VirtualBox 4.1 provides for Windows-98-compatible USB tablet device.  
Enable USB Tablet: VM->Settings->System->Enable Absolute pointing device

then do: (enable Windows-98 mode)  
VBoxManage setextradata "VM name" "VBoxInternal/USB/HidMouse/0/Config/CoordShift" 0

docs: "12.3.8 USB tablet coordinates ... in Windows 98 guests"

6\. Shared Folders  
Since VirtualBox shared folders won't work, there are other ways, such as SMB/Windows File Sharing. Recommended for Windows hosts.

(Tested with VBox 2.1.2.-- and was successful with "bridged" network. I had no success with NAT.)  
WARNING: I admit that with VirtualBox the network is very unstable, presumably due to very slow performance of Win 9x guests under VBox.

For Unix hosts, WinSCP is recommended.

Another way of read-only file sharing is to create a virtual CD-ROM \*.iso file on the host and insert it into the guest VM.

7\. Clipboard Host<=>Guest  
(contributed by stefan.becker)

Clipboard integrated in VirtualBox only works with the Guest Additions, so not for Windows9x. But there is another solution: Clipboard over TCP/IP.

A Solution tested successfull with Linux Host is ShareClip:

[http://homepage.mac.com/bnej/shareclip/](http://homepage.mac.com/bnej/shareclip/)

\-Technologov  
Written on 2.9.2008, updated on 18.07.2011.

Please discuss this tutorial [here](http://forums.virtualbox.org/viewtopic.php?f=2&t=33359&start=60)  
This topic is only for additions to this tutorial. Do not ask questions about how to get something working. Use a separate topic for that.

Last edited by [mpack](https://forums.virtualbox.org/memberlist.php?mode=viewprofile&u=17541) on 28. Sep 2015, 19:52, edited 3 times in total.  
**Reason:** _Fix broken BearWindows link._
