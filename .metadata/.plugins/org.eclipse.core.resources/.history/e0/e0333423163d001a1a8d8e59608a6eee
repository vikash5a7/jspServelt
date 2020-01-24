package com.bridgeLabz.DesignPattern.Visitor;

public class Computer implements Item {

	private int cost;
	private String serialNumber;

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public Computer(int cost, String serialNumber) {
		super();
		this.cost = cost;
		this.serialNumber = serialNumber;
	}

	@Override
	public int accept(ShoppingCartVisitor visitor) {
		// TODO Auto-generated method stub
		return visitor.visit(this);
	}

}
