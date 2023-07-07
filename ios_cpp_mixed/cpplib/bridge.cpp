//
//  bridge.cpp
//  cpp_bridge
//
//  Created by 黃冠禎 on 2023/6/27.
//

#include <stdio.h>
#include "bridge.hpp"

void Car::show() {
    std::cout << name << " - price: " << price << ", seats: " << seaters <<std::endl;
}

void Car::getInfo(std::string &str) {
    str = name + " - price: " + std::to_string(price) + ", seats: " + std::to_string(seaters);
}

void Car::printInfo(std::string str) {
    std::cout << str << std::endl;
}

int Car::sum(int* arr, int len) {
    int res = 0;
    for (int i=0; i<len; i++) {
        res += *(arr + i);
    }
    return res;
}

int addOne(int n) {
    return n + 1;
}

int addTwo(int n) {
    return n + 2;
}
