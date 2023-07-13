//
//  bridge.hpp
//  cpp_bridge
//
//  Created by 黃冠禎 on 2023/6/27.
//

#ifndef bridge_h
#define bridge_h
#include <string>
#include <iostream>


class Car {
public:
    Car (char* str, int seats, float p) {
        name = std::string(str);
        seaters = seats;
        price = p;
    }
    std::string name;
    int seaters;
    float price;
    void show();
    void getInfo(std::string &str);
    void printInfo(std::string str);
    int sum(int* arr, int len);
};

int addOne(int n);

int addTwo(int n);

#endif /* bridge_h */
