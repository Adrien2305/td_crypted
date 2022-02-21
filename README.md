# TP3_Crypt/Decrypt
## --------------------------------------------------------------------------------------
## Installer le module Crypto
```sh
sudo apt-get install python3-crypto
```

## Create 3 folders
- Ressources
- Src
- Results
## Folder Ressources
```sh
nano toto.txt / write text inside
```
## Folder Src
- crypt.py
- decrypt.py
- generate.py

## Folder Results
- crypted.txt
- decrypted.txt

## Excecution
```sh
- To crypt
python3 ../ressources/toto.txt ../results/crypted.txt
```
```sh
- To decrypt
python3 ../results/crypted.txt ../results/decrypted.txt
```
## encrypt.service/decrypt.service 

```sh
cp (encrypt.service/decrypt.service) in /etc/systemd/system ......one at a time
```
```sh
sudo systemctl daemon-reload
sudo systemctl enable encrypt/decrypt.service
sudo systemctl start encrypt/decrypt.service
sudo systemctl status encrypt/decrypt.service
```
## Install
To install these services, type the following commands in a terminal:
```sh
git clone https://github.com/Adrien2305/td_crypted.git
cd /Documents/TP3/td_crypted
./install.sh
```
## Uninstall
```sh
cd /Documents/TP3/td_crypted
./uninstall.sh
```

  
