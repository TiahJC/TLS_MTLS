openssl req -new x509 -days 1096 -config RootCA.cnf -keyout RootCA.key -out RootCA.pem

openssl genrsa -out SysA.key 4096

openssl req -new -config SysA.cnf -key SysA.key -out SysA.csr

openssl x509 -req -extensions v3_ext -extfile ldap.cnf -passin "pass:changeme" -in SysA.csr -CA RootCA.pem -CAkey RootCA.key -days 1096 -CAcreateserial -out SysA.pem

openssl req -new x509 -days 1096 -config RootCA.cnf -keyout RootCA2.key -out RootCA2.pem

openssl genrsa -out SysB.key 4096

openssl req -new -config SysB.cnf -key SysB.key -out SysB.csr

openssl x509 -req -extensions v3_ext -extfile ldap.cnf -passin "pass:changeme" -in SysB.csr -CA RootCA2.pem -CAkey RootCA2.key -days 1096 -CAcreateserial -out SysB.pem
