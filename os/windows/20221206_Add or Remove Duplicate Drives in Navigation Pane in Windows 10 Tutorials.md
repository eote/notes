---
created: 2022-12-06T22:34:59 (UTC +08:00)

author: Eotect Nahn

tags: [Add or Remove Duplicate Drives in Navigation Pane in Windows 10,windows 10,windows troubleshooting,Microsoft,windows 10 tutorials,windows help,support,ten forums,pc help,win10,BSOD]

source: https://www.tenforums.com/

---

# Add or Remove Duplicate Drives in Navigation Pane in Windows 10 | Tutorials

> ## Excerpt
> How to Add or Remove Duplicate Drives in Navigation Pane of File Explorer in Windows 10

---
![Add or Remove Duplicate Drives in Navigation Pane in Windows 10](https://www.tenforums.com/geek/gars/images/2/types/thumb_14343429100Drive.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10")

## Add or Remove Duplicate Drives in Navigation Pane in Windows 10

**_How to Add or Remove Duplicate Drives in Navigation Pane of File Explorer in Windows 10_**  
Published by Category: [General Tips](https://www.tenforums.com/tutorials/id-General_Tips/)  
01 Feb 2020

>   
> **How to Add or Remove Duplicate Drives in Navigation Pane of File Explorer in Windows 10**
> 
> By default, all **removable drives** are shown separately in the navigation pane of File Explorer in addition to being shown under This PC in the navigation pane.
> 
> **OS drives** and **fixed drives** will only be shown under This PC, and not separately in the navigation pane.
> 
> This tutorial will show you how to add or remove the **drives** showing twice in the **navigation pane** of File Explorer for all users in **Windows 10**. This will not affect the drives listed under **This PC** in the navigation pane.
> 
> You must be signed in as an [**administrator**](https://www.tenforums.com/tutorials/21680-determine-account-type-windows-10-a.html) to be able to add or remove drives in the navigation pane.
> 
>   
> 
> To see all removable storage devices connected to your PC, copy and paste the command below into the Run (Win+R) dialog and click/tap on OK.
> 
> `explorer shell:::{a6482830-08eb-41e2-84c1-73920c2badb9}`
> 
> **EXAMPLE: Separate Drives in Navigation Pane**  
> [![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-drives_in_navigation_pane.png](https://www.tenforums.com/attachments/tutorials/14553d1485950167t-add-remove-duplicate-drives-navigation-pane-windows-10-a-drives_in_navigation_pane.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-drives_in_navigation_pane.png")](https://www.tenforums.com/attachments/tutorials/14553d1426517167-add-remove-duplicate-drives-navigation-pane-windows-10-a-drives_in_navigation_pane.png)  
> [![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-show_all_folders_drives.png](https://www.tenforums.com/attachments/tutorials/14554d1485950167t-add-remove-duplicate-drives-navigation-pane-windows-10-a-show_all_folders_drives.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-show_all_folders_drives.png")](https://www.tenforums.com/attachments/tutorials/14554d1426517167-add-remove-duplicate-drives-navigation-pane-windows-10-a-show_all_folders_drives.png)
> 
> **Here's How:**
> 
> The downloadable .reg files below will add or remove the registry keys below.
> 
> `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\**{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}**   HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\**{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}**`
> 
>   
> 1 Do [**step 2**](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a.html#2) or [**step 3**](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a.html#3) below for what you would like to do.
> 
> 2 To Remove Drives from Navigation Pane
> 
> A) Click/tap on the Download button below to download the file below, and go to [**step 4**](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a.html#step4) below.
> 
> **Remove\_Drives\_from\_Navigation\_Pane.reg**
> 
> [Download](https://www.tenforums.com/attachments/tutorials/53189d1449895799-drives-navigation-pane-add-remove-windows-10-a-remove_drives_from_navigation_pane.reg)
> 
> 3 To Add Drives to Navigation Pane
> 
> This is the default setting.
> 
> A) Click/tap on the Download button below to download the 32-bit or 64-bit file below for your same [**32-bit or 64-bit Windows 10**](https://www.tenforums.com/tutorials/4399-see-if-system-type-32-bit-x86-64-bit-x64-windows-10-a.html), and go to [**step 4**](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a.html#step4) below.
> 
> **32-bit\_Add\_Drives\_to\_Navigation\_Pane.reg**
> 
> [Download](https://www.tenforums.com/attachments/tutorials/53187d1449895799-drives-navigation-pane-add-remove-windows-10-a-32-bit_add_drives_to_navigation_pane.reg)
> 
> OR
> 
> **64-bit\_Add\_Drives\_to\_Navigation\_Pane.reg**
> 
> [Download](https://www.tenforums.com/attachments/tutorials/53188d1449895799-drives-navigation-pane-add-remove-windows-10-a-64-bit_add_drives_to_navigation_pane.reg)
> 
> 4 Save the .reg file to your desktop.
> 
> 5 Double click/tap on the downloaded .reg file to merge it.
> 
> 6 When prompted, click/tap on **Run**, **Yes** (**[UAC](https://www.tenforums.com/tutorials/3577-change-user-account-control-uac-settings-windows-10-a.html)**), **Yes**, and **OK** to approve the merge.
> 
> 7 If the changes do not automatically get applied, then you can [**restart the explorer process**](https://www.tenforums.com/tutorials/5970-restart-explorer-exe-process-windows-10-a.html) or [**sign out**](https://www.tenforums.com/tutorials/7408-sign-out-windows-10-a.html) and [**sign in**](https://www.tenforums.com/tutorials/61963-sign-windows-10-a.html) to apply.
> 
> 8 You can now delete the downloaded .reg file if you like.
> 
> That's it,  
> Shawn
> 
> Related Tutorials
> 
> ___
> 
>   
> 
> -   [How to Hide Specified Drives in Windows](https://www.tenforums.com/tutorials/79149-hide-specified-drives-windows.html)
> -   [How to Show or Hide Navigation Pane in File Explorer in Windows 10](https://www.tenforums.com/tutorials/35310-navigation-pane-file-explorer-show-hide-windows-10-a.html)
> -   [How to Turn On or Off Navigation Pane 'Show all folders' in Windows 10](https://www.tenforums.com/tutorials/7078-navigation-pane-show-all-folders-turn-off-windows-10-a.html)
> -   [How to Add or Remove Dropbox in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/59830-dropbox-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Favorites in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/35873-favorites-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Google Drive in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/48991-google-drive-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Homegroup in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/4870-homegroup-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Libraries in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/4222-libraries-navigation-pane-hide-show-windows-10-a.html)
> -   [How to Add or Remove OneDrive from Navigation Pane in Windows 10](https://www.tenforums.com/tutorials/4818-onedrive-add-remove-navigation-pane-windows-10-a.html)
> -   [How to Add or Remove Network in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/4854-network-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove This PC in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/5352-pc-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Quick access in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/4844-quick-access-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove Recycle Bin in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/7299-recycle-bin-navigation-pane-add-remove-windows-10-a.html)
> -   [How to Add or Remove User Folder in Navigation Pane of File Explorer in Windows 10](https://www.tenforums.com/tutorials/88845-add-remove-user-folder-navigation-pane-windows-10-a.html)
> -   [How to Add or Remove Drives in Send to Context Menu in Windows 10](https://www.tenforums.com/tutorials/69524-send-context-menu-add-remove-drives-windows-10-a.html)
> -   [How to Reset Navigation Pane Expanded State in Windows 10 File Explorer](https://www.tenforums.com/tutorials/137201-reset-navigation-pane-expanded-state-windows-10-file-explorer.html)
> 
>   
> 
> -   [Windows 11 Tutorials](https://www.elevenforum.com/tutorials/)

  
3.  [![Jaxel](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAB00lEQVRoQ2PUsQv4zzCCAOOoh4d5bI/G8DCPYIbRGB6N4WEWAqNJephFKIZ3RmN4NIaHWQiMJulhFqGjhdZokh5N0jQOgS1LpzHIy0iCbemYNIdh6dqtNLVxwJP0qIdHY5i6KXw0SVM3PAmbNpqHR/Mw4VRCiorRPExKaFFD7WgeHs3D1EhHCDNG8zB1w5OwaaN5eCjn4Tl9jQwS4qLg7p+ufSDW6B5WMQzysLmxHtij7mFpDM9evsbwNLKHcQUK4YxBvAqaFlqT2ioZHK3NwK6ZuXAVw5R5yzFcdnrnCgYODnaGHz9+Mpi6RxDvcjJV0tTDHk42DN31xWCnvXz9liEuuxIllturCxh83OzB8rfuPmAITiok0xvEa6Oph0HOQE6yHz59Zrh5+z7Dtx8/GLTUlBnERYXhLqXH8A7IMpp72EhPi2FiawWDAB8vzmhYvm4bQ9vE2cRHEwUqae5hkNukgCV1RX4KSqyCYvvRk+cMi1dvZtix7wgFXiBNK108TJqTaKt61MO0Dd+BN300hgc+DmjrgtEYpm34DrzpozE88HFAWxeMxjBtw3fgTR+N4YGPA9q6YDSGaRu+A2/6aAwPfBzQ1gWjMUzb8B1400dcDAMAzqUPqJiRc2wAAAAASUVORK5CYII=)](https://www.tenforums.com/members/jaxel.html "Jaxel is offline")
    
       **New** 05 Aug 2015 [#1](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post318847.html#post318847)
    
    >   
    > What if I want to do the reverse? This tutorial removes individual drive sections, but leaves them in "This PC"... I would prefer to move all the drives to individual sections, and remove them from "This PC". Is this possible?
    
    ___
    
4.  [![Brink](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACTUlEQVRoQ+2YyyvEURTHj9cwsRjvLDyiPCJ2bBT/gJSdBZKyk8zGo9h67CaklAUiK5Q8V8qG8o7C5B3TUIxXGPK4U36N19zf/LjHz2/ObO89c87n+z33zrnjlT5f9Qwe9PEiYI27TQ5r3GAgh8lhjSlALa0xQz/hkMPksMYUoJbWmKF0aVFLU0srVGAkrRZi/MO50Va7DawPFzB+tgj9JzPc/T/dIKyl5QI7A8xdmaF8q+OnTC7jUYCnbetfFqH30UHcaxdE6gzS+ujZAtTt9gmDRgHOWDC6BKiJLoDCiGzHnrsnO2Qt1WgbmNH1JldCemCsA7T5cEjYeVaFwwzSlFAGuYZUAv7t3laFw1G6YBhIMYLBNxBsjzeQs1L/25zS9/0pMAMtCMuC/NBM6abutExB+/HE/waWUz27nXus00JhWR0oDssFnr00Q9PhIFjs53JCFO1BAf5u8GAVx+sj3o2gbNQs2WwVBo0CzBs82FnuTqqQzvHqzT4UbZgUOcgLUgUwK5JBD6dWQ4C3zlFz6WYbLF7v8Op3e101wB+nLVG3taqAnactdu4rt7vcdpAXoCpg53la8w571BlmsC3xxdJr6eD+FPLWGnndqWgdpaVd/Q6H+AVBoj5Kup3ZxNWwNwCT58uKgHhBKMC8It7WGazpaFTYW1gVoyV7HZ28/olnvrVA69GYsAnrTVRhDst1FXsfAWMrjp2PHMZWHDsfOYytOHY+chhbcex85DC24tj5yGFsxbHzkcPYimPnI4exFcfORw5jK46dz+McfgHpAmYkUT8LLAAAAABJRU5ErkJggg==)](https://www.tenforums.com/members/brink.html "Brink is online now")
    
       **New** 05 Aug 2015 [#2](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post318858.html#post318858)
    
    >   
    > I'll add it to my list of to look intos, and will post back when able.
    > 
    > UPDATE: Doesn't seem possible without hiding the drive everywhere.
    
    > Last edited by Brink; 14 Aug 2015 at 11:51.
    
    ___
    

6.  [![Nubble](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAABpklEQVRoQ+2Y2W6DMBBFh50Aqfr/39gHoiTshDJWkJChhFaOZG6HxwisOXNuxhjnK78M9I8uR4DBbYthcMEkhsUwWAck0mBCFzhiWAyDdUAiDSZUhpZEWiL9hw6ck4TCwFdP9o8H5dfbrlXiMKT0FKt7m7aja1Hseu43N70l0nNgLqZuW7oV5cu6YICHYVC22q7fhIYB3httKOA90YYA5uEzDbBX0YYAvpeVAg7859Tue8pv99X/Mgxw03X0maXkOI4CLeuaiqpeQMMAV01DcxiONlt+jHv0/IICZrCPNNmMNhyw67qb0YYDZstJHNEpilSS9WhDAjMoDzDP8xR0N07ty3NqwwLr0eatSx9shz08TDD6HrQW7XDcqw9/WvoJWI92O+7VbBUaOPA94qPk9EIyfw2Fi/QU8Sw5URQEi7cuWGAV7XNG3rhHzy9oYD3aDA4NzIB6tOGB9WgfCnj1sGvJj2/5amkJ22oZAmyzHRO1iWETXbR5DTFssx0TtYlhE120eQ0xbLMdE7WJYRNdtHkNMWyzHRO1iWETXbR5DTFssx0TtX0DNmE3KwAujZUAAAAASUVORK5CYII=)](https://www.tenforums.com/members/nubble.html "Nubble is offline")
    
       **New** 14 Oct 2015 [#3](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post426669.html#post426669)
    
    >   
    > Worked flawlessly when I ran this a few weeks ago .... interestingly cumulative update KB3097617 restored this key. Removed the key and all is good again.
    > 
    > KB3097617 seems to be affecting (restoring registry keys) for other File Explorer tweaks too...
    
    ___
    
7.  [![Brink](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACTUlEQVRoQ+2YyyvEURTHj9cwsRjvLDyiPCJ2bBT/gJSdBZKyk8zGo9h67CaklAUiK5Q8V8qG8o7C5B3TUIxXGPK4U36N19zf/LjHz2/ObO89c87n+z33zrnjlT5f9Qwe9PEiYI27TQ5r3GAgh8lhjSlALa0xQz/hkMPksMYUoJbWmKF0aVFLU0srVGAkrRZi/MO50Va7DawPFzB+tgj9JzPc/T/dIKyl5QI7A8xdmaF8q+OnTC7jUYCnbetfFqH30UHcaxdE6gzS+ujZAtTt9gmDRgHOWDC6BKiJLoDCiGzHnrsnO2Qt1WgbmNH1JldCemCsA7T5cEjYeVaFwwzSlFAGuYZUAv7t3laFw1G6YBhIMYLBNxBsjzeQs1L/25zS9/0pMAMtCMuC/NBM6abutExB+/HE/waWUz27nXus00JhWR0oDssFnr00Q9PhIFjs53JCFO1BAf5u8GAVx+sj3o2gbNQs2WwVBo0CzBs82FnuTqqQzvHqzT4UbZgUOcgLUgUwK5JBD6dWQ4C3zlFz6WYbLF7v8Op3e101wB+nLVG3taqAnactdu4rt7vcdpAXoCpg53la8w571BlmsC3xxdJr6eD+FPLWGnndqWgdpaVd/Q6H+AVBoj5Kup3ZxNWwNwCT58uKgHhBKMC8It7WGazpaFTYW1gVoyV7HZ28/olnvrVA69GYsAnrTVRhDst1FXsfAWMrjp2PHMZWHDsfOYytOHY+chhbcex85DC24tj5yGFsxbHzkcPYimPnI4exFcfORw5jK46dz+McfgHpAmYkUT8LLAAAAABJRU5ErkJggg==)](https://www.tenforums.com/members/brink.html "Brink is online now")
    
       **New** 14 Oct 2015 [#4](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post426693.html#post426693)
    
    >   
    > Yeah, it's always nice when an update resets everything to default. Thank you for the heads up. :)
    
    ___
    

9.  [![Hemimax](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAABOElEQVRoQ+2XMQoCQQxFZxsbC8FarLWy9Aoewht4AyuP4xWsPIK1jWC9YKetgiwoiGsSMpAdn/Xkm/z3J8xW083unv7oVzFw4bQhXDjgBGEIF+YAkS4M6Mc4EIZwYQ4Q6cKAsrSINJE2OLCcj9N6MXlW7o91Wm0PIhVrnUi8OZQl0tbGrXUM3OIAhDXx+HbWGk1rnaZnCGvcgnDjgDWa1joNJCKtcUsSaaue5sGi+Y/shDXNvJ/t7MDnyy2d6qto7mG/l2ajgfpJKhLnaamx6cdZ67a11mlaz36HNXeRgYWflRDma+nlAHdYcx8kLy2WVoujbOmubGmPa5FLI8vSytWshy4De7gYWQPCkel49AZhDxcja0A4Mh2P3iDs4WJkDQhHpuPRG4Q9XIysAeHIdDx6g7CHi5E1HqEkiwhjuwIqAAAAAElFTkSuQmCC)](https://www.tenforums.com/members/hemimax.html "Hemimax is offline")
    
       **New** 21 Nov 2015 [#5](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post474373.html#post474373)
    
    >   
    > Windows Update restored my key to. Thanks again for your registry edit to fix it.
    
    ___
    
10.  [![merowland01](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACHklEQVRoQ+2Yvy9DURTHT/0qlRCif4GhQwejpYvFxEBIjERiIhITCRMJk5BYWKwGPwYmS5cuRkOHDg0b0YZo4mm1VbkveS+nt7ftkTSRc52u79z2fs/n8+69vYGniVgF/tEnIIEtpy2ELQcMQlgIW9YBUdoyoDVxhLAQtqwDorRlQGXREqVF6V90IDQ5A31Lq1UjXteX4St5T/6W8OkltA+F/frcySE41+fk8c0KW6q0KfBn/Bbe97ebzcN93hUdgcG9o6padoHL2QxkFqZJgfvXtqBnbJxn4EohD4Fgtzt5qtaezngsG8LFVBI6I1E3MEVrrDMeyyZw4S4BHcMRdwGiaO3prGpL6RQER2Nus1gF/nYc/51sprWns7KhLRTiGfjj6sxfdRtpjXVWjemdmuMZ+G1nAzxyjbTGOqsVfWBzl29gvNXU0xrrrPZs1oGxriatdZ3VqYx1YLXSegRLj2nIrsxXHSx0ndVD9oGx1pnFWSi/PPuhdZ2tCIy1dW4uIHd8UHN2xu83e8L1tDbpbAVhFcKktUlnawLrWucTcf9Qom9XViita118SLvHTtOBxJrAWGsVVP2xwIuYt3RbE9h0o6FvU9a8wx49fGdlOohYFxhrbdKZVWDSxdUfF7X01vKPs5B+XgKT2sS4SAgzhkeauhAmtYlxkRBmDI80dSFMahPjIiHMGB5p6kKY1CbGRUKYMTzS1IUwqU2Mi34AQe9UIwkpEmwAAAAASUVORK5CYII=)](https://www.tenforums.com/members/merowland01.html "merowland01 is offline")
    
       **New** 21 Nov 2015 [#6](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post474733.html#post474733)
    
    ## After update to 10.0.10586 (Nov update), removable drives show up agai
    
    >   
    > I just upgraded from 10.0.10240 to 10.0.10586 and the double drive problem shows up again. I looked in the registry and the "HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace\\DelegateFol ders\\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}" is still there with a value of "Removable Drives".
    > 
    > Here is a picture of "{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}":
    > 
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-windowsremovabledrivesstilldoubled.jpg](https://www.tenforums.com/attachments/tutorials/49706-add-remove-duplicate-drives-navigation-pane-windows-10-a-windowsremovabledrivesstilldoubled.jpg "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-windowsremovabledrivesstilldoubled.jpg")
    > 
    > HKEY\_CLASSES\_ROOT\\CLSID\\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}\\InProcServer32  
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_29_233.png](https://www.tenforums.com/attachments/tutorials/49709-add-remove-duplicate-drives-navigation-pane-windows-10-a-2015_11_21_16_29_233.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_29_233.png")  
    > HKEY\_CLASSES\_ROOT\\CLSID\\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}\\Instance  
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_31_074.png](https://www.tenforums.com/attachments/tutorials/49711-add-remove-duplicate-drives-navigation-pane-windows-10-a-2015_11_21_16_31_074.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_31_074.png")  
    > HKEY\_CLASSES\_ROOT\\CLSID\\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}\\Instance\\InitPropertyBag  
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_32_165.png](https://www.tenforums.com/attachments/tutorials/49713-add-remove-duplicate-drives-navigation-pane-windows-10-a-2015_11_21_16_32_165.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_32_165.png")
    > 
    > HKEY\_CLASSES\_ROOT\\CLSID\\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}\\ShellFolder  
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_34_076.png](https://www.tenforums.com/attachments/tutorials/49714-add-remove-duplicate-drives-navigation-pane-windows-10-a-2015_11_21_16_34_076.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_21_16_34_076.png")  
    > Are we back to square 1? Please tell me I did something wrong cause I hate seeing those doubled up removable drives. lol
    
    ___
    
11.  [![Brink](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACTUlEQVRoQ+2YyyvEURTHj9cwsRjvLDyiPCJ2bBT/gJSdBZKyk8zGo9h67CaklAUiK5Q8V8qG8o7C5B3TUIxXGPK4U36N19zf/LjHz2/ObO89c87n+z33zrnjlT5f9Qwe9PEiYI27TQ5r3GAgh8lhjSlALa0xQz/hkMPksMYUoJbWmKF0aVFLU0srVGAkrRZi/MO50Va7DawPFzB+tgj9JzPc/T/dIKyl5QI7A8xdmaF8q+OnTC7jUYCnbetfFqH30UHcaxdE6gzS+ujZAtTt9gmDRgHOWDC6BKiJLoDCiGzHnrsnO2Qt1WgbmNH1JldCemCsA7T5cEjYeVaFwwzSlFAGuYZUAv7t3laFw1G6YBhIMYLBNxBsjzeQs1L/25zS9/0pMAMtCMuC/NBM6abutExB+/HE/waWUz27nXus00JhWR0oDssFnr00Q9PhIFjs53JCFO1BAf5u8GAVx+sj3o2gbNQs2WwVBo0CzBs82FnuTqqQzvHqzT4UbZgUOcgLUgUwK5JBD6dWQ4C3zlFz6WYbLF7v8Op3e101wB+nLVG3taqAnactdu4rt7vcdpAXoCpg53la8w571BlmsC3xxdJr6eD+FPLWGnndqWgdpaVd/Q6H+AVBoj5Kup3ZxNWwNwCT58uKgHhBKMC8It7WGazpaFTYW1gVoyV7HZ28/olnvrVA69GYsAnrTVRhDst1FXsfAWMrjp2PHMZWHDsfOYytOHY+chhbcex85DC24tj5yGFsxbHzkcPYimPnI4exFcfORw5jK46dz+McfgHpAmYkUT8LLAAAAABJRU5ErkJggg==)](https://www.tenforums.com/members/brink.html "Brink is online now")
    
       **New** 21 Nov 2015 [#7](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post474745.html#post474745)
    
    >   
    > Hello Merowland01, and welcome to Ten Forums. :)
    > 
    > It's ok. The upgrade to 10.0.10586 resets this back to default. You will just need to do the tutorial again to remove the drives.
    
    ___
    
12.  [![merowland01](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACHklEQVRoQ+2Yvy9DURTHT/0qlRCif4GhQwejpYvFxEBIjERiIhITCRMJk5BYWKwGPwYmS5cuRkOHDg0b0YZo4mm1VbkveS+nt7ftkTSRc52u79z2fs/n8+69vYGniVgF/tEnIIEtpy2ELQcMQlgIW9YBUdoyoDVxhLAQtqwDorRlQGXREqVF6V90IDQ5A31Lq1UjXteX4St5T/6W8OkltA+F/frcySE41+fk8c0KW6q0KfBn/Bbe97ebzcN93hUdgcG9o6padoHL2QxkFqZJgfvXtqBnbJxn4EohD4Fgtzt5qtaezngsG8LFVBI6I1E3MEVrrDMeyyZw4S4BHcMRdwGiaO3prGpL6RQER2Nus1gF/nYc/51sprWns7KhLRTiGfjj6sxfdRtpjXVWjemdmuMZ+G1nAzxyjbTGOqsVfWBzl29gvNXU0xrrrPZs1oGxriatdZ3VqYx1YLXSegRLj2nIrsxXHSx0ndVD9oGx1pnFWSi/PPuhdZ2tCIy1dW4uIHd8UHN2xu83e8L1tDbpbAVhFcKktUlnawLrWucTcf9Qom9XViita118SLvHTtOBxJrAWGsVVP2xwIuYt3RbE9h0o6FvU9a8wx49fGdlOohYFxhrbdKZVWDSxdUfF7X01vKPs5B+XgKT2sS4SAgzhkeauhAmtYlxkRBmDI80dSFMahPjIiHMGB5p6kKY1CbGRUKYMTzS1IUwqU2Mi34AQe9UIwkpEmwAAAAASUVORK5CYII=)](https://www.tenforums.com/members/merowland01.html "merowland01 is offline")
    
       **New** 22 Nov 2015 [#8](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post476450.html#post476450)
    
    ## Got unexpected results when running tutorial in 10.0.10586
    
    >   
    > When I reran the tutorial, I didn't see the patch installed correctly: See link below:
    > 
    > ![Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_22_20_21_471.png](https://www.tenforums.com/attachments/tutorials/49991-add-remove-duplicate-drives-navigation-pane-windows-10-a-2015_11_22_20_21_471.png "Add or Remove Duplicate Drives in Navigation Pane in Windows 10-2015_11_22_20_21_471.png")
    > 
    > Is this correct?
    
    ___
    
13.  [![Brink](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAACTUlEQVRoQ+2YyyvEURTHj9cwsRjvLDyiPCJ2bBT/gJSdBZKyk8zGo9h67CaklAUiK5Q8V8qG8o7C5B3TUIxXGPK4U36N19zf/LjHz2/ObO89c87n+z33zrnjlT5f9Qwe9PEiYI27TQ5r3GAgh8lhjSlALa0xQz/hkMPksMYUoJbWmKF0aVFLU0srVGAkrRZi/MO50Va7DawPFzB+tgj9JzPc/T/dIKyl5QI7A8xdmaF8q+OnTC7jUYCnbetfFqH30UHcaxdE6gzS+ujZAtTt9gmDRgHOWDC6BKiJLoDCiGzHnrsnO2Qt1WgbmNH1JldCemCsA7T5cEjYeVaFwwzSlFAGuYZUAv7t3laFw1G6YBhIMYLBNxBsjzeQs1L/25zS9/0pMAMtCMuC/NBM6abutExB+/HE/waWUz27nXus00JhWR0oDssFnr00Q9PhIFjs53JCFO1BAf5u8GAVx+sj3o2gbNQs2WwVBo0CzBs82FnuTqqQzvHqzT4UbZgUOcgLUgUwK5JBD6dWQ4C3zlFz6WYbLF7v8Op3e101wB+nLVG3taqAnactdu4rt7vcdpAXoCpg53la8w571BlmsC3xxdJr6eD+FPLWGnndqWgdpaVd/Q6H+AVBoj5Kup3ZxNWwNwCT58uKgHhBKMC8It7WGazpaFTYW1gVoyV7HZ28/olnvrVA69GYsAnrTVRhDst1FXsfAWMrjp2PHMZWHDsfOYytOHY+chhbcex85DC24tj5yGFsxbHzkcPYimPnI4exFcfORw5jK46dz+McfgHpAmYkUT8LLAAAAABJRU5ErkJggg==)](https://www.tenforums.com/members/brink.html "Brink is online now")
    
       **New** 22 Nov 2015 [#9](https://www.tenforums.com/tutorials/4675-add-remove-duplicate-drives-navigation-pane-windows-10-a-post476455.html#post476455)
    
    >   
    > merrowland,
    > 
    > Nope, it didn't get successfully merged.
    > 
    > Were you able to approve all prompts to merge the .reg file?
    > 
    > Are you currently signed in to an [administrator account](https://www.tenforums.com/tutorials/21680-account-type-determine-windows-10-a.html)?
    
    ___
