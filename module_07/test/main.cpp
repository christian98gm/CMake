#include <iostream>

#include "MathLib/adder.h"
#include "MathLib/divider.h"

int main()
{
    float num_1, num_2;

    std::cout << "Type in 2 numbers:" << std::endl;
    std::cin >> num_1 >> num_2;

    std::cout << "Addition result: " << add(num_1, num_2) << std::endl;
    std::cout << "Division result: " << divide(num_1, num_2) << std::endl;

    return 0;
}
