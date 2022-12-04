#include <iostream>
#include <string>
#include <iomanip>

#include "xxhash.h"

int main()
{
    std::string userInput;
    uint64_t stringHash;

    // Get input from User

    std::cout << "Please enter the string: ";
    std::cin >> userInput;

    // Hash
    stringHash = XXH64(userInput.c_str(), userInput.length(), 0);

    // Output the hash
    std::cout << "The hash is: " << std::hex << std::setw(16) << std::setfill('0') << stringHash;
    std::cin.get();
    return 0;
}