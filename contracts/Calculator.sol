// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
 * @title Calculator
 * @dev A simple Calculator example
 */
contract Calculator {
    uint256 public resultAdd;
    uint256 public resultSubstraction;
    uint256 public resultMultiplication;
    uint256 public resultDivision;
    
    event Add(uint256 num1, uint256 num2, uint256 result);
    event Substraction(uint256 num1, uint256 num2, uint256 result);
    event Multiplication(uint256 num1, uint256 num2, uint256 result);
    event Divide(uint256 num1, uint256 num2, uint256 result);

    /**
     * @dev add operation
     * @param num1 first number in the add operation
     * @param num2 second number in the add operation
     */
    function add(uint256 num1, uint256 num2) public returns (uint256) {
        require(num1 > 0, "the first parameter need to be greater than zero");
        require(num2 > 0, "the second parameter need to be greater than zero");
        
        resultAdd = num1 + num2;
        
        emit Add(num1, num2, resultAdd);
        
        return resultAdd;
    }

    /**
     * @dev substraction operation
     * @param num1 first number in the substraction operation
     * @param num2 second number in the substraction operation
     */
    function substraction(uint256 num1, uint256 num2) public returns (uint256) {
        require(num1 > 0, "the first parameter need to be greater than zero");
        require(num2 > 0, "the second parameter need to be greater than zero");
        
        resultSubstraction = num1 - num2;
        
        emit Substraction(num1, num2, resultSubstraction);
        
        return resultSubstraction;
    }
    
    /**
     * @dev multiplication operation
     * @param num1 first number in the multiplication operation
     * @param num2 second number in the multiplication operation
     */
    function multiplication(uint256 num1, uint256 num2) public returns (uint256) {
        require(num1 > 0, "the first parameter need to be greater than zero");
        require(num2 > 0, "the second parameter need to be greater than zero");
        
        resultMultiplication = num1 * num2;
        
        emit Multiplication(num1, num2, resultMultiplication);
        
        return resultMultiplication;
    }
    
    /**
     * @dev divide operation
     * @param num1 first number in the divide operation
     * @param num2 second number in the divide operation
     */
    function divide(uint256 num1, uint256 num2) public returns (uint256) {
        require(num1 >= num2, "the first parameter need to be major than the second one");
        require(num2 != 0, "the second parameter need to be different than zero");
        
        resultDivision = num1 / num2;
        
        emit Divide(num1, num2, resultDivision);
        
        return resultDivision;
    }
}
