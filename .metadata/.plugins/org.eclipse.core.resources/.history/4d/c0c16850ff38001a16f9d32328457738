package com.BridgeLabz.OOPS.StockManagament2;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

import com.bridgeLabz.util.Utility;

public class ControllerClass {
	static Implementation service = new Implementation();
	static File file;
	static String FILE_PATH = "CompanyList.json";

	public static void main(String[] args) {
		Menu();

	}

	private static void Menu() {
		System.out.println("----------------Stock Managaments-------------");
		System.out.println("Enter Your Choice\n1. Add Company Details"
				+ " \n2. Remove Comapny Details\n3. Display Company details\n4. Search Company details\n5."
				+ " Create Account\n6. Exit");
		String Choice = Utility.inputNames();
		String symbol;
		switch (Choice) {
		case "1":
			file = new File(FILE_PATH);
			service.stockAccount(file);
			Menu();
			break;
		case "2":
			System.out.println("Enter Company symbol");
			symbol = Utility.inputNames();
			service.removeCompanyDetails(symbol);
			Menu();
			break;
		case "3":
			System.out.println("Display Company details");
			service.displayCompanyDetail();
			Menu();
			break;
		case "4":
			System.out.println("Enter company symbol");
			symbol = Utility.inputNames();
			service.displayCompanyAccordingToSymbol(symbol);
			Menu();
			break;
		case "5":
			System.out.println("Enter Your Name");
			String name = Utility.inputNames();
			String AccountId = AccountId(name);
			createAccount(AccountId);
			Menu();
			break;
		case "6":
			Utility.quit();

		default:
			System.out.println("Invalide........ please Enter Carefully");
			Menu();
			break;
		}

	}

	private static void createAccount(String fileName) {

		file = new File("AccontFile/"+fileName + ".json");

		try (FileWriter fileWriter = new FileWriter(file)) {

			System.out.println(fileName + " Created Successfully !!!");
			if (file.length() == 0) {
				String defaultValue = "[]";
				fileWriter.write(defaultValue);
				fileWriter.flush();
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("Your account is File Name is " + fileName);

//		buyOrSellStock(file);
	}

	public static String AccountId(String name) {
		Random random = new Random();
		String output = "";
		for (int i = 0; i < 3; i++) {
			output += random.nextInt(10);
		}
		int outputInt = Integer.parseInt(output);
		return name += outputInt;

	}

}
