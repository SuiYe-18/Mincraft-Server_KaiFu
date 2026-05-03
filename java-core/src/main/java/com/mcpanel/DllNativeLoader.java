package com.mcpanel;
public class DllNativeLoader{
public static void load(){
try{System.load("binaries/NetworkInterface.dll");
System.load("binaries/StabilityGuard.dll");
}catch(Exception e){}}}
