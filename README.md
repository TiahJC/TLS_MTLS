# TLS_MTLS

## Example System 

1. Certificate Authority (CA)
2. SystemA
3. SystemB

## Certificates


CA

-> Private Key (CAkey.key)

-> Public Key   (CACert.pem)

System A and B 

-> Private Key (SysA.key SysB.key)

-> Public Key (SysCertA.pem SysCertB.pem)



## TLS Explanation
TLS consist of creating certificates for application/browser to communicate securely. 
TLS will enable a HTTPs connection.
TLS consist of Certificate Authority, Private Key and Public Key 
If you are using a Certificate Authority Issued, you will only need 2 keys.
### Firstly What is Certificate Authority?
Lets straight jump to what does Certificate Authority do?
#### 1. It can be used to sign certificates of other system.
#### 2. It can be used to verify certificates they have been signed.
#### 3. Certificates has a certain chains.

From the 3 pointers, lets continue to explain what they actually means. 
Certificates has a chains. Certificate Authority is also called a Issuer from the 1st Pointer. 

## How does TLS actually works?
Each System has their either Private Keys and Public Keys OR KeyStore and TrustStore.
KeyStore and TrustStore are JKS bundled keys, do the googling and search JKS KeyStore TrustStore Difference

Private Keys is to identity themselves and acts as a Decryptor
Public Key is to act as a certificates to a system and acts as an Encryptor

*Insert Photo Here PowerPoint Drawn SysA->SysB TLS only*

There SysA will send it's Public key OR Certificate Authority ( CA ) that created SysA Certificate to SysB by any means. 
After, when SysB wants to access SysA Website or System, SysA will send an encrypted code to verify if SysB has a copy of either CA? or SysCertA.pem

## How does the "m" of mTLS means?
Mutual TLS is what m stands for, exactly to what mutual means, Both System have to do both actions of TLS to one another. 
In Short, 
  1. SysA verify SysB
  2. SysB verify SysA 
Any form of error would cause Termination of connection between both system. 

========================================================================================================================================================

