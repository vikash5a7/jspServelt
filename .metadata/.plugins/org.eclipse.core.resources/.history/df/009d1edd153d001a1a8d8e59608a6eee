package com.bridgeLabz.DesignPattern.Observer;

public class ObserverPatterClient {
	public static void main(String[] args) {
		ScoreBoard sb = new ScoreBoard();
		
		Observer observer1 = new OberSerImpl("vikash ");
		Observer observer2 = new OberSerImpl("Ram ");
		Observer observer3 = new OberSerImpl("vicky ");
		Observer observer4 = new OberSerImpl("vishnu ");
		Observer observer5 = new OberSerImpl("vivek ");
		Observer observer6 = new OberSerImpl("Raju ");
		
		sb.register(observer1);
		sb.register(observer2);
		sb.register(observer3);
		sb.register(observer4);
		sb.register(observer5);
		sb.register(observer6);
		
		observer1.suscribe(sb);
		observer2.suscribe(sb);
		observer3.suscribe(sb);
		observer4.suscribe(sb);
		observer5.suscribe(sb);
		
		observer6.suscribe(sb);
		
		observer1.update();
		
		sb.postMessage("IPL run: 154/7");
		observer1.update();
		sb.unRegister(observer6);
		sb.postMessage("IPL run: 189/9");
		
	}

}
