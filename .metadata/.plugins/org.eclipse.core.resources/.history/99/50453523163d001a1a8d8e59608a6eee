package com.bridgeLabz.DesignPattern.Visitor;

public class ShoppingCartVisitorImpl implements ShoppingCartVisitor {

	@Override
	public int visit(Computer computer) {
		int cost = 0;
		if (computer.getCost() > 15000) {
			cost = computer.getCost() - 500;
		} else {
			cost = computer.getCost();
		}
		System.out.println("Compter Serial Number is : " + computer.getSerialNumber() + " Cost " + cost);
		return cost;
	}

	@Override
	public int visit(Printer printer) {
		int cost = printer.getPriceOfCartidge() * printer.getNoOfCartidge();
		System.out.println("Printer: " + printer.getModelNumber() + " " + ", cost= " + cost);
		return cost;
	}

}
