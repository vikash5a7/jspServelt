package com.bridgeLabz.DesignPattern.Facade;

public class CustomerClass {
	public static void main(String[] args) {
		// normal scenario.......
		Ingredient ingredient = new Ingredient();
		Food pasta = new Pasta();
		String pastaItem = ingredient.getPastaItem();
		pasta.prepareFood(pastaItem);
		System.out.println(pasta.deliveredFood());	
		
		//------------
		Food piza = new Pizz();
		String pizzataItem = ingredient.getPizzaItem();
		piza.prepareFood(pizzataItem);
		System.out.println(piza.deliveredFood());	
	System.out.println("\n\n using facade.....");
	// ----------Facade----------------
		System.out.println(Waiter.deliveredFood(FoodType.PASTA));
		System.out.println(Waiter.deliveredFood(FoodType.PIZZA));
	
	}
	
	
	

}
