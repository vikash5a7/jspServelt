package com.BridgeLabz.AdvJava.ReflectionApi.Metadat;
import java.lang.reflect.Field;
import java.util.Arrays;
/**
 * @author KK JavaTutorials 
 * Generating Getters And Setters Using Reflection Java  API
 */
public class MainTest {
 
	public static void main(String[] args) {
		try {
			Class<?> cls = Class.forName("com.BridgeLabz.AdvJava.ReflectionApi.Metadat.Person");
			// Getting fields of the class Person
			System.out.println("---------------Getting fields of the class Person--------------------");
			Field[] fields = cls.getDeclaredFields();
			System.out.println("Fields: " + Arrays.toString(fields));
 
			StringBuffer sb = new StringBuffer();
			System.out.println("---------All Fields and crossponding Setter and Getter methods--------------");
			for (Field field : fields) {
				String fieldName = field.getName();
				String fieldType = field.getType().getSimpleName();
 
				System.out.println("Field Name: " + fieldName);
				System.out.println("Field Type: " + fieldType);
 
				CommonUtils.createSetter(fieldName, fieldType, sb);
 
				CommonUtils.createGetter(fieldName, fieldType, sb);
			}
			System.out.println(sb.toString());
 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
 
	}
 
}