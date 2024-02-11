#include <iostream>

#include "MathLib/adder.h"
#include "MathLib/divider.h"
#include "InputLib/console_reader.h"
#include "OutputLib/console_printer.h"

// Inner function declarations
void askOperands(float&, float&);
void calculateAndShowResults(float, float);

// MAIN
int main()
{
    // Ask for operands
    float num_1, num_2;
    askOperands(num_1, num_2);

    // Process data
    calculateAndShowResults(num_1, num_2);

    return 0;
}

////////////////////////////////
// Inner function definitions //
////////////////////////////////
void askOperands(float& operand_1, float& operand_2)
{
    print("Type in the first number: ");
    readFloat(operand_1);
    print("Type in the second number: ");
    readFloat(operand_2);
}

void calculateAndShowResults(float operand_1, float operand_2)
{
    printEndl();
    printResult("Addition", add(operand_1, operand_2));
    printResult("Division", divide(operand_1, operand_2));
}
