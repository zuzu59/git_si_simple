#!/usr/bin/env bash
#Petit script pour créer un dépôt local pour faire joujou avec les bracnhes sur GIT
#zf170211.1204

echo "c'est toto" > toto.txt
echo "c'est tutu" > tutu.txt

git config --global user.name "votre nom"
git config --global user.email "votre@email"
alias gtree='git log --graph --oneline --decorate --all'

echo "1er commit"
git init
git add --all
git commit -m "commit initial"

echo "2e commit"
echo "111151" >> toto.txt
echo "111206" > tutu.txt
git add --all
git commit -m "2e commit dans la branche master"

echo "3e commit"
echo "c'est titi" > titi.txt
echo "111437" >> toto.txt
git add --all
git commit -m "3e commit dans la branche master, on a ajouté titi.txt"

echo "4e commit"
rm tutu.txt
echo "11554" >> titi.txt
git add --all
git commit -m "4e commit dans la branche master, on a effacé tutu.txt"

echo "5e commit"
git checkout -b dev
echo "c'est tata" > tata.txt
echo "112710" >> toto.txt
git add --all
git commit -m "5e commit, création de la branche dev et ajout de tata.txt"

echo "6e commit"
echo "112411" >> toto.txt
echo "11554" >> titi.txt
git add --all
git commit -m "6e commit dans la branche dev, on a modifé toto.txt et titi.txt"

echo "7e commit"
git checkout master
git checkout -b test
git merge dev
git add --all
git commit -m "7e commit, création de la branche test et merge de la branche dev dans la test"

echo "8e commit"
git checkout dev
echo "112511" >> toto.txt
echo "112511" >> titi.txt
git add --all
git commit -m "8e commit, retour dans la branche dev, et modifé toto.txt et titi.txt"

echo "9e commit"
git checkout test
git checkout -b bug1
echo "113331" >> toto.txt
echo "113331" >> titi.txt
git add --all
git commit -m "9e commit, création de la branche bug1 et merge de la branche test dans la bug1"

echo "10e commit"
git checkout test
git checkout -b bug2
echo "113515" >> toto.txt
echo "113515" >> tata.txt
git add --all
git commit -m "10e commit, création de la branche bug2 et merge de la branche test dans la bug2"

echo "11e commit"
git checkout bug1
echo "113630" >> toto.txt
echo "113630" >> titi.txt
git add --all
git commit -m "11e commit, retour dans la branche bug1 et modification de toto.txt et titi.txt"

echo "12e commit"
git checkout dev
echo "113630" >> toto.txt
echo "113630" >> tutu.txt
git add --all
git commit -m "12e commit, retour dans la branche dev et modification de toto.txt et tutu.txt"

echo "13e commit"
git checkout bug2
echo "113932" >> toto.txt
echo "113932" >> tata.txt
git add --all
git commit -m "13e commit, retour dans la branche bug2 et modification de toto.txt et tata.txt"

echo "14e commit"
git checkout bug1
echo "114027" >> toto.txt
echo "114027" >> titi.txt
git add --all
git commit -m "14e commit, retour dans la branche bug1 et modification de toto.txt et titi.txt"

echo "15e commit"
git checkout dev
echo "114133" >> toto.txt
echo "114133" >> tutu.txt
git add --all
git commit -m "15e commit, retour dans la branche dev et modification de toto.txt et tutu.txt"

echo "16e commit"
git checkout bug2
echo "114201" >> toto.txt
echo "114201" >> tata.txt
git add --all
git commit -m "16e commit, retour dans la branche bug2 et modification de toto.txt et tata.txt"

echo "17e commit"
git checkout test
git merge bug1
git add --all
git commit -m "17e commit, merge de la branche bug1 dans la test"

echo "18e commit"
git checkout bug2
echo "114527" >> toto.txt
echo "114527" >> tata.txt
git add --all
git commit -m "18e commit, retour dans la branche bug2 et modification de toto.txt et tata.txt"

echo "19e commit"
git checkout bug1
echo "114712" >> toto.txt
echo "114712" >> titi.txt
git add --all
git commit -m "19e commit, retour dans la branche bug1 et modification de toto.txt et titi.txt"

echo "20e commit"
git checkout dev
echo "114725" >> toto.txt
echo "114725" >> tutu.txt
git add --all
git commit -m "20e commit, retour dans la branche dev et modification de toto.txt et tutu.txt"

echo "21e commit"
git checkout master
git merge test
git add --all
git commit -m "21e commit, merge de la branche test dans la master"

echo "22e commit"
git checkout test
git merge bug2
git add --all
git commit -m "22e commit, merge de la branche bug2 dans la test"

echo "23e commit"
git checkout bug1
echo "115257" >> toto.txt
echo "115257" >> titi.txt
git add --all
git commit -m "23e commit, retour dans la branche bug1 et modification de toto.txt et titi.txt"

echo "24e commit"
git checkout bug2
echo "115218" >> toto.txt
echo "115218" >> tata.txt
git add --all
git commit -m "24e commit, retour dans la branche bug2 et modification de toto.txt et tata.txt"

echo "25e commit"
git checkout dev
echo "115232" >> toto.txt
echo "115232" >> tutu.txt
git add --all
git commit -m "25e commit, retour dans la branche dev et modification de toto.txt et tutu.txt"

echo "26e commit"
git checkout master
git merge test
git add --all
git commit -m "26e commit, merge de la branche test dans la master"

echo "27e commit"
git checkout master
echo "115545" >> toto.txt
git add --all
git commit -m "27e commit, retour dans la branche master et modification de toto.txt"

echo "28e commit"
git checkout bug1
echo "115715" >> toto.txt
echo "115715" >> titi.txt
git add --all
git commit -m "28e commit, retour dans la branche bug1 et modification de toto.txt et titi.txt"

echo "29e commit"
git checkout bug2
echo "115729" >> toto.txt
echo "115729" >> tata.txt
git add --all
git commit -m "29e commit, retour dans la branche bug2 et modification de toto.txt et tata.txt"

echo "30e commit"
git checkout dev
echo "115737" >> toto.txt
echo "115737" >> tutu.txt
git add --all
git commit -m "30e commit, retour dans la branche dev et modification de toto.txt et tutu.txt"

echo "31e commit"
git checkout test
git merge dev
git add --all
git commit -m "31e commit, merge de la branche dev dans la test"

echo "32e commit"
git checkout master
echo "115545" >> toto.txt
git add --all
git commit -m "32e commit, retour dans la branche master et modification de toto.txt"

echo "33e commit"
git checkout master
git merge test
git add --all
git commit -m "33e commit, merge de la branche test dans la master"

echo "34e commit"
git checkout master
echo "115545" >> toto.txt
git add --all
git commit -m "34e commit, retour dans la branche master et modification de toto.txt"



echo "end"
