package com.mcpanel;
public class ServerManager{
static Process p;
public static void init(){}
public static void start(String jar){
try{p=Runtime.getRuntime().exec("java -Xmx2G -jar "+jar+" nogui");
}catch(Exception e){e.printStackTrace();}}
public static void stop(){if(p!=null){p.destroy();p=null;}}
}