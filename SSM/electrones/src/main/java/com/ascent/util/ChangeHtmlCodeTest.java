
package com.ascent.util;

import junit.framework.*;

public class ChangeHtmlCodeTest extends TestCase {
	private ChangeHtmlCode cs1;
	
	public ChangeHtmlCodeTest(){
		super(); 
	}
	protected void setUp() { 
		cs1= new ChangeHtmlCode();
	}
	
	public void testYYReplace(){
		String str = "Welcome to BeiJing.";
		str = cs1.YYReplace(str,"e","8");
		String str1 = "W8lcom8 to B8iJing.";
		Assert.assertEquals(str, str1);
	}
	
	public void testHTMLEncode(){
		String str = "<测试>";
		str = cs1.HTMLEncode(str);
		String str1 = "&lt;测试&gt;";
		Assert.assertEquals(str, str1);
		System.out.println("测试成功");
	}

}
