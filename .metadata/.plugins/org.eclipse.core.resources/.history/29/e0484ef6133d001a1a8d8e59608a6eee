package com.BridgeLabz.AdvJava.ReflectionApi.privateVar;

import java.lang.reflect.Field;

public class ReflectionTest {
	public static void main(String[] args) {
		try {
			Class<?> cl = Class.forName("com.BridgeLabz.AdvJava.ReflectionApi.privateVar.Welcome");
			try {
				System.out.println(cl);
				Field field = cl.getDeclaredField("message");
				System.out.println(field);
				field.setAccessible(true);
				Object object = field.get(new Welcome());
				String Result = (String) object;
				System.out.println(Result);
			} catch (NoSuchFieldException | SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
