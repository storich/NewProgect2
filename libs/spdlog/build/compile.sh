

ABI=x86

ANDROID_NDK=home/storich/Android/Sdk/ndk/21.4.7075529
TOOL_CHAIN=/home/storich/Android/Sdk/ndk/21.4.7075529/build/cmake/android.toolchain.cmake
CMAKE=/home/storich/Android/Sdk/cmake/3.10.2.4988404/bin/cmake

mkdir -p ${ABI}
cd ${ABI}

${CMAKE} ../../spdlog -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 \
-DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN}

${CMAKE} --build .
