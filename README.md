## PROOT-DISTRO (🍥 DEBIAN)
* 🏁 [First steps](#first-steps)
* ⚙️ [Installing Desktops](#installing-desktops)
* 💻 [Running the Desktops to use them with Termux X11](#running-desktops)
* ⬇️ [Download scripts to run the desktops](#easy-download)


## 🏁 First steps <a name=first-steps></a>
We are going to use Termux and Termux X11 in order to have a full Linux Desktop in our Android devices. 


# Links

Termux [https://github.com/termux/termux-app/releases/download/v0.118.3/termux-app_v0.118.3+github-debug_arm64-v8a.apk]

Termux x11 [https://github.com/termux/termux-x11/releases/download/nightly/app-arm64-v8a-debug.apk]


# How to install a Linux Distro on Termux with proot-distro (No Root)

 

1. Open Termux
2. Install proot-distro  
```
pkg update
pkg install proot-distro
```
3. Install Debian
```
proot-distro install debian
```
4 Log in to the distro 
```
proot-distro login debian
```
</details>


# [Commands]Create an user with sudo privileges



1. Install needed packages
```
apt update -y
apt install sudo nano adduser -y
```
2. Create an user
```
adduser whispersofhalo
```
3. Give the user sudo privileges
```
nano /etc/sudoers
```
Add the following line below (root ALL=(ALL:ALL) ALL) in the file
```
whispersofhalo ALL=(ALL:ALL) ALL
```
4. Check you can execute sudo commands (it should return `root`)
```
sudo whoami 
```  

</details>  

---  
<br>

# ⚙️ Installing Desktops <a name=installing-desktops></a> 

* How to install XFCE4
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install xfce4
```

* How to install LXDE
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install lxde
```

* How to install Cinnamon
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install cinnamon -y
```

* How to install GNOME
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install dbus-x11 nano gnome gnome-shell gnome-terminal gnome-tweaks gnome-software nautilus gnome-shell-extension-manager gedit tigervnc-tools gnupg2 -y
```
```
for file in $(find /usr -type f -iname "*login1*"); do rm -rf $file
done
```

* How to install KDE Plasma - Not recommended due to performance issues (KDE Plasma requires more resources)
``` 
proot-distro login debian --user whispersofhalo
```
```
sudo apt install kde-plasma-desktop
```

---  
<br>

## 💻 Running the Desktops for use with Termux X11 <a name=running-desktops></a>
All the scripts in this repository are prepared to run the different Desktops with audio in an easy way. 

First you need to install the following packages in Termux: 
```
pkg update
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
pkg install wget
```

## ⬇️ Download scripts easily: <a name=easy-download></a> 

> [!NOTE]  
> By default this script works with the user "whispersofhalo". If you create a user with a different name in proot-distro, please change where it says "whispersofhalo" inside the scripts.

* startgnome_debian.sh
```
wget https://raw.githubusercontent.com/whispersofhalo/TermuxDesktop/refs/heads/main/startgnome_debian.sh
```

* startxfce4_debian.sh
```
wget https://raw.githubusercontent.com/whispersofhalo/TermuxDesktop/refs/heads/main/startxfce4_debian.sh
```

* startlxde_debian.sh
```
wget https://raw.githubusercontent.com/whispersofhalo/TermuxDesktop/refs/heads/main/startlxde_debian.sh
```

* startcinnamon_debian.sh
```
wget https://raw.githubusercontent.com/whispersofhalo/TermuxDesktop/refs/heads/main/startcinnamon_debian.sh
```

* startkde_debian.sh
```
wget https://raw.githubusercontent.com/whispersofhalo/TermuxDesktop/refs/heads/main/startkde_debain.sh
```
---  
<br>

Then, you just need to download the script corresponding to the Desktop you have installaded, give it permissions to execute it and run it (in Termux, not in proot-distro): 
* startgnome_debian.sh
```
chmod +x startgnome_debian.sh
./startgnome_debian.sh
```
* startxfce4_debian.sh
```
chmod +x startxfce4_debian.sh
./startxfce4_debian.sh
```
* startlxde_debian.sh
```
chmod +x startlxde_debian.sh
./startxlxde_debian.sh
```
* startcinnamon_debian.sh
```
chmod +x startcinnamon_debian.sh
./startcinnamon_debian.sh
```
* startkde_debian.sh
```
chmod +x startkde_debian.sh
./startkde_debian.sh
```
---  
<br>


# 📱 Social Media & Contact 📬
Stay connected and get updates:

- [GitHub](https://github.com/WhispersOfHalo)

- [Instagram](https://www.instagram.com/whispersofhalo)

- [Linktree](https://linktr.ee/whispersofhalo)

Feel free to reach out if you have questions, feedback, or want to collaborate!
