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
	static final File folder1 = new File("AccontFile/");

	public static void main(String[] args) {
		listFilesForFolder(folder1);
		menu();

	}

	private static void menu() {
		System.out.println("----------------Stock Managaments-------------");
		System.out.println("Enter Your Choice\n1. Add Company Details"
				+ " \n2. Remove Comapny Details\n3. Display Company details\n4. Search Company details\n5."
				+ " Create Account\n6. Buy Share Or Sell Share\n7. Exit.");
		String choice = Utility.inputNames();
		String symbol;
		String name;
		switch (choice) {
		case "1":
			file = new File(FILE_PATH);
			service.stockAccount(file);
			menu();
			break;
		case "2":
			System.out.println("Enter Company symbol");
			symbol = Utility.inputNames();
			service.removeCompanyDetails(symbol);
			menu();
			break;
		case "3":
			System.out.println("Display Company details");
			service.displayCompanyDetail();
			menu();
			break;
		case "4":
			System.out.println("Enter company symbol");
			symbol = Utility.inputNames();
			service.displayCompanyAccordingToSymbol(symbol);
			menu();
			break;
		case "5":
			System.out.println("Enter Your Name");
			name = Utility.inputNames();
			String accountId = accountId(name);
			createAccount(accountId);
			menu();
			break;
		case "6":
			System.out.println("Enter Your Name");
			name = Utility.inputNames();
			String accountId1 = accountId(name);
			createAccount(accountId1);
			menu();
			break;

		case "7":
			Utility.quit();
			break;

		default:
			System.out.println("Invalide........ please Enter Carefully");
			menu();
			break;
		}

	}

	public static void buyOrSellStock(File file2) {
		System.out.println("1. Buy Some Share");
		System.out.println("2. Sell some Share");
		System.out.println("3. Print Transaction");
		System.out.println("4. back to main menu");

		double amount;
		String symbol;

		String choice = Utility.inputString();
		switch (choice) {
		case "1":
			System.out.println("Enter amount :\nEnter Symbol :");
			amount = Utility.inputDouble();
			symbol = Utility.inputString();
			service.buy(amount, symbol, file2);
			buyOrSellStock(file2);
			break;
		case "2":
			System.out.println("Enter amount: ");
			amount = Utility.inputDouble();
			System.out.println("Enter Symbol of Company");
			symbol = Utility.inputString();
			service.sell(amount, symbol, file2);
			buyOrSellStock(file2);
			break;
		case "3":
			service.printTransactiolnDetails();
			buyOrSellStock(file2);
			break;
		case "4":
			menu();
			break;
		default:
			menu();
			System.out.println("Invalid option");
		}

	}

	private static void createAccount(String fileName) {

		file = new File("AccontFile/" + fileName + ".json");

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

		buyOrSellStock(file);
	}

	public static String accountId(String name) {
		Random random = new Random();
		String output = "";
		for (int i = 0; i < 3; i++) {
			output += random.nextInt(10);
		}
		int outputInt = Integer.parseInt(output);
		return name += outputInt;

	}

	public static void listFilesForFolder(final File folder) {

		for (final File fileEntry : folder1.listFiles()) {
			if (fileEntry.isDirectory()) {
				listFilesForFolder(fileEntry);
			} else {
				System.out.println(fileEntry.getName());
			}
		}
	}

}
