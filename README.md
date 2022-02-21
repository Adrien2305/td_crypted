# td_crypted
# TP3_Crypt/Decrypt
## ---------------------------------------------------------------------------------------------------
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
- crypted.py
- decrypted.py

## Source code Src
```sh
crypt.py
```
```sh

from Crypto.PublicKey import RSA

import os


def encrypted_func(filename,fileloc):


    with open('public.pem','r') as fp:

        pub = fp.read()

        fp.close()
            


            
    public = RSA.importKey(pub)


    #chiffrage
    public_key = public.publickey()

        	
    with open(filename, "rb") as file:

        #read all file data
        
        file_data = file.read()
        

    #encrypt data
    encrypted_data = public_key.encrypt(file_data,len(file_data))
    print(encrypted_data)
   
    #write the encrypted file
    with open(fileloc, "wb") as file:

        file.write(encrypted_data[0])


if __name__ == "__main__":

    import argparse

    parser = argparse.ArgumentParser(description="Simple File Encryptor Script")
    
    parser.add_argument("filen", help="File to encrypt")

    parser.add_argument("fileloc", help="File where to store encrypt file")


    args = parser.parse_args()
    
    filen = args.filen
    fileloc = args.fileloc

    encrypted_func(filen,fileloc)
```
## ----------------------------------------------------------------------------------------------------
```sh
decrypt.py
```
```sh

from Crypto.PublicKey import RSA

import os


def decrypt_func(filename,fileloc):


    with open('private.pem','r') as fp:

        priv = fp.read()

        fp.close()
            


            
    privat = RSA.importKey(priv) 
    

        	
    with open(filename, "rb") as file:

        #read all file data
        
        file_data = file.read()
        

    #encrypt data
    decrypted_data = privat.decrypt(file_data)
    decrypted_data = decrypted_data.decode('utf-8')
    print(decrypted_data)
   
    #write the encrypted file
    with open(fileloc, "w") as file:

        file.write(decrypted_data)


if __name__ == "__main__":

    import argparse

    parser = argparse.ArgumentParser(description="Simple File Encryptor Script")
    
    parser.add_argument("filen", help="File to encrypt")

    parser.add_argument("fileloc", help="File to decrypt")

    args = parser.parse_args()
    
    filen = args.filen

    fileloc = args.fileloc
    

    decrypt_func(filen,fileloc)
```
## ----------------------------------------------------------------------------------------------------
```sh
generate.py
```
```sh
from Crypto.PublicKey import RSA

key = RSA.generate(1024)


#afficher ses clés:
k = key.exportKey('PEM')
p = key.publickey().exportKey('PEM')

#sauvegarder ses clés dans des fichiers:
with open('private.pem','w') as kf:
        kf.write(k.decode())
        kf.close()

with open('public.pem','w') as pf:
        pf.write(p.decode())
        pf.close()
```
## ----------------------------------------------------------------------------------------------------
 
## Allow Excution to generate.py   
```sh
chmod +x generate.py
python3 generate.py
```  
## cryption
```sh
python3 ../ressources/toto.txt ../results/crypted.txt
```  
## decryption
```sh
python3 ../results/crypted.txt ../results/decrypted.txt
``` 
