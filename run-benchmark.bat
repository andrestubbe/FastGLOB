@echo off
    echo.
    echo âŒ Maven build failed.
    pause
    exit /b %ERRORLEVEL%
)
echo ðŸš€ Running Benchmark...
call mvn -q -f examples/Benchmark/pom.xml compile
call java --enable-native-access=ALL-UNNAMED -cp "target\fastglob-0.1.0.jar;examples\Benchmark\target\classes" fastglob.Benchmark
pause
