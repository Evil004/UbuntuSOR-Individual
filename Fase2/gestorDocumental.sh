#!/bin/bash

cd /publico

mkdir ./DocsInformatica
mkdir ./DocsCyP
mkdir ./DocsEnfermeria
mkdir ./DocsAlergologia

chmod 777 ./Docs*

setfacl -m g:3000025:5 ./Docs*
setfacl -m other:0 ./Docs*

setfacl -d -m g:3000024:7 ./DocsInformatica
setfacl -d -m g:3000026:7 ./DocsCyP
setfacl -d -m g:3000027:7 ./DocsEnfermeria
setfacl -d -m g:3000028:7 ./DocsAlergologia

setfacl -m g:3000024:7 ./DocsInformatica
setfacl -m g:3000026:7 ./DocsCyP
setfacl -m g:3000027:7 ./DocsEnfermeria
setfacl -m g:3000028:7 ./DocsAlergologia

echo "[DocsInformatica]">>/etc/samba/smb.conf
echo "path=/publico/DocsInformatica">>/etc/samba/smb.conf
echo "read only=no">>/etc/samba/smb.conf
echo "">>/etc/samba/smb.conf
echo "[DocsCyP]">>/etc/samba/smb.conf
echo "path=/publico/DocsCyP">>/etc/samba/smb.conf
echo "read only=no">>/etc/samba/smb.conf
echo "">>/etc/samba/smb.conf
echo "[DocsAlergologia]">>/etc/samba/smb.conf
echo "path=/publico/DocsAlergologia">>/etc/samba/smb.conf
echo "read only=no">>/etc/samba/smb.conf
echo "">>/etc/samba/smb.conf
echo "[DocsEnfermeria]">>/etc/samba/smb.conf
echo "path=/publico/DocsEnfermeria">>/etc/samba/smb.conf
echo "read only=no">>/etc/samba/smb.conf
