package com.bridgeLabz.DesignPattern.Mediator;

public class client {

	public static void main(String[] args) {
		IAtc actMeditor = new Atc();
		
		Runway raunRunway = new Runway(actMeditor);
		Flight flight11 = new Flight(actMeditor);
		Flight flight22=new Flight(actMeditor);
		actMeditor.registerFlight(flight11);
		actMeditor.registerRunway(raunRunway);
		flight11.readyToLand();
		raunRunway.land();
		flight11.land();
		flight22.land();
		flight11.parked();
		System.out.println("after park");
		flight22.land();
		
		
	}
}
