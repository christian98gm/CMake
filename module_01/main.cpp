#include <iostream>

#include "adder.h"
#include "divider.h"
#include "printer.h"

int main()
{
    float num_1, num_2;
    float result_add, result_div;

    std::cout   << "Type in the first number: ";
    std::cin    >> num_1;
    std::cout   << "Type in the second number: ";
    std::cin    >> num_2;
    std::cout   << std::endl;

    printResult("Addition", add(num_1, num_2));
    printResult("Division", divide(num_1, num_2));

    return 0;
}
