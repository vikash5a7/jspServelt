package com.BridgeLabz.AdvJava.ReflectionApi.Metadat;

 
public class CommonUtils {
 
	public static void createSetter(String fName, String fType, StringBuffer sb) {
 
		sb.append("public void").append(" set");
		sb.append(getFieldName(fName));
		sb.append("(" + fType + " " + fName + ") {");
		sb.append("\n\t this." + fName + " = " + fName + ";");
		sb.append("\n" + "}" + "\n");
	}
 
	public static void createGetter(String fName, String fType, StringBuffer sb) {
		sb.append("public " + fType)
				.append((fType.equals("boolean") ? " is" : " get") + getFieldName(fName) + "(){");
		sb.append("\n\treturn " + fName + ";");
		sb.append("\n" + "}" + "\n");
	}
 
	private static String getFieldName(String fName) {
		return fName.substring(0, 1).toUpperCase() + fName.substring(1, fName.length());
	}
}