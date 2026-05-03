package com.mcpanel;
public class Main{public static void main(String[]a){
DllNativeLoader.load();
ServerManager.init();
System.out.println("MC核心启动 JDK17");
}}