package com.BridgeLabz.OOPS.StockManagaments;

import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.BridgeLabz.JSON.Obj;
import com.BridgeLabz.OOPS.AdressBook.UtilForAddressBook;
import com.BridgeLabz.OOPS.Clinic.UtilityClinic;
import com.bridgeLabz.util.Utility;

public class Implementation {
	JSONObject obJson = new JSONObject();
	JSONArray jArray = new JSONArray();
	StockPortfolio stock = new StockPortfolio();
	static String PATH_FILE = "stock.json";

	
	/*
	 * adding all detail regarding Stock
	 */
	@SuppressWarnings("unchecked")
	public void addDetails() {
		System.out.println("Enter Stock name ");
		String stockeNames = Utility.inputNames();
		stock.setStockNames(stockeNames);

		System.out.println("Enter Number of Stock ");
		int numberOfShare = Utility.inputNumber();
		stock.setNumberOfShare(numberOfShare);

		System.out.println("Enter share Price ");
		double sharePrice = Utility.inputDouble();
		stock.setSharePrice(sharePrice);

		obJson.put("Stock Name", stock.getStockNames());
		obJson.put("Number Of Share", stock.getNumberOfShare());
		obJson.put("Share Price", stock.getSharePrice());
		obJson.put("Value ", stock.getPrice());

		jArray.add(obJson);

		UtilForAddressBook.writeData(PATH_FILE, jArray);
		jArray = UtilityClinic.readData(PATH_FILE);
	}

	
	/*
	 * displaying all the deatails  
	 */
	public void displayData() {
		System.out.println("--------Details----------");
		System.out.println("Name \t Share \t Price \t Value");
		JSONArray readData = UtilForAddressBook.readData(PATH_FILE);
		double value = 0.0;
		@SuppressWarnings("rawtypes")
		Iterator iterator = readData.iterator();
		JSONObject ob;
		while (iterator.hasNext()) {
			if ((ob = (JSONObject) iterator.next()) != null) {
				System.out.println(ob.get("Stock Name") + " \t " + ob.get("Number Of Share") + " \t "
						+ ob.get("Share Price") + " \t " + ob.get("Value "));
				value = value + Double.valueOf(ob.get("Value ").toString());

			}
		}
		System.out.println("Total Price for the whole Stock-> " + value);
	}

}
