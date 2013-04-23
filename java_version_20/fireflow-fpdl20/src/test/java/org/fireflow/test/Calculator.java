package org.fireflow.test;

public class Calculator implements ICalculator {

	@Override
	public int add(int a, int b) {
		System.out.println("=====This is Calculator.add(a,b) , a="+a+",b="+b);
		return a+b;
	}

	@Override
	public int multiply(int a, int b) {
		System.out.println("======a is "+a+"; b is "+b);
		return a*b;
	}

}
