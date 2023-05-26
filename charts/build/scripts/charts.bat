@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  charts startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CHARTS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\charts.jar;%APP_HOME%\lib\jersey-container-jdk-http-2.34.jar;%APP_HOME%\lib\jersey-container-servlet-core-2.34.jar;%APP_HOME%\lib\jersey-server-2.34.jar;%APP_HOME%\lib\jersey-media-moxy-2.34.jar;%APP_HOME%\lib\jersey-client-2.34.jar;%APP_HOME%\lib\jersey-hk2-2.34.jar;%APP_HOME%\lib\javax.ws.rs-api-2.1.1.jar;%APP_HOME%\lib\spotify-web-api-java-4.2.1.jar;%APP_HOME%\lib\jaxb-api-2.4.0-b180830.0359.jar;%APP_HOME%\lib\jersey-common-2.34.jar;%APP_HOME%\lib\jersey-entity-filtering-2.34.jar;%APP_HOME%\lib\jakarta.ws.rs-api-2.1.6.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\hk2-locator-2.6.1.jar;%APP_HOME%\lib\hk2-api-2.6.1.jar;%APP_HOME%\lib\hk2-utils-2.6.1.jar;%APP_HOME%\lib\jakarta.inject-2.6.1.jar;%APP_HOME%\lib\jakarta.validation-api-2.0.2.jar;%APP_HOME%\lib\jakarta.json-api-1.1.6.jar;%APP_HOME%\lib\jakarta.json-1.1.6.jar;%APP_HOME%\lib\org.eclipse.persistence.moxy-2.7.6.jar;%APP_HOME%\lib\javassist-3.25.0-GA.jar;%APP_HOME%\lib\jackson-databind-2.9.10.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\nv-i18n-1.23.jar;%APP_HOME%\lib\httpclient-cache-4.5.5.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.3.jar;%APP_HOME%\lib\org.eclipse.persistence.core-2.7.6.jar;%APP_HOME%\lib\aopalliance-repackaged-2.6.1.jar;%APP_HOME%\lib\jackson-annotations-2.9.10.jar;%APP_HOME%\lib\jackson-core-2.9.10.jar;%APP_HOME%\lib\httpclient-4.5.5.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\org.eclipse.persistence.asm-2.7.6.jar;%APP_HOME%\lib\httpcore-4.4.9.jar;%APP_HOME%\lib\commons-codec-1.10.jar


@rem Execute charts
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CHARTS_OPTS%  -classpath "%CLASSPATH%" de.uniba.dsg.jaxrs.Server %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CHARTS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CHARTS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
