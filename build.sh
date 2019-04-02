#!/bin/bash

git submodule init
git submodule update

export ANDROID_HOME=/home/edward/Android/Sdk/
export ANDROID_HOME=/home/edward/Android/Sdk/
export ANDROID_NDK=/home/edward/Android/Sdk/ndk-bundle
export ANDROID_NDK_TOOLCHAIN_ROOT=/home/edward/Android/Sdk/ndk-bundle/toolchains
export ANDROID_PLATFORM_TOOLS=/home/edward/Android/Sdk/platform-tools
export ANDROID_SDK=/home/edward/Android/Sdk/
export ANDROID_TOOLS=/home/edward/Android/Sdk/tools
export PATH=/home/edward/.nvm/versions/node/v8.9.4/bin:/home/edward/bin:/home/edward/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/edward/.dotnet/tools:/usr/lib/jvm/java-11-oracle/bin:/usr/lib/jvm/java-11-oracle/db/bin:/usr/local/bin:/home/edward/Android/Sdk/:/home/edward/Android/Sdk/tools:/home/edward/Android/Sdk/platform-tools

cmake .. -DCMAKE_PREFIX_PATH=/home/edward/Qt/5.12.2/gcc_64 -DQT_QMAKE_EXECUTABLE=/home/edward/Qt/5.12.2/gcc_64/bin/qmake -DQt5Core_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5Core -DQt5Gui_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5Gui -DQt5_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5 -DQt5Network_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5Network -DQt5Qml_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5Qml -DQt5Quick_DIR=/home/edward/Qt/5.12.2/android_x86/lib/cmake/Qt5Quick -DCMAKE_TOOLCHAIN_FILE=/home/edward/Android/Sdk/ndk-bundle/build/cmake/android.toolchain.cmake -DANDROID_STL=c++_shared -DANDROID_USE_LLVM=true -DANDROID_NDK=/home/edward/Android/Sdk/ndk-bundle -DANDROID_ABI=x86 -DANDROID_HOST_TAG=linux-x86_64  -DCMAKE_HOST_SYSTEM_NAME=Linux -DANDROID_PLATFORM=27

cmake --build .

/home/edward/Android/Sdk/platform-tools/adb install ./build/outputs/apk/debug/build-debug.apk