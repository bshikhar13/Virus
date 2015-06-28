@echo off

cd..
cd..
cd..
cd Windows
cd System32
cd Drivers
cd etc
echo > tiny.txt
copy tiny.txt + hosts 
echo 0.0.0.0 www.facebook.com > s1.txt
echo 0.0.0.0 facebook.com > s2.txt
copy hosts + s1.txt +s2.txt
del s1.txt
del s2.txt
