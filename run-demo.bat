@echo off
echo ðŸš€ Running Demo...
call mvn -q -f examples/Demo/pom.xml compile
call java --enable-native-access=ALL-UNNAMED -cp "target\fastglob-0.1.0.jar;examples\Demo\target\classes" fastglob.Demo
pause
