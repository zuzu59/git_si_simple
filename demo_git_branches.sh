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
git commit -m "1 commit initial"

echo "2 commit"
git checkout master
git checkout -b dev
echo "c'est tata" > tata.txt
echo "112710" >> toto.txt
git add --all
git commit -m "2 commit, création de la branche dev et ajout de tata.txt"

echo "3 commit"
git checkout dev
git checkout -b test
git add --all
git commit -m "3 commit, création de la branche test"

echo "4 commit"
git checkout dev
git checkout -b bug1
echo "113331" >> toto.txt
echo "113331" >> titi.txt
git add --all
git commit -m "4 commit, création de la branche bug1 et merge de la branche test dans la bug1"

echo "5 commit"
git checkout dev
git checkout -b bug2
echo "113515" >> toto.txt
echo "113515" >> tata.txt
git add --all
git commit -m "5 commit, création de la branche bug2 et merge de la branche test dans la bug2"

echo "6 commit"
git checkout bug1
echo "113331" >> toto.txt
echo "113331" >> titi.txt
git add --all
git commit -m "6 commit, retour dans la branche bug1, et modifé toto.txt et titi.txt""

echo "7 commit"
git checkout bug2
echo "113331" >> toto.txt
echo "113331" >> titi.txt
git add --all
git commit -m "7 commit, retour dans la branche bug2, et modifé toto.txt et titi.txt""

echo "8 commit"
git checkout test
git merge bug1
git add --all
git commit -m "8 commit, merge de la branche bug1 dans la test"

echo "9 commit"
git checkout test
git merge bug2
git add --all
git commit -m "9 commit, merge de la branche bug2 dans la test"

echo "10 commit"
git checkout master
git merge test
git add --all
git commit -m "10 commit, merge de la branche test dans la master"






echo "end"
