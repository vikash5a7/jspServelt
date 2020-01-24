package com.bridgeLabz.DesignPattern.Mediator;

public class Flight implements Command {
	private IAtc iatcMediator;

	public Flight(IAtc iatcMediator) {
		this.iatcMediator = iatcMediator;
	}

	@Override
	public void land() {
		if (iatcMediator.isAvailable()) {
			System.out.println("Landed SucessFully");
			iatcMediator.setAvaility(false);
		} else {
			System.out.println("Waiting for the runway ");
		}
	}

	public void readyToLand() {
		System.out.println("landing initiated ");
	}

	public void parked() {
		System.out.println("flight is parked");
		iatcMediator.setAvaility(true);
	}
}
