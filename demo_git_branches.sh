#!/usr/bin/env bash
#Petit script pour créer un dépôt local pour faire joujou avec les bracnhes sur GIT
#zf170212.1859

echo "c'est toto" > toto.txt
echo "c'est tutu" > tutu.txt

git config --global user.name "votre nom"
git config --global user.email "votre@email"
alias gtree='git log --graph --oneline --decorate --all'

echo "1 commit"
git init
git add --all
git commit -m "1 commit, commit initial"

echo "2 commit"
git checkout master
git checkout -b dev
echo "2" >> toto.txt
echo "2" >> tutu.txt
git add --all
git commit -m "2 commit, création de la branche dev"

echo "3 commit"
git checkout master
git checkout -b test
echo "3" >> toto.txt
echo "3" >> tutu.txt
git add --all
git commit -m "3 commit, création de la branche test"

echo "4 commit"
git checkout master
git checkout -b bug1
echo "4" >> toto.txt
git add --all
git commit -m "4 commit, création de la branche bug1"

echo "5 commit"
git checkout master
git checkout -b bug2
echo "5" >> tutu.txt
git add --all
git commit -m "5 commit, création de la branche bug2"

echo "6 commit"
git checkout bug1
echo "6" >> toto.txt
git add --all
git commit -m "6 commit, retour dans la branche bug1, etmodifé toto.txt et tutu.txt"

echo "7 commit"
git checkout bug2
echo "7" >> tutu.txt
git add --all
git commit -m "7 commit, retour dans la branche bug2, et modifé toto.txt et tutu.txt"

#echo "8 commit"
#git checkout master
#echo "8" >> toto.txt
#echo "8" >> tutu.txt
#git add --all
#git commit -m "8 commit, retour dans la branche master, et modifé toto.txt et tutu.txt"

echo "9 commit"
git checkout master
git merge bug1
echo "9" >> toto.txt
git add --all
git commit -m "9 commit, merge de la branche bug1 dans la master"

echo "10 commit"
git checkout master
git merge bug2
echo "10" >> tutu.txt
git add --all
git commit -m "10 commit, merge de la branche bug2 dans la master"

echo "11 commit"
git checkout test
echo "11" >> toto.txt
echo "11" >> tutu.txt
git add --all
git commit -m "11 commit, retour dans la branche test, et modifé toto.txt et tutu.txt"

echo "12 commit"
git checkout dev
echo "12" >> toto.txt
echo "12" >> tutu.txt
git add --all
git commit -m "12 commit, retour dans la branche dev, et modifé toto.txt et tutu.txt"

echo "13 commit"
git checkout master
echo "13" >> toto.txt
echo "13" >> tutu.txt
git add --all
git commit -m "13 commit, retour dans la branche master, et modifé toto.txt et tutu.txt"







echo "end"
