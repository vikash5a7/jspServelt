package com.bridgeLabz.DesignPattern.Mediator;

public class Atc implements IAtc{
	@SuppressWarnings("unused")
	private Runway runway;
	@SuppressWarnings("unused")
	private Flight flight;
	public boolean available;

	
	@Override
	public void registerFlight(Flight flight) {
		this.flight=flight;
	}

	@Override
	public void registerRunway(Runway runway) {
		// TODO Auto-generated method stub
		this.runway=runway;
		
	}

	@Override
	public void setAvaility(boolean status) {
		// TODO Auto-generated method stub
		this.available=status;
		
	}

	@Override
	public boolean isAvailable() {
		return available;
		
	}

}
