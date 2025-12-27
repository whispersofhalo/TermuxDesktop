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
proot-distro login debian --user whispersofh

Translated with DeepL.com (free version)
