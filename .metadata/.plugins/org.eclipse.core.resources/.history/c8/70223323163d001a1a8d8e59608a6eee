package com.bridgeLabz.DesignPattern.Visitor;

public class Printer implements Item {

	private int noOfCartidge;
	private int priceOfCartidge;
	private String modelNumber;

	public Printer(int noOfCartidge, int priceOfCartidge, String modelNumber) {
		super();
		this.noOfCartidge = noOfCartidge;
		this.priceOfCartidge = priceOfCartidge;
		this.modelNumber = modelNumber;
	}

	public int getNoOfCartidge() {
		return noOfCartidge;
	}

	public void setNoOfCartidge(int noOfCartidge) {
		this.noOfCartidge = noOfCartidge;
	}

	public int getPriceOfCartidge() {
		return priceOfCartidge;
	}

	public void setPriceOfCartidge(int priceOfCartidge) {
		this.priceOfCartidge = priceOfCartidge;
	}

	public String getModelNumber() {
		return modelNumber;
	}

	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}

	@Override
	public int accept(ShoppingCartVisitor visitor) {
		return visitor.visit(this);
	}

}
