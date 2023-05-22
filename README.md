# TLS_MTLS

## Certificates
Certificate Authority (CA)
SystemA 
SystemB
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

For Example: 
__> ISSUER => CertificateAuthorityA
|
|_____> SystemA => CertificateSystemA

This will show a chains of certificates that the Certificate System A has. Issuer will be acting as a verifier if the browser/computer TrustStore has a record of the CA Public Certificate.

