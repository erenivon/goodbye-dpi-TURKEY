@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)

echo Bu batch dosyasını yönetici olarak çalıştırmanız gerekmektedir.
echo Sağ tık - Yönetici Olarak Çalıştır.
echo Eğer yönetici olarak çalıştırdıysanız herhangi bir tuşa basın.
pause
sc stop "GoodbyeDPI"
sc delete "GoodbyeDPI"
sc create "GoodbyeDPI" binPath= "\"%CD%\%_arch%\goodbyedpi.exe\" -5 --set-ttl 5 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253" start= "auto"
sc description "GoodbyeDPI" "Türkiye için DNS zorlamasını kaldırır."

POPD
