*TITLE*: Using RAW Devices In VirtualBox VMs

*MARK*: Eotect

*DATE*: 2022-11-26

*SOURCE*: https://www.howtoforge.com/using-raw-devices-in-virtualbox-vms

--------------------------------------------------------

[Using RAW Devices In VirtualBox VMs](https://www.howtoforge.com/using-raw-devices-in-virtualbox-vms)

> ## Using RAW Devices In VirtualBox VMs
> 
> Version 1.0  
> Author: Falko Timme  
> [](http://twitter.com/howtoforgecom)[![](https://www.howtoforge.com/images/socialmedia/twitter.png?ezimgfmt=rs:16x16/rscb5/ng:webp/ngcb5)](https://www.howtoforge.com/images/socialmedia/big/twitter.png) [Follow me on Twitter](http://twitter.com/howtoforgecom)  
> if(typeof ez\_ad\_units!='undefined'){ez\_ad\_units.push(\[\[728,90\],'howtoforge\_com-box-3','ezslot\_2',106,'0','0'\])};\_\_ez\_fad\_position('div-gpt-ad-howtoforge\_com-box-3-0');
> 
> Usually, VirtualBox creates its virtual machines in disk images (.vdi, .vmdk, etc.). This tutorial explains how you can use RAW devices from the host (partitions, LVM volumes, etc.) and create a VirtualBox VM in it. I will also explain how to mount a RAW device in an existing VM.
> 
> I do not issue any guarantee that this will work for you!
> 
> ### 1 Preliminary Note
> 
> Because I've installed VirtualBox on a headless server, I'm using phpvirtualbox as the VirtualBox GUI here. If you use the original VirtualBox GUI, that is perfectly fine.
> 
> My VirtualBox host uses LVM, so I will concentrate on using LVM volumes as RAW devices in this tutorial. The procedure is the same for "normal" partitions.
> 
> (adsbygoogle=window.adsbygoogle||\[\]).push({});
> 
> Make sure that you are logged in as root (type in
> 
> sudo su
> 
> to become root), because we must run all the steps from this tutorial as root user.
> 
> ### 2 Add The VirtualBox User To The disk Group
> 
> Before we start, we must make sure that the user under which we run VirtualBox is a member of the disk group. If you use phpvirtualbox, the username is probably vbox. If you use the normal VirtualBox GUI, the username is the name under which you are logged into your Linux desktop.if(typeof ez\_ad\_units!='undefined'){ez\_ad\_units.push(\[\[580,400\],'howtoforge\_com-medrectangle-4','ezslot\_1',108,'0','0'\])};\_\_ez\_fad\_position('div-gpt-ad-howtoforge\_com-medrectangle-4-0');
> 
> usermod -a -G disk vbox
> 
> To make sure that this change takes effect, it is a good idea to reboot now:
> 
> reboot
> 
> ### 3 Prepare A RAW Device For Use With VirtualBox
> 
> As I mentioned before, I'm using LVM volumes here. Let's create a 20G volume called vm10 (the virtual machine I want to create will have the name vm10) in the volume group vg0:
> 
> lvcreate -L20G -n vm10 vg0
> 
> Next we must create a .vmdk file that tells VirtualBox to use the RAW device /dev/vg0/vm10. It's probably best to create it in the home directory of the user under which VirtualBox is running (e.g. /home/vbox if you use phpvirtualbox) - the file must also be owned by that user:
> 
> cd /home/vbox/  
> VBoxManage internalcommands createrawvmdk -filename vm10.vmdk -rawdisk /dev/vg0/vm10  
> chown vbox:vbox vm10.vmdkif(typeof ez\_ad\_units!='undefined'){ez\_ad\_units.push(\[\[580,400\],'howtoforge\_com-box-4','ezslot\_10',110,'0','0'\])};\_\_ez\_fad\_position('div-gpt-ad-howtoforge\_com-box-4-0');
> 
> ### 4 Create The VM In VirtualBox
> 
> Next go to your VirtualBox GUI (original VirtulBox GUI or phpvirtualbox) and use the Create New Virtual Machine wizard to create a new virtual machine. On the Virtual Hard Disk screen, select Use existing hard disk and click on the Choose a virtual hard disk file icon:
> 
> [![](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/1.png?ezimgfmt=rs:550x399/rscb5/ng:webp/ngcb5)](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/big/1.png)
> 
> Select the .vmdk file (vm10.vmdk in this example) that we have created in chapter three and click on OK:
> 
> [![](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/2.png?ezimgfmt=rs:550x399/rscb5/ng:webp/ngcb5)](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/big/2.png)
> 
> Click on Next >>...
> 
> [![](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/3.png?ezimgfmt=rs:550x399/rscb5/ng:webp/ngcb5)](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/big/3.png)
> 
> ... and on Create:
> 
> [![](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/4.png?ezimgfmt=rs:550x399/rscb5/ng:webp/ngcb5)](https://www.howtoforge.com/images/virtualbox_vm_on_raw_device/big/4.png)
> 
> Now create the virtual machine as you would normally do in VirtualBox.
> 
> You are now using a RAW device instead of a disk image for the virtual machine.