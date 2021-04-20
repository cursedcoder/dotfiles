#!/bin/bash

installProjectorPrereqs() {
	sudo apt-get install -qq --no-install-recommends \
		libfreetype6 \
		libxext6 \
		libxi6 \
		libxrender1 \
		libxtst6 \
		python3-dev \
		python3-pip

	pip3 install --quiet --user projector-installer
}

installRubyMine() {
	~/.local/bin/projector ide autoinstall --config-name RubyMine --ide-name "RubyMine 2021.1" --accept-licence=true
	copyRubyMineConfig
}

copyRubyMineConfig() {
	if [ -d "rubymine_config" ]
	then
		echo "Could copy rubymine_config but idk where yet"
		echo "License info could be copied too!"
	else
		echo "Not copying RubyMine config"
	fi
}

runRubyMine() {
	~/.local/bin/projector run RubyMine
}

installProjectorPrereqs
installRubyMine
runRubyMine
