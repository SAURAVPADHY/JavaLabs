Set-ExecutionPolicy bypass
Import-PfxCertificate -FilePath "D:\iis.pfx" -CertStoreLocation Cert:\LocalMachine\My -Password (ConvertTo-SecureString -String "Plants@12345" -Force -AsPlainText)
New-WebBinding -Name "AppGW" -IPAddress "*" -Port 443 -HostHeader "www.pinku.quest" -Protocol https
(Get-WebBinding -Name "AppGW" -Port 443 -Protocol "https").AddSslCertificate("AC9C761432E92E67ECC46AE09B3CCE420C41F756", "my")




