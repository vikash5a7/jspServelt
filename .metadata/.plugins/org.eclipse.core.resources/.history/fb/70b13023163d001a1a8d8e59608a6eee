package com.bridgeLabz.DesignPattern.Visitor;

public class Clients {
	public static void main(String[] args) {
		Item[] item = new Item[] { new Computer(2000, "compl12"), new Computer(23423, "Computer12342 "),
				new Printer(12, 2342, "printer@342"), new Printer(234, 500, "Printer7934") };
		int totalCost = calculatePrice(item);
		System.out.println("Total price = " + totalCost);
	}

	private static int calculatePrice(Item[] item) {
		ShoppingCartVisitor visitor = new ShoppingCartVisitorImpl();
		int sum = 0;
		for (Item item2 : item) {
			sum = sum + item2.accept(visitor);

		}
		return sum;
	}

}
