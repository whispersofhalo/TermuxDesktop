## PROOT-DISTRO (🍥 DEBIAN)
* 🏁 [İlk adımlar](#ilk-adımlar)
* ⚙️ [Masaüstü Kurulumları](#masaüstü-kurulumları)
* 💻 [Termux X11 ile kullanmak için Masaüstlerini Çalıştırma](#masaüstlerini-çalıştırma)
* ⬇️ [Masaüstlerini çalıştırmak için komut dosyalarını indirin](#kolay-indirme)


## 🏁 İlk adımlar <a name=ilk-adımlar></a>
Android cihazlarımızda tam bir Linux Masaüstü'ne sahip olmak için Termux ve Termux X11'i kullanacağız.


# proot-distro ile Termux'a Linux Dağıtımı nasıl kurulur (Root gerekmez)

 

1. Termux'u açın
2. proot-distro'yu yükleyin  
```
pkg update
pkg install proot-distro
```
3. Debian'ı yükleyin
```
proot-distro install debian
```
4 Dağıtımına giriş yapın 
```
proot-distro login debian
```
</details>


# [Komutlar ]sudo ayrıcalıklarına sahip bir kullanıcı oluşturun



1. Gerekli paketleri yükleyin
```
apt update -y
apt install sudo nano adduser -y
```
2. Bir kullanıcı oluşturun
```
adduser whispersofhalo
```
3. Kullanıcıya sudo ayrıcalıkları verin
```
nano /etc/sudoers
```
Aşağıdaki satırı dosyaynın içinde ki (root ALL=(ALL:ALL) ALL) altına ekleyin
```
whispersofhalo ALL=(ALL:ALL) ALL
```
4. Sudo komutlarını çalıştırabildiğinizi kontrol edin (`root` sonucunu vermelidir)
```
sudo whoami 
```  

</details>  

---  
<br>

# ⚙️ Masaüstü Ortamlarını Yükleme <a name=masaüstü-kurulumları></a> 

* XFCE4'ü yükleme
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install xfce4
```

* LXDE nasıl kurulur?
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install lxde
```

* Cinnamon nasıl kurulur?
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install cinnamon -y
```

* GNOME nasıl kurulur
```
proot-distro login debian --user whispersofhalo
```
```
sudo apt install dbus-x11 nano gnome gnome-shell gnome-terminal gnome-tweaks gnome-software nautilus gnome-shell-extension-manager gedit tigervnc-tools gnupg2 -y
```
```
for file in $(find /usr -type f -iname “*login1*”); do rm -rf $file
done
```

* KDE Plasma'yı yükleme - Performans sorunları nedeniyle önerilmez (KDE Plasma daha fazla kaynak gerektirir)
``` 
proot-distro login debian --user whispersofhalo
```
```
sudo apt install kde-plasma-desktop
```

---  
<br>

## 💻 Termux X11 ile kullanmak için Masaüstlerini Çalıştırma <a name=masaüstlerini-çalıştırma></a>
Bu depodaki tüm komut dosyaları, farklı Masaüstlerini sesli olarak kolay bir şekilde çalıştırmak için hazırlanmıştır. 

Öncelikle Termux'a aşağıdaki paketleri yüklemeniz gerekir: 
```
pkg update
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
pkg install wget
```

## ⬇️ Komut dosyalarını kolayca indirin: <a name=kolay-indirme></a> 

> [!NOTE]  
> Varsayılan olarak bu komut dosyası “whispersofhalo” kullanıcısıyla çalışır. Proot-distro'da farklı bir isimle kullanıcı oluşturursanız, komut dosyalarının içindeki “whispersofhalo” yazan yeri değiştirin.

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

Ardından, yüklediğiniz Masaüstü'ye karşılık gelen komut dosyasını indirmeniz, onu çalıştırma izni vermeniz ve çalıştırmanız yeterlidir (proot-distro'da değil, Termux'ta): 
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

# 📱 Sosyal Medya ve İletişim 📬
Bağlantıda kalın ve güncellemeleri alın:

- [GitHub](https://github.com/WhispersOfHalo)

- [Instagram](https://www.instagram.com/whispersofhalo)

- [Linktree](https://linktr.ee/whispersofhalo)

Sorularınız, geri bildirimleriniz veya işbirliği yapmak istiyorsanız lütfen bizimle iletişime geçin!
