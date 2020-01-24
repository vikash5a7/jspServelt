package com.bridgeLabz.DesignPattern.Observer;

public class OberSerImpl implements Observer {
	
	private String name ;
	private Board board;
	
	public OberSerImpl(String name)
	{
		this.name= name;
	}
	
	
	
	@Override
	public void update() {
		String msg = (String) board.getUpdate(this);
		if(msg == null)
		{
			System.out.println(name + "No new msg");
		}
		else {
			System.out.println(name + " : comsuming sms-> "+ msg);
		}
	}

	@Override
	public void suscribe(Board board) {
		this.board= board;
		
	}
	

}
