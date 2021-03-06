#bin/#!/bin/bash

#	git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 -b gcc-master $HOME/gcc-arm64
#	git clone --depth=1 https://github.com/mvaisakh/gcc-arm -b gcc-master $HOME/gcc-arm32
	git clone --depth=1 https://gitlab.com/ElectroPerf/atom-x-clang.git $HOME/clang
	git clone --depth=1 https://github.com/Tashar02/AnyKernel3-4.19.git $HOME/Repack
	git clone --depth=1 https://github.com/Atom-X-Devs/android_kernel_xiaomi_scarlet.git -b release-v10 $HOME/Kernel

	pip3 install telegram-send

	mkdir $HOME/.config
	mv telegram-send.conf $HOME/.config/telegram-send.conf
	sed -i s/demo1/${BOT_API_KEY}/g $HOME/.config/telegram-send.conf
	sed -i s/demo2/${CHAT_ID}/g $HOME/.config/telegram-send.conf
	mv build.sh $HOME/Kernel/build.sh

	cd $HOME/Kernel
	bash build.sh CLANG
#	bash build.sh GCC

	exit
