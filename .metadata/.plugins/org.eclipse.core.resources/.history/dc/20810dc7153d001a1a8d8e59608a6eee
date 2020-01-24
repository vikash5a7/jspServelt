package com.bridgeLabz.DesignPattern.Mediator;

public class Runway implements Command {
	private IAtc actMediator;
	
	public Runway(IAtc actMediator) {
		this.actMediator =actMediator;
	}
	
	
	@Override
	public void land() {
		// TODO Auto-generated method stub
		System.out.println("Runway is available for landing: ");
		actMediator.setAvaility(true);
	}

}
