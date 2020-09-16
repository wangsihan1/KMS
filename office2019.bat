@echo off
(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
title Office 2019 Activator 
echo Converting... & mode 60,25
echo 正在连接激活服务器 请稍等，这可能需要30s..
(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")&(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")&(for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&(for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)
cscript //nologo ospp.vbs /unpkey:6MWKP >nul&cscript //nologo ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP >nul&set i=1
:server
if %i%==1 set KMS_Sev=kms.biubixin.com
if %i%==2 set KMS_Sev=kms.biubixin.com
if %i%==3 set KMS_Sev=kms.biubixin.com
cscript //nologo ospp.vbs /sethst:%KMS_Sev% >nul
echo %KMS_Sev% & echo 正在激活中 请稍后...
cscript //nologo ospp.vbs /act | find /i "successful" && (echo Complete) || (echo Trying another KMS Server & set /a i+=1 & goto server)
echo 激活成功！可以退出了，阿巴阿巴阿巴QAQ
echo 感谢对小涵的支持  @_@
echo 我的小屋：biubixin.com
pause >nul
exit