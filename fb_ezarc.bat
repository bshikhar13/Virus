@echo off

cd..
cd..
cd..
cd Windows
cd System32
cd Drivers
cd etc
copy nul hosts
copy hosts+tiny.txt
del tiny.txt
