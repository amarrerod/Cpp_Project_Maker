#!/bin/bash

usage(){
	 echo -e "usage: projectMaker <projectNamePath>\n"
	 exit 1
}

dir_maker() {
	mkdir $1
	mkdir "$1/doc"
	mkdir "$1/src"
	touch "$1/src/main.cpp"
	mkdir "$1/lib"
	mkdir "$1/test"
}

repo_maker() {
	cd $1
	git init
	echo ".*" > .gitignore
	git add . && git commit -m "Directories created."
}

template_copy() {
	cp ~/Templates/Cpp/* $1
	cp ~/Templates/Cpp/.travis.yml $1
	cp ~/Templates/Cpp/.editorconfig $1
}

##### Main
echo -e "-----------------------------------------"
echo -e "\tC++ Project Maker"
echo -e "-----------------------------------------"
if [ "$1" == "" ]; then
		usage
	else
		echo -e "\tCreating the directories."
		dir_maker $1
		echo -e "\tInitializating repository."
		repo_maker $1
		echo -e "\tCopying files templates."
		template_copy $1
		echo -e "\tProject sucessfully created."
fi
