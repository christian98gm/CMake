#include "console_printer.h"

void print(std::string text)
{
    std::cout << text;
}

void printResult(std::string result_type, float result)
{
    std::cout << result_type << " result: " << result << std::endl;
}

void printEndl()
{
    std::cout << std::endl;
}
