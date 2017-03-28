cmake_minimum_required(VERSION 3.6)
project(Lab2)

set(CMAKE_CXX_STANDARD 11)
SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-std=c++11 -pthread")

set(SOURCE_FILES main.cpp)
add_executable(Lab2 ${SOURCE_FILES})
TARGET_LINK_LIBRARIES( Lab2 pthread)