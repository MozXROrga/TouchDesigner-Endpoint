@echo off
setlocal enabledelayedexpansion

:: ==========  1.  Engine path (Modify to your actual path)  ==========
set "ENGINE=D:\UE\UE_source\UnrealEngine"
set "UBT=%ENGINE%\Engine\Source\Programs\UnrealBuildTool\bin\Development\UnrealBuildTool.exe"

:: ==========  2.  Check if UBT exists  ============================
if not exist "%UBT%" (
    echo [ERROR] UnrealBuildTool not found at:
    echo   %UBT%
    echo Please build the engine first ^(Run GenerateProjectFiles.bat in engine root^).
    pause & exit /b 1
)

:: ==========  3.  Generation mode selection  ===================================

:: 3-B  Batch generate all .uproject files in current folder（default）
for %%f in (*.uproject) do (
    echo.
    echo === Generating project files for: %%f ===
    "%UBT%" -projectfiles -project="%~dp0%%f" -game -engine -progress 
    if !errorlevel! neq 0 (
        echo [ERROR] Failed to generate for %%f  (errorlevel = !errorlevel!)
        pause & exit /b !errorlevel!
    )
)
echo.
echo === All project files generated successfully! ===
pause
exit /b 0