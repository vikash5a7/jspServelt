package com.bridgeLabz.DesignPattern.SingleTone;

/*
 *  At one time if two user try to access same resource  then  there might be chance that 
 *  creating two instance of class so for avoiding the creation of two instance we should make them as 
 *  synchronize , this Thread safe 
 *  in one thread complete then only second thread will invoke
 *  it's Not making whole method as synchronized 
 */
public class SynchSingletoneBlock {
	private static SynchSingletoneBlock instance;

	private SynchSingletoneBlock() {
	}

	public static SynchSingletoneBlock getIntance() {
		if (instance == null) {
			synchronized (SynchSingletoneBlock.class) {
				if (instance == null) {
					instance = new SynchSingletoneBlock();
				}
			}
		}
		return instance;
	}

}
