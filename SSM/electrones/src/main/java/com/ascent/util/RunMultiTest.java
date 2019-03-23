package com.ascent.util;


import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class RunMultiTest extends TestCase {
	
	public static Test suite() {
		TestSuite suite = new TestSuite("Test for acesys");
		// $JUnit-BEGIN$
		//添加ChangeHtmlCodeTest测试类
		suite.addTestSuite(ChangeHtmlCodeTest.class);
		
		//这里还可以添加其他测试类
		
		// $Junit-END$
		return suite;
	}

}
