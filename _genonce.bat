@ECHO OFF
SET publisher_jar=publisher.jar
SET input_cache_path=%CD%\input-cache
IF DEFINED FHIR_PUBLISHER_HOME (
	SET "publisher_home=%FHIR_PUBLISHER_HOME%"
) ELSE (
	SET "publisher_home=%USERPROFILE%\.fhir\tools\publisher"
)

ECHO Checking internet connection...
powershell -Command "try { $r=[System.Net.WebRequest]::Create('https://tx.fhir.org/r4/metadata'); $r.Timeout=4000; $r.GetResponse().Close(); exit 0 } catch { exit 1 }"
IF %ERRORLEVEL% EQU 0 GOTO isonline
ECHO We're offline...
SET txoption=-tx n/a
GOTO igpublish

:isonline
ECHO We're online
SET txoption=

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF NOT EXIST "temp\pages\_includes" MKDIR "temp\pages\_includes"
DEL /Q "temp\pages\_includes\StructureDefinition-*-validation.xhtml" 2>NUL

IF EXIST "%input_cache_path%\%publisher_jar%" GOTO use_input_cache
IF EXIST "..\%publisher_jar%" GOTO use_parent
IF EXIST "%publisher_home%\%publisher_jar%" GOTO use_home
ECHO IG Publisher NOT FOUND in input-cache, parent folder, or FHIR publisher home. Please run _updatePublisher. Aborting...
SET "publisher_status=1"
GOTO run_crmi_check

:use_input_cache
JAVA -jar "%input_cache_path%\%publisher_jar%" -ig . %txoption% %*
SET "publisher_status=%ERRORLEVEL%"
GOTO run_crmi_check

:use_parent
JAVA -jar "..\%publisher_jar%" -ig . %txoption% %*
SET "publisher_status=%ERRORLEVEL%"
GOTO run_crmi_check

:use_home
JAVA -jar "%publisher_home%\%publisher_jar%" -ig . %txoption% %*
SET "publisher_status=%ERRORLEVEL%"

:run_crmi_check
node scripts\validate-crmi.js --root "%CD%"
SET "crmi_status=%ERRORLEVEL%"
IF NOT "%publisher_status%"=="0" GOTO finish
SET "publisher_status=%crmi_status%"

:finish
PAUSE
EXIT /B %publisher_status%
