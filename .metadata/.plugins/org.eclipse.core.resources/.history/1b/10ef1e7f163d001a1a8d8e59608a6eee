package com.BridgeLabz.OOPS.StockManagaments;

import com.bridgeLabz.util.Utility;

public class Stock {
	static Implementation stockImpl = new Implementation();

	public static void main(String[] args) {
		System.out.println("----------------Stock-------------");
		System.out.println("enter how many Stock ?");
		int stockNumber = Utility.inputNumber();
		menu(stockNumber);
		stockImpl.displayData();

	}

	private static void menu(int stockNumber) {
		for (int i = 1; i <= stockNumber; i++) {
			System.out.println("Enter Deatail for Stock Number -> " + i);
			stockImpl.addDetails();
		}

	}

}
