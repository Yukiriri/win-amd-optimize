@echo off & chcp 65001 >nul

for %%i in (SCHEME_BALANCED SCHEME_MIN) do (
    powercfg -setacvalueindex %%i SUB_PROCESSOR CPMINCORES 100

    echo [%%i][处理器性能核心放置最小核心数量]=100%%
    
    echo [%%i][Processor performance core parking min cores]=100%%
    echo.
)

powercfg -setactive SCHEME_CURRENT

pause
