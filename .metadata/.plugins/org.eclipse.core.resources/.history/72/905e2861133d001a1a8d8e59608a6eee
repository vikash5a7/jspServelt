package com.BridgeLabz.AdvJava.ReflectionApi.Meta;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;

public class Clients {
	public static void main(String[] args) {
		System.out.println("--- class name---_");
		try {
			Class<?> cl = Class.forName("com.BridgeLabz.AdvJava.ReflectionApi.Meta.Child");
			System.out.println(cl.getName());
			System.out.println(cl.getSimpleName());
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("\n --- Parent class detail means  Super Class ---");
		try {
			Class<?> cl = Class.forName("com.BridgeLabz.AdvJava.ReflectionApi.Meta.Child");
			System.out.println(cl.getSuperclass());
			System.out.println("InterFace are : " + Arrays.toString(cl.getInterfaces()));
			int modifiers = cl.getModifiers();
			System.out.println("Modifiers: " + Modifier.toString(modifiers) );
			System.out.println("Field are..............");
			Field[] fields = cl.getFields();
			System.out.println("Fields are " + Arrays.toString(fields));
			Field[] declaredFields = cl.getDeclaredFields();
			System.out.println("fields are: " + Arrays.toString(declaredFields));
			Constructor<?>[] constructors = cl.getConstructors();
			System.out.println("Constructor " + Arrays.toString(constructors));
			System.out.println();
		} catch (ClassNotFoundException e)  {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static String getDeclaredConstructor(String string) {
		// TODO Auto-generated method stub
		return null;
	}

}
