@echo off


:start
COLOR 1F
cls
echo[
echo Choose your desired Office 365 (2016) installation:
echo ---------------------------------------------------
echo[
echo 1. Office 365 ProPlus, E3, E4, or Midsize
echo 2. Office 365 Business or Business Premium
echo 3. Office 365 Small Business Premium
echo 4. I only need Project or Visio
echo 5. I only need Skype for Business (Lync)
echo 6. None of these - exit program
echo[

set /p selection=
IF "%selection%" == "1" (
    goto O365ProPlusRetail
) else if "%selection%" == "2" (
    goto O365BusinessRetail
) else if "%selection%" == "3" (
    goto O365SmallBusPremRetail
) else if "%selection%" == "4" (
    goto VisioProject
) else if "%selection%" == "5" (
    goto Skype
) else if "%selection%" == "6" (
    exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto start
)


REM ###################################################


:O365ProPlusRetail

CALL :check_existingOffice

COLOR 1F
cls
echo[
echo You have selected Office 365 ProPlus / E3 / E4 / Midsize
echo[
echo Do you also need Project or Visio?
echo ---------------------------------------------------------
echo[
echo 1. No, only install Office
echo 2. Yes, install Office with Project
echo 3. Yes, install Office with Visio
echo 4. Yes, install Office with Project AND Visio
echo 5. Go back to main menu
echo 6. Exit program
echo[

set /p selection=
IF "%selection%" == "1" (
    goto O365ProPlusRetail_install
) else if "%selection%" == "2" (
    goto O365ProPlusRetail_wProject
) else if "%selection%" == "3" (
    goto O365ProPlusRetail_wVisio
) else if "%selection%" == "4" (
    goto O365ProPlusRetail_wPandV
) else if "%selection%" == "5" (
    goto start
) else if "%selection%" == "6" (
    exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto O365ProPlusRetail
)


:O365ProPlusRetail_install
COLOR 1F
cls
echo[
echo OFFICE 365 PROPLUS (2016) ONLY
echo[
echo Installing Office 365 ProPlus...
%~dp0\SOURCES\ProPlus\setup.exe /configure "%~dp0\SOURCES\ProPlus\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office


:O365ProPlusRetail_wProject
COLOR 1F
cls
echo[
echo OFFICE 365 PROPLUS (2016) WITH PROJECT
echo[
echo Installing Office 365 ProPlus...
%~dp0\SOURCES\ProPlus\setup.exe /configure "%~dp0\SOURCES\ProPlus\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Project


:O365ProPlusRetail_wVisio
COLOR 1F
cls
echo[
echo OFFICE 365 PROPLUS (2016) WITH VISIO
echo[
echo Installing Office 365 ProPlus...
%~dp0\SOURCES\ProPlus\setup.exe /configure "%~dp0\SOURCES\ProPlus\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Visio


:O365ProPlusRetail_wPandV
COLOR 1F
cls
echo[
echo OFFICE 365 PROPLUS (2016) WITH PROJECT AND VISIO
echo[
echo Installing Office 365 ProPlus...
%~dp0\SOURCES\ProPlus\setup.exe /configure "%~dp0\SOURCES\ProPlus\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_PandV


REM ###################################################


:O365BusinessRetail

CALL :check_existingOffice

COLOR 1F
cls
echo[
echo You have selected Office 365 Business / Business Premium
echo[
echo Do you also need Project or Visio?
echo ---------------------------------------------------------
echo[
echo 1. No, only install Office
echo 2. Yes, install Office with Project
echo 3. Yes, install Office with Visio
echo 4. Yes, install Office with Project AND Visio
echo 5. Go back to main menu
echo 6. Exit program
echo[

set /p selection=
IF "%selection%" == "1" (
    goto O365BusinessRetail_install
) else if "%selection%" == "2" (
    goto O365BusinessRetail_wProject
) else if "%selection%" == "3" (
    goto O365BusinessRetail_wVisio
) else if "%selection%" == "4" (
    goto O365BusinessRetail_wPandV
) else if "%selection%" == "5" (
    goto start
) else if "%selection%" == "6" (
    exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto O365BusinessRetail
)


:O365BusinessRetail_install
COLOR 1F
cls 
echo[
echo OFFICE 365 BUSINESS (2016) ONLY
echo[
echo Installing Office 365 Business...
%~dp0\SOURCES\Business\setup.exe /configure "%~dp0\SOURCES\Business\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office


:O365BusinessRetail_wProject
COLOR 1F
cls
echo[
echo OFFICE 365 BUSINESS (2016) WITH PROJECT
echo[
echo Installing Office 365 Business...
%~dp0\SOURCES\Business\setup.exe /configure "%~dp0\SOURCES\Business\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Project


:O365BusinessRetail_wVisio
COLOR 1F
cls 
echo[
echo OFFICE 365 BUSINESS (2016) WITH VISIO
echo[
echo Installing Office 365 Business...
%~dp0\SOURCES\Business\setup.exe /configure "%~dp0\SOURCES\Business\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Visio


:O365BusinessRetail_wPandV
COLOR 1F
cls  
echo[
echo OFFICE 365 BUSINESS (2016) WITH PROJECT AND VISIO
echo[
echo Installing Office 365 Business...
%~dp0\SOURCES\Business\setup.exe /configure "%~dp0\SOURCES\Business\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_PandV


REM ###################################################


:O365SmallBusPremRetail

CALL :check_existingOffice

COLOR 1F
cls
echo[
echo You have selected Office 365 Small Business Premium 
echo[
echo Do you also need Project or Visio?
echo ----------------------------------------------------
echo[
echo 1. No, only install Office
echo 2. Yes, install Office with Project
echo 3. Yes, install Office with Visio
echo 4. Yes, install Office with Project AND Visio
echo 5. Go back to main menu
echo 6. Exit program
echo[

set /p selection=
IF "%selection%" == "1" (
    goto O365SmallBusPremRetail_install
) else if "%selection%" == "2" (
    goto O365SmallBusPremRetail_wProject
) else if "%selection%" == "3" (
    goto O365SmallBusPremRetail_wVisio
) else if "%selection%" == "4" (
    goto O365SmallBusPremRetail_wPandV
) else if "%selection%" == "5" (
    goto start
) else if "%selection%" == "6" (
    exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto O365SmallBusPremRetail
)


:O365SmallBusPremRetail_install
COLOR 1F
cls 
echo[
echo OFFICE 365 SMALL BUSINESS (2016) ONLY
echo[
echo Installing Office 365 Small Business...
%~dp0\SOURCES\SmallBusiness\setup.exe /configure "%~dp0\SOURCES\SmallBusiness\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office


:O365SmallBusPremRetail_wProject
COLOR 1F
cls
echo[
echo OFFICE 365 SMALL BUSINESS (2016) WITH PROJECT
echo[
echo Installing Office 365 Small Business...
%~dp0\SOURCES\SmallBusiness\setup.exe /configure "%~dp0\SOURCES\SmallBusiness\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Project


:O365SmallBusPremRetail_wVisio
COLOR 1F
cls
echo[
echo OFFICE 365 SMALL BUSINESS (2016) WITH VISIO
echo[
echo Installing Office 365 Small Business...
%~dp0\SOURCES\SmallBusiness\setup.exe /configure "%~dp0\SOURCES\SmallBusiness\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_Visio


:O365SmallBusPremRetail_wPandV
COLOR 1F
cls
echo[
echo OFFICE 365 SMALL BUSINESS (2016) WITH PROJECT AND VISIO
echo[
echo Installing Office 365 Small Business...
%~dp0\SOURCES\SmallBusiness\setup.exe /configure "%~dp0\SOURCES\SmallBusiness\install.xml" > NUL
echo Done!
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto :check_Office_PandV


REM ###################################################


:VisioProject
COLOR 1F
cls
echo[     
echo You have selected Microsoft Project / Visio
echo[
echo Do you need Project, Visio or both?
echo --------------------------------------------
echo[
echo 1. I only need Project
echo 2. I only need Visio
echo 3. I need BOTH Project and Visio
echo 4. Go back to main menu
echo 5. Exit program
echo[

set /p selection=
IF "%selection%" == "1" (
    goto Project
) else if "%selection%" == "2" (
    goto Visio
) else if "%selection%" == "3" (
    goto PandV
) else if "%selection%" == "4" (
    goto start
) else if "%selection%" == "5" (
    goto exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto VisioProject
)


:Project
COLOR 1F
cls
echo[
echo MICROSOFT PROJECT PROFESSIONAL
echo[
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto check_Project


:Visio
COLOR 1F
cls
echo[
echo MICROSOFT VISIO PROFESSIONAL
echo[
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto check_Visio


:PandV
COLOR 1F
cls
echo[
echo MICROSOFT PROJECT AND VISIO PROFESSIONAL
echo[
echo Installing Microsoft Project...
%~dp0\SOURCES\Project\setup.exe /configure "%~dp0\SOURCES\Project\install.xml" > NUL
echo Done!
echo Installing Microsoft Visio...
%~dp0\SOURCES\Visio\setup.exe /configure "%~dp0\SOURCES\Visio\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto check_PandV


REM ###################################################

:Skype
COLOR 1F
cls
echo[
echo You have selected Skype for Business 2016
echo[
echo Which version do you need?
echo ---------------------------------------------------------
echo[
echo 1. Skype for Business 2016 Basic
echo 2. Skype for Business 2016
echo 3. Go back to main menu
echo 4. Exit program
echo[

set /p selection=
if "%selection%" == "1" (
    goto SkypeBasic_install
) else if "%selection%" == "2" (
    goto Skype_install
) else if "%selection%" == "3" (
    goto start
) else if "%selection%" == "4" (
    goto exit
) ELSE (
    COLOR 4F
    cls
    echo[
    echo Invalid input! Make an appropriate selection.
    echo[
    pause
    goto Skype
)


:SkypeBasic_install
COLOR 1F
cls
echo[
echo SKYPE FOR BUSINESS BASIC 2016
echo[
echo Installing Skype for Business Basic 2016...
%~dp0\SOURCES\SkypeBusiness_Basic\setup.exe /configure "%~dp0\SOURCES\SkypeBusiness_Basic\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto check_Skype


:Skype_install
COLOR 1F
cls
echo[
echo SKYPE FOR BUSINESS BASIC / LYNCBASIC
echo[
echo Installing Skype for Business 2016...
%~dp0\SOURCES\SkypeBusiness\setup.exe /configure "%~dp0\SOURCES\SkypeBusiness\install.xml" > NUL
echo Done!
timeout /t 5 /nobreak > NUL
goto check_Skype


REM ###################################################


:check_Office
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Skype
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\lync.exe" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Project
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\WINPROJ.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Visio
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\VISIO.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_PandV
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\VISIO.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\WINPROJ.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Office_Project
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\WINPROJ.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Office_Visio
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\VISIO.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Office_PandV
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\VISIO.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\WINPROJ.EXE" (
    goto finish_success
) ELSE (
    goto finish_fail
)


:check_Office_Skype
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" ^
IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\lync.exe" (
    goto finish_success
) ELSE (
    goto finish_fail
)


REM ###################################################


:finish_success
COLOR 2F
cls
echo[
echo Installation completed successfully!
echo[
pause
exit


:finish_fail
COLOR 4F
cls
echo[
echo Installation failed! Check the log file at C:\Logs for clues.
echo[
pause
exit


REM ###################################################


:check_existingOffice
COLOR 1F
cls
echo[
echo Checking for existing Office installations...
echo[
timeout /t 4 /nobreak > NUL

SET "existing_office="

REM Office click-to-run installation?
REG QUERY "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\15.0\Common\InstallRoot\Virtual\VirtualOutlook" 2> NUL
IF %errorlevel%==0 goto error_uninstall

REM Office click-to-run installation?
REG QUERY "HKLM\SOFTWARE\Wow6432Node\Microsoft\Office\14.0\Common\InstallRoot"
RIF %errorlevel%==0 goto error_uninstall

REM Office 2016 32-bit
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{90160000-008F-0000-1000-0000000FF1CE}" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2016 32-bit
    goto error_uninstall
)

REM Office 2016 64-bit
REG QUERY "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90160000-008F-0000-1000-0000000FF1CE}" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2016 64-bit
    goto error_uninstall
)

REM Office 2013 32-bit
REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{91150000-0011-0000-0000-0000000FF1CE" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2013 32-bit
    goto error_uninstall
)

REM Office 2013 64-bit
REG QUERY "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{91150000-0011-0000-0000-0000000FF1CE}" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2013 64-bit
    goto error_uninstall
)

REM Office 2010 32-bit
REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{91140000-0011-0000-0000-0000000FF1CE}" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2010 32-bit
    goto error_uninstall
)

REM Office 2010 64-bit
REG QUERY "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{91140000-0011-0000-0000-0000000FF1CE}" 2> NUL
IF %errorlevel%==0 (
    SET existing_office=Office 2010 64-bit
    goto error_uninstall
)

IF EXIST "C:\Program Files\Microsoft Office*" goto error_uninstall

IF EXIST "C:\Program Files (x86)\Microsoft Office*" goto error_uninstall


echo Done!
timeout /t 2 /nobreak > NUL
exit /b


:error_uninstall
COLOR 4F
cls

IF "%existing_office%" == "" (
    echo[
    echo You must uninstall the existing Office first!
    echo[
    pause
    exit
) ELSE (
    echo[
    echo "%existing_office%" was detected on this computer.
    echo[
    echo You must uninstall the existing Office first!
    echo[
    pause
    exit
)
