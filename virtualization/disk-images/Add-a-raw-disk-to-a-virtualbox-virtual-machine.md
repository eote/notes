*TITLE*: Add a raw disk to a virtualbox virtual machine

*MARK*: Eotect

*DATE*: 2022-11-26

*SOURCE*: https://ahelpme.com/software/virtualbox/add-a-raw-disk-to-a-virtualbox-virtual-machine/

--------------------------------------------------------

[Add a raw disk to a virtualbox virtual machine | Any IT here? Help Me!](https://ahelpme.com/software/virtualbox/add-a-raw-disk-to-a-virtualbox-virtual-machine/)

>  [![Any IT here? Help Me!](https://ahelpme.com/wp-content/uploads/2018/01/cropped-cpu-video-mb-5.png)](https://ahelpme.com/) 
> 
> # Add a raw disk to a virtualbox virtual machine
> 
> This is strange there is no way to add a physical disk to your virtual machine under virtualbox! Still it is possible and it is simple, but you need to execute few commands under console so you need to open a terminal and to have a root privileges!  
> **To use a raw disk in our virtual machine we must create a special VMDK file and then to use it when adding a hard drive to our virtualbox virtual machine with ※Use an existing virtual hard disk dile§.**
> 
> Here are the right steps to add a raw disk:
> 
> ### STEP 1) Permissions your user must have (write) permissions to access raw disks
> 
> In most cases your user do not have write permission to the disk 每 it is the same under MS Windows and any Linux distribution (and probably MAC)! So here is the right way how to give permissions under Linux and Windows:
> 
> -   **Under Linux** (Ubuntu, Centos, Fedora, Gentoo and probably all other). There are at least two ways to give WRITE permission to the raw disk (use one of them, the first one is preferred). We want to add our third disk the ※/dev/sdc§ so the examples are with this device:
>     1.  add your user to ※disk§ group and log out. After you log in you＊ll have WRITE permissions to the disks. Probably you must log off your GUI (Gnome, KDE and so on), too!
>         
>         1
>         
>         `srv@``local` `~ $` `sudo` `sudo` `usermod` `-a -G disk myuser`
>         
>         ※myuser§ is the username of the user I am logged in. The log out and log in (if you are using a GUI 每 gnome, kde or something else, you must log out from the GUI, too and then log in again).
>         
>     2.  execute virtualbox with root user
>     3.  change the permission of the physical device you want to use (this is temporary, because next time you reboot you must change it again)
>         
>         1
>         
>         `srv@``local` `~ $` `sudo` `chmod` `o+rw` `/dev/sdc`
>         
> -   **Under Windows 10** (or 7) 每 you must start the command prompt and Virtualbox with ※run as Administrator§ 每 look at the next step (STEP 2).
> 
> ### STEP 2) Add the raw disk
> 
> -   Under Linux (use one of these solutions)
>     
>     -   With ordinary user and WRITE permission is set:
>         
>         1
>         
>         2
>         
>         `srv@``local` `~ $ VBoxManage internalcommands createrawvmdk -filename` `/home/myuser/``.VirtualBox``/physical-sdc``.vmdk -rawdisk` `/dev/sdc`
>         
>         `RAW host disk access VMDK` `file` `/home/myuser/``.VirtualBox``/physical-sdc``.vmdk created successfully.`
>         
>         As you can see no root is required and now you can start VirtualBox without root permissions as always you have done it.
>         
>     -   With root user
>         
>         1
>         
>         2
>         
>         3
>         
>         `srv@``local` `~ $` `sudo` `VBoxManage internalcommands createrawvmdk -filename` `/home/myuser/``.VirtualBox``/physical-sdc``.vmdk -rawdisk` `/dev/sdc`
>         
>         `RAW host disk access VMDK` `file` `/home/myuser/``.VirtualBox``/physical-sdc``.vmdk created successfully.`
>         
>         `srv@``local` `~ $` `sudo` `VirtualBox`
>         
>         ※/home/myuser§ is my home user directory. Yours could be with different name so change the name accordingly.
>         
>     -   Under Windows (7 and 10)
>         1.  **First** you must start the command line tool under linux also with **administrative privileges**!  
>             Search for command prompt and with right click you hit ※Run as administrator§. Change the directory to the VirtualBox executables and then execute the command. Use your path for ※filename§ (c:\\Users\\homer\\.VirtualBox\\physical-sdc.vmdk 每 change to your path), your home user directory or nay other directory you use for storing the VirtualBox files.  
>             
>             [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-1--3360252c99.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-1--3360252c99.png)
>             
>             Command Prompt 每 Run as Administrator
>             
>         2.  Accept the privileges escalation:  
>             
>             [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-2--5c99b96409.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-2--5c99b96409.png)
>             
>             Administrator escalation confirmation
>             
>         3.  Execute the following line:
>             
>             1
>             
>             2
>             
>             3
>             
>             4
>             
>             5
>             
>             6
>             
>             7
>             
>             8
>             
>             9
>             
>             `Microsoft Windows [Version 10.0.16299.125]`
>             
>             `(c) 2017 Microsoft Corporation. All rights reserved.`
>             
>             `C:\Windows\system32>``cd` `C:\Program Files\Oracle\VirtualBox`
>             
>             `C:\Program Files\Oracle\VirtualBox>VBoxManage.exe internalcommands createrawvmdk -filename` `"c:\Users\homer\.VirtualBox\physical-sdc.vmdk"` `-rawdisk \\.\PhysicalDrive3`
>             
>             `RAW host disk access VMDK` `file` `c:\Users\homer\.VirtualBox\physical-sdc.vmdk created successfully.`
>             
>             `C:\Program Files\Oracle\VirtualBox>`
>             
>         4.  As you can see now we have a generated file, which can use when creating a virtual machine (look at STEP3))  
>             
>             [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-3--4601ac98bf.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-3--4601ac98bf.png)
>             
>             VMDK file created
>             
>     
>     ### \* Create virtual machine under Linux and Windows using raw disk
>     
>     1.  Under Windows 10 (and 7) we must run VirtualBox as administrator. Skip this if you are using linux.  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-7--0f33d3ba03.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-7--0f33d3ba03.png)
>         
>         Windows 每 Run as administrator
>         
>     2.  Confirm administrator privileges escalation under Windows 10 (and 7). Skip this if you are using linux.  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-8--b63d2a4426.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-8--b63d2a4426.png)
>         
>         Windows 10 administrator confirmation
>         
>     3.  Create Virtual Machine with name ※test§  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-9--1e5f01cd86.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-9--1e5f01cd86.png)
>         
>         Create Virtual Machine
>         
>     4.  Set the memory to the virtual machine 每 for example 1024Mbytes.  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-10--6e1deada12.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-10--6e1deada12.png)
>         
>         Memory size
>         
>     5.  Set the hard disk 每 our VMDK file to use our raw disk. Check ※Use an existing virtual hard disk file§ and click on ※Choose a virtual hard disk file＃§ 每 a dialog will open.  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-11--9ed622fc03.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-11--9ed622fc03.png)
>         
>         Set the hard disk
>         
>     6.  Navigate to where is your freshly created VMDK file from the STEP 2) and select it to open.  
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-12--70287f948f.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-12--70287f948f.png)
>     7.  Click ※Create§ to create the virtual machine.  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-13--35d2725375.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-13--35d2725375.png)
>         
>         Create
>         
>     
>     ### \* Here is how it looks like our VMDK file in VirtualBox ※Virtual Media Manager§
>     
>     -   Under Windows 10  
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-14--ea80b83c6c.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-14--ea80b83c6c.png)
>     -   Under Linux  
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-15--63a6564fb9.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-15--63a6564fb9.png)
>     
>     ### \* Troubleshooting under Linux
>     
>     The permission problem accessing the disk under linux 每 NO WRITE permissions here:
>     
>     1
>     
>     2
>     
>     3
>     
>     `srv@``local` `~ $ VBoxManage internalcommands createrawvmdk -filename` `"sdc-physical.vmdk"` `-rawdisk` `/dev/sdc`
>     
>     `VBoxManage: error: Cannot` `open` `the raw disk` `'/dev/sdc'``: VERR_ACCESS_DENIED`
>     
>     `VBoxManage: error: The raw disk vmdk` `file` `was not created`
>     
>     ### \* Troubleshooting under Windows (10)
>     
>     The permission problem accessing the disk under linux 每 NO WRITE permissions here:
>     
>     1
>     
>     2
>     
>     3
>     
>     4
>     
>     5
>     
>     6
>     
>     7
>     
>     8
>     
>     9
>     
>     10
>     
>     `Microsoft Windows [Version 10.0.16299.125]`
>     
>     `(c) 2017 Microsoft Corporation. All rights reserved.`
>     
>     `C:\Users\homer>``cd` `C:\Program Files\Oracle\VirtualBox`
>     
>     `C:\Program Files\Oracle\VirtualBox>VBoxManage.exe internalcommands createrawvmdk -filename` `"c:\Users\homer\.VirtualBox\physical-sdc.vmdk"` `-rawdisk \\.\PhysicalDrive3`
>     
>     `VBoxManage.exe: error: Cannot` `open` `the raw disk` `'\\.\PhysicalDrive3'``: VERR_ACCESS_DENIED`
>     
>     `VBoxManage.exe: error: The raw disk vmdk` `file` `was not created`
>     
>     `C:\Program Files\Oracle\VirtualBox>`
>     
>     You did not execute Command Prompt ※**Run as administrator**§
>     
>     And if you get the following error:
>     
>     1
>     
>     2
>     
>     3
>     
>     4
>     
>     5
>     
>     6
>     
>     7
>     
>     `Permission problem accessing the` `file` `for` `the medium` `'C:\Users\homer\.VirtualBox\physical-sdc.vmdk'` `(VERR_ACCESS_DENIED).`
>     
>     `Result Code: VBOX_E_FILE_ERROR (0x80BB0004)`
>     
>     `Component: MediumWrap`
>     
>     `Interface: IMedium {4afe423b-43e0-e9d0-82e8-ceb307940dda}`
>     
>     `Callee: IVirtualBox {9570b9d5-f1a1-448a-10c5-e12f5285adad}`
>     
>     `Callee RC: VBOX_E_OBJECT_NOT_FOUND (0x80BB0001)`
>     
>     1.  Create a virtual machine with our VMDK file  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-4--0ddb170196.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-4--0ddb170196.png)
>         
>         Create a virtual machine
>         
>     2.  Use our VMDK file  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-5--8698d181e9.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-5--8698d181e9.png)
>         
>         Use an existing virtual hard disk file
>         
>     3.  VirtualBox 每 Error  
>         
>         [![main menu](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-6--393e6dca7f.png)](https://ahelpme.com/public/media/tutorials/add-rawdisk-to-virtualbox-step-6--393e6dca7f.png)
>         
>         VBOX\_E\_FILE\_ERROR
>         
>     
>     ### What is in the VMDK file generated for a raw disk
>     
>     -   **Linux**
>         
>         1
>         
>         2
>         
>         3
>         
>         4
>         
>         5
>         
>         6
>         
>         7
>         
>         8
>         
>         9
>         
>         10
>         
>         11
>         
>         12
>         
>         13
>         
>         14
>         
>         15
>         
>         16
>         
>         17
>         
>         18
>         
>         19
>         
>         20
>         
>         21
>         
>         22
>         
>         23
>         
>         24
>         
>         `# Disk DescriptorFile`
>         
>         `version=1`
>         
>         `CID=c7936918`
>         
>         `parentCID=ffffffff`
>         
>         `createType="fullDevice"`
>         
>         `# Extent description`
>         
>         `RW 1953525168 FLAT "/dev/sdc" 0`
>         
>         `# The disk Data Base`
>         
>         `#DDB`
>         
>         `ddb.virtualHWVersion = "4"`
>         
>         `ddb.adapterType="ide"`
>         
>         `ddb.geometry.cylinders="16383"`
>         
>         `ddb.geometry.heads="16"`
>         
>         `ddb.geometry.sectors="63"`
>         
>         `ddb.uuid.image="6386fe41-7f5c-49b6-930f-1bb7dd811603"`
>         
>         `ddb.uuid.parent="00000000-0000-0000-0000-000000000000"`
>         
>         `ddb.uuid.modification="00000000-0000-0000-0000-000000000000"`
>         
>         `ddb.uuid.parentmodification="00000000-0000-0000-0000-000000000000"`
>         
>         `ddb.geometry.biosCylinders="1024"`
>         
>         `ddb.geometry.biosHeads="255"`
>         
>         `ddb.geometry.biosSectors="63"`
>         
>     -   **Windows**
>         
>         1
>         
>         2
>         
>         3
>         
>         4
>         
>         5
>         
>         6
>         
>         7
>         
>         8
>         
>         9
>         
>         10
>         
>         11
>         
>         12
>         
>         13
>         
>         14
>         
>         15
>         
>         16
>         
>         17
>         
>         18
>         
>         19
>         
>         20
>         
>         21
>         
>         `# Disk DescriptorFile`
>         
>         `version=1`
>         
>         `CID=7999bf08`
>         
>         `parentCID=ffffffff`
>         
>         `createType="fullDevice"`
>         
>         `# Extent description`
>         
>         `RW 250069680 FLAT "\\.\PhysicalDrive3" 0`
>         
>         `# The disk Data Base`
>         
>         `#DDB`
>         
>         `ddb.virtualHWVersion = "4"`
>         
>         `ddb.adapterType="ide"`
>         
>         `ddb.geometry.cylinders="16383"`
>         
>         `ddb.geometry.heads="16"`
>         
>         `ddb.geometry.sectors="63"`
>         
>         `ddb.uuid.image="70bcd06f-51e5-4468-b9ed-f356be4afd6b"`
>         
>         `ddb.uuid.parent="00000000-0000-0000-0000-000000000000"`
>         
>         `ddb.uuid.modification="00000000-0000-0000-0000-000000000000"`
>         
>         `ddb.uuid.parentmodification="00000000-0000-0000-0000-000000000000"`
>         
> 
> ![](https://secure.gravatar.com/avatar/09a534572e5cf954d7880480b9313998?s=49&d=mm&r=g)Author  [neoX](https://ahelpme.com/author/admincho/)Posted on [May 10, 2018May 16, 2018](https://ahelpme.com/software/virtualbox/add-a-raw-disk-to-a-virtualbox-virtual-machine/)Categories [VirtualBox](https://ahelpme.com/category/software/virtualbox/)Tags [full virtualization](https://ahelpme.com/tag/full-virtualization/), [linux](https://ahelpme.com/tag/linux/), [usermod](https://ahelpme.com/tag/usermod/), [VBoxManage](https://ahelpme.com/tag/vboxmanage/), [virtualbox](https://ahelpme.com/tag/virtualbox/), [windows](https://ahelpme.com/tag/windows/)