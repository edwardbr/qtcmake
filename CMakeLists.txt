cmake_minimum_required(VERSION 3.1)

project(test11 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)



if(ANDROID)
    add_library(${PROJECT_NAME} SHARED "main.cpp" "qml.qrc")
else()
    add_executable(${PROJECT_NAME} "main.cpp" "qml.qrc")
endif()


target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Quick)

if(ANDROID)
    include(qt-android-cmake/AddQtAndroidApk.cmake)
    add_qt_android_apk(my_app_apk ${PROJECT_NAME})
endif()
