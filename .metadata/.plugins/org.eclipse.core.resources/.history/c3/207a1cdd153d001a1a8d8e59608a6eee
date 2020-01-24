package com.bridgeLabz.DesignPattern.Observer;

import java.util.ArrayList;
import java.util.List;

public class ScoreBoard implements Board {
	private List<Observer> observer;
	private String message;
	private boolean changed;

	public ScoreBoard() {
		this.observer = new ArrayList<>();
	}

	@Override
	public void register(Observer obj) {
		if (obj == null) {
			throw new NullPointerException("Null Observer registerd");
		} else {
			if (!observer.contains(obj)) {
				observer.add(obj);
			}
		}

	}

	@Override
	public void unRegister(Observer obj) {
		observer.remove(obj);

	}

	@Override
	public void notifyObserver() {
		if (!changed) {
			return;
		} else {
			this.changed = false;
			for (Observer observer1 : observer) {
				observer1.update();
			}
		}

	}

	@Override
	public Object getUpdate(Observer obj) {

		return this.message;
	}

	public void postMessage(String message) {
		this.message = message;
		this.changed = true;
		notifyObserver();
	}

}
