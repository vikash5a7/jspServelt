package com.BridgeLabz.OOPS.StockManagament2;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.Set;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.BridgeLabz.JSON.Obj;
import com.BridgeLabz.OOPS.AdressBook.UtilForAddressBook;
import com.BridgeLabz.OOPS.Clinic.UtilityClinic;
import com.bridgeLabz.util.Utility;

public class Implementation implements ServiceImplimentation {
	JSONObject obJson = new JSONObject();
	JSONArray jsonArray = new JSONArray();
	Company company = new Company();
	static String Stock_File = "CompanyList.json";
	File FileReader = new File(Stock_File);

	@SuppressWarnings("unchecked")
	public void stockAccount(File file) {

		System.out.println("Enter Company Symbol: ");
		JSONObject fileJson = (JSONObject) UtilityForStock.readData(file);
		JSONObject json = (JSONObject) fileJson.get("STOCK MARKET");

		
		String companySymbol = Utility.inputNames();
		company.setCompanySymbol(companySymbol);

		System.out.println("Enter Stock name ");
		String stockeNames = Utility.inputNames();
		company.setStockNames(stockeNames);

		System.out.println("Enter Number of Stock ");
		int numberOfShare = Utility.inputNumber();
		company.setNumberOfShare(numberOfShare);

		System.out.println("Enter share Price ");
		double sharePrice = Utility.inputDouble();
		company.setSharePrice(sharePrice);

		LocalDateTime current = LocalDateTime.now();
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		String dateTime = current.format(format);
		company.setDate(dateTime);

		obJson.put("Company Name", company.getStockNames());
		obJson.put("Number Of Share", company.getNumberOfShare());
		obJson.put("Share Price", company.getSharePrice());
		obJson.put("Date", company.getDate());
		obJson.put("Company Symbol", company.getCompanySymbol());
		jsonArray.add(obJson);

		json.put(company.getCompanySymbol(), jsonArray);

		UtilityForStock.writeData(file, fileJson);
	}

	@SuppressWarnings("unchecked")
	public void removeCompanyDetails(String symbol) {
		JSONObject jsonObj = UtilityForStock.readData(FileReader);
		JSONObject jsonObj1 = (JSONObject) jsonObj.get("STOCK MARKET");
		JSONObject jsonObj2 = new JSONObject();

		if (jsonObj1.containsKey(symbol)) {

			System.out.println(jsonObj1.get(symbol));
			jsonObj2.get(symbol);
			jsonObj1.remove(symbol);
			jsonObj2.put("STOCK MARKET", jsonObj1);
			UtilityForStock.writeData(FileReader, jsonObj2);
			System.out.println("Success.....");
		} else {
			System.out.println("not found");
		}
	}

	public void displayData() {
		System.out.println("--------Details----------");
		System.out.println("Name \t Share \t Price \t Value");
		JSONArray readData = UtilForAddressBook.readData(Stock_File);
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

	public void displayCompanyAccordingToSymbol(String symbol) {
		JSONObject jsonObject = UtilityForStock.readData(FileReader);

		JSONObject objectOfStock = (JSONObject) jsonObject.get("STOCK MARKET");
		if (objectOfStock.containsKey(symbol)) {
			JSONArray innerArray = (JSONArray) objectOfStock.get(symbol);
			JSONObject innerObject = (JSONObject) innerArray.get(0);
			
			
			System.out.println("*********************Company Details****************************");
			System.out.println("Company Name    : " + innerObject.get("Company Name"));
			System.out.println("Share Price     : " + innerObject.get("Share Price"));
			System.out.println("Number Of Share : " + innerObject.get("Number Of Share"));
			System.out.println("Company Symbol  : " + innerObject.get("Company Symbol"));
			System.out.println("Date            : " + innerObject.get("Date"));
		}else
		{
			System.out.println("Company Not Found with this SYMBOL -> " + symbol +" Try with another Symbol");
		}

	}


	public void displayCompanyDetail() {
		JSONObject json = UtilityForStock.readData(FileReader);
		JSONObject Stock = (JSONObject) json.get("STOCK MARKET");
		@SuppressWarnings("unused")
		JSONArray arr = new JSONArray();

		Object[] Keys = Stock.keySet().toArray();
		for (Object i : Keys) {
			JSONArray a = (JSONArray) Stock.get(i);
			for (Object j : a) {
				JSONObject m = (JSONObject) j;
				System.out.println("Company Name    :" + m.get("Company Name"));
				System.out.println("Number Of Share :" + m.get("Number Of Share"));
				System.out.println("Price           :" + m.get("Share Price"));
				System.out.println("Company Symbol  :" + m.get("Company Symbol"));
				System.out.println("Date            :" + m.get("Date"));
				System.out.println();
			}
		}

	}

	@SuppressWarnings("unchecked")
	public void buy(double amount, String symbol, File fileWrite) {

		@SuppressWarnings("unused")
		int count = 0;
		long price = 0;
		@SuppressWarnings("unused")
		long numberOfShare =0;
		JSONObject jsonObject = UtilityForStock.readData(FileReader);
		JSONArray innerArray;
		JSONObject innerObject = null ;
		JSONObject objectOfStock = (JSONObject) jsonObject.get("STOCK MARKET");
		if (objectOfStock.containsKey(symbol)) {
			innerArray = (JSONArray) objectOfStock.get(symbol);
			innerObject = (JSONObject) innerArray.get(0);
			System.out.println("Share Price     : " + innerObject.get("Share Price"));
			System.out.println("Number Of Share : " + innerObject.get("Number Of Share"));
			price = (long) innerObject.get("Share Price");
			numberOfShare = (long) innerObject.get("Number Of Share");
		}
		 if(amount>price)
		 {
			 System.out.println("here");
			 int totalNumberOfshare = (int) (amount/price);
			 System.out.println("Total Number of share Bought is: "+ totalNumberOfshare);
			 System.out.println("You are buying Company name is- " + innerObject.get("Company Name") );
			 LocalDateTime current = LocalDateTime.now();
			 DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy");
			 String dateTime = current.format(format);
				obJson.put("Company Name", innerObject.get("Company Name"));
				obJson.put("Company Symbol", symbol);
				obJson.put("Number Of Share", totalNumberOfshare);
				obJson.put("Share Price", price );
				obJson.put("Time", current);
				obJson.put("DATE", dateTime);
				jsonArray.add(obJson);
				System.out.println(jsonArray);
				UtilityForStock.writeData(fileWrite, jsonArray);
			 
		 }else
		 {
			 System.out.println("enter amout is Low You can't buy");
		 }
		
	}

	@SuppressWarnings("unused")
	private JSONArray updateCompanyDetails(JSONArray jsonArray2, int numberOfShare, double price) {
		return null;
	}

	public void sell(double amount, String symbol, File file2) {
		// TODO Auto-generated method stub
		
	}

	public void printTransactiolnDetails() {
		// TODO Auto-generated method stub
		
	}

}
