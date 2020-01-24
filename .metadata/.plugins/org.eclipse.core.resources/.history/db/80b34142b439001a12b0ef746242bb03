package com.bridgeLabz.DesignPattern.SingleTone;

/*
 *  At one time if two user try to access same resource  then  there might be chance that 
 *  creating two instance of class so for avoiding the creation of two instance we should make them as 
 *  synchronize 
 */
public class SynchronizedSinglTon1 {
	private static SynchronizedSinglTon1 instance;

	private SynchronizedSinglTon1() {
	}

	public static synchronized SynchronizedSinglTon1 getIntance() {
		if (instance == null) {
			instance = new SynchronizedSinglTon1();
		}
		return instance;
	}

}
