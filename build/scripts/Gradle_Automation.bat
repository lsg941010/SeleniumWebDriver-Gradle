@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle_Automation startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_AUTOMATION_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Gradle_Automation.jar;%APP_HOME%\lib\extentreports-testng-adapter-1.0.3.jar;%APP_HOME%\lib\selenium-server-3.14.0.jar;%APP_HOME%\lib\htmlunit-driver-2.30.0.jar;%APP_HOME%\lib\htmlunit-2.30.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\junit-4.13-beta-2.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\opencsv-2.4.jar;%APP_HOME%\lib\selenium-java-3.14.0.jar;%APP_HOME%\lib\selenium-chrome-driver-3.14.0.jar;%APP_HOME%\lib\selenium-edge-driver-3.14.0.jar;%APP_HOME%\lib\selenium-firefox-driver-3.14.0.jar;%APP_HOME%\lib\selenium-ie-driver-3.14.0.jar;%APP_HOME%\lib\selenium-opera-driver-3.14.0.jar;%APP_HOME%\lib\selenium-safari-driver-3.14.0.jar;%APP_HOME%\lib\selenium-support-3.14.0.jar;%APP_HOME%\lib\selenium-remote-driver-3.14.0.jar;%APP_HOME%\lib\guava-27.0.1-jre.jar;%APP_HOME%\lib\extentreports-4.0.6.jar;%APP_HOME%\lib\mongodb-driver-3.3.0.jar;%APP_HOME%\lib\testng-6.9.10.jar;%APP_HOME%\lib\selenium-api-3.14.0.jar;%APP_HOME%\lib\jcommander-1.72.jar;%APP_HOME%\lib\byte-buddy-1.8.15.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\commons-text-1.3.jar;%APP_HOME%\lib\commons-lang3-3.7.jar;%APP_HOME%\lib\httpmime-4.5.5.jar;%APP_HOME%\lib\httpclient-4.5.5.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-net-3.6.jar;%APP_HOME%\lib\htmlunit-core-js-2.28.jar;%APP_HOME%\lib\htmlunit-cssparser-1.0.0.jar;%APP_HOME%\lib\neko-htmlunit-2.30.jar;%APP_HOME%\lib\httpcore-4.4.9.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\jetty-repacked-9.4.8.v20180619.jar;%APP_HOME%\lib\websocket-client-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-client-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-http-9.4.9.v20180320.jar;%APP_HOME%\lib\websocket-common-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-io-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-xml-9.4.9.v20180320.jar;%APP_HOME%\lib\jetty-util-9.4.9.v20180320.jar;%APP_HOME%\lib\okhttp-3.10.0.jar;%APP_HOME%\lib\okio-1.14.1.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\websocket-api-9.4.9.v20180320.jar;%APP_HOME%\lib\xalan-2.7.2.jar;%APP_HOME%\lib\serializer-2.7.2.jar;%APP_HOME%\lib\xercesImpl-2.11.0.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\snakeyaml-1.19.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-2.5.2.jar;%APP_HOME%\lib\error_prone_annotations-2.2.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\freemarker-2.3.23.jar;%APP_HOME%\lib\mongodb-driver-core-3.3.0.jar;%APP_HOME%\lib\bson-3.3.0.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\bsh-2.0b4.jar

@rem Execute Gradle_Automation
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_AUTOMATION_OPTS%  -classpath "%CLASSPATH%" com.automation.page.webapp_autotest %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_AUTOMATION_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_AUTOMATION_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega