@ECHO OFF
echo Bu batch dosyasını yönetici olarak çalıştırmanız gerekmektedir.
echo Sağ tık - Yönetici Olarak Çalıştır.
echo Eğer yönetici olarak çalıştırdıysanız herhangi bir tuşa basın.
pause
sc stop "GoodbyeDPI"
sc delete "GoodbyeDPI"
sc stop "WinDivert"
sc delete "WinDivert"
sc stop "WinDivert14"
sc delete "WinDivert14"
