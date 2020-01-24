package com.bridgeLabz.DesignPattern.Facade;

public class Waiter {

	public static String deliveredFood(FoodType foodType) {
		Ingredient ingredient = new Ingredient();
		switch (foodType) {
		case PIZZA:
			Food piza = new Pizz();
			String pizzataItem = ingredient.getPizzaItem();
			piza.prepareFood(pizzataItem);
			return piza.deliveredFood();
		case PASTA:
			Food pasta = new Pasta();
			String pastaItem = ingredient.getPastaItem();
			pasta.prepareFood(pastaItem);
			return pasta.deliveredFood();

		default:
			return null;
		}

	}

}
