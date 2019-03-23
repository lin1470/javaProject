package com.ascent.util;

public class ChangeHtmlCode {

	//将页面传输的文字转换成html文字
	public static String HTMLEncode(String Str){
		   Str = YYReplace(Str,"<","&lt;");
		   Str = YYReplace(Str,">","&gt;");
		   Str = YYReplace(Str,"\n","<BR>");
		   Str = YYReplace(Str," ","&nbsp");
		   return Str;
	}
	
	public static String YYReplace(String Str,String oldStr,String newStr){
	       String ReturnStr="";
	      int i,j,t,m,n;
	      n=0;
	      j=oldStr.length();
	      if (Str.indexOf(oldStr)>-1)
	      {
	      while(Str.indexOf(oldStr,n)>-1)
	      {
	      i=Str.length();
	      if (Str.indexOf(oldStr)==0)
	         Str=newStr+Str.substring(j,i);
	      else
	      {
	        t=Str.indexOf(oldStr);
	        m=(t+j);
	        Str=Str.substring(0,t)+newStr+Str.substring(m,i);
	        n=t+newStr.length()-j+1;
	      }
	      }
	      }
	      ReturnStr=Str;
	      return ReturnStr;

	  }
}
