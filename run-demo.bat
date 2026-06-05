@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ðŸš€ Running Demo...
call mvn -f examples/Demo/pom.xml compile
call java --enable-native-access=ALL-UNNAMED -cp "target\fastglob-0.1.0.jar;examples\Demo\target\classes" fastglob.Demo
pause
