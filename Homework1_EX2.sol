// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
// @title Homework 1
// @author Anthony PIERRE

//@notice This contract does two binary operations 

contract Homework1 {
    function binaryStringToDecimal(string memory binary) public pure returns (uint) {
        // Function takes as input a string called "binary" with "memory" indicating that it's a temporary variable
        // With "public", the function is accessible externally and within the contract
        // With "pure",  the function does not modify or read the contract's state
        // The function returns an unsigned integer (uint)
        bytes memory b = bytes(binary); // Convertes string binary into a bytes array "b"
        uint decimal = 0; // creates a uint decimal to 0 that will hold the equivalent of the string "binary"

        for(uint i = 0; i < b.length; i++) { // loop that iterates over each byte in the byte array "b"
            decimal = decimal << 1; // Left shifts the decimal value by one to make room for the next bit
            if(b[i] == '1') { // Check if current byte in the array is '1'
                decimal = decimal | 1; // if current byte == '1', I set the last bit to 1 using bitwise OR operation
            }
        }

        return decimal;
    }
    //@notice UINT8 limits the value we input from 0 to 255
    function IntToArrayMask(uint8 number) public pure returns (uint[8] memory result) {
        uint mask = 1; // Initialize the mask as 1 
        for (uint i = 0; i < 8; i++) { // it loops through the number
            result[i] = number & mask; // BITWISE AND operation with the mask
            mask = mask << 1; // And then left shifts for next bit
        }
        return result;
    }
}

