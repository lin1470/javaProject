<%--
  Created by IntelliJ IDEA.
  User: bruce
  Date: 19-3-14
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <!--
		模拟修改操作
		1. 原始数据为: 1, Tom, 123456,tom@atguigu.com,12
		2. 密码不能被修改.
		3. 表单回显, 模拟操作直接在表单填写对应的属性值
	-->
  <form action="springmvc/testModelAttribute" method="Post">
    <input type="hidden" name="id" value="1"/>
    username: <input type="text" name="username" value="Tom"/>
    <br>
    email: <input type="text" name="email" value="tom@atguigu.com"/>
    <br>
    age: <input type="text" name="age" value="12"/>
    <br>
    <input type="submit" value="Submit"/>
  </form>
  <br><br>


  <a href="springmvc/testSessionAttributes">test SessionAttributes</a>
  <br><br>

  <a href="springmvc/testMap">test map</a>
  <br><br>

  <a href="springmvc/testModelAndView">test ModelAndView</a>
  <br><br>

  <a href="springmvc/testServletAPI">Test ServletAPI</a>
  <br><br>


  <form action="springmvc/testPojo" method="post">
    username: <input type="text" name="username"/>
    <br>
    password: <input type="password" name="password"/>
    <br>
    email: <input type="text" name="email"/>
    <br>
    age: <input type="text" name="age"/>
    <br>
    city: <input type="text" name="address.city"/>
    <br>
    province: <input type="text" name="address.province"/>
    <br>
    <input type="submit" value="Submit"/>
  </form>
  <br><br>

  <a href="springmvc/testCookieValue">Test CookieValue</a>
  <br><br>

  <a href="springmvc/testRequestHeader">Test RequestHeader</a>
  <br><br>

  <a href="springmvc/testRequestParam?username=hhh">testRequestParam</a>
  <br><br>

  <form action="springmvc/testRest/1" method="post">
    <input  type="hidden" name="_method" value="DELETE">
    <input type="submit" value="test rest delete"/>
  </form>
  <br><br>

  <form action="springmvc/testRest/1" method="post">
    <input  type="hidden" name="_method" value="PUT">
    <input type="submit" value="test rest put"/>
  </form>
  <br><br>

  <form action="springmvc/testRest" method="post">
    <input type="submit" value="test rest post"/>
  </form>
  <br><br>

  <a href="springmvc/testRest/1">test rest get</a>
  <br><br>

  <a href="springmvc/testPathVariable/1">Test PathVariable</a>
  <br><br>

    <a href="hello1/hello"> hello world</a>
    <br><br>

    <a href="springmvc/testResquetsMapping"> hello world</a>
    <br><br>
    <form action="springmvc/testMethod" method="post">
      <input type="submit" value="submitaaa">
    </form>
    <br><br>
    <a href="springmvc/testMethod">Test Method</a>

    <a href="springmvc/testParamsAndHeaders?username=atguigu&age=11">Test ParamsAndHeaders</a>
    <br><br>

    <a href="springmvc/testAntPath/hhh/abc">Test AntPath</a>
    <br><br>
  diuni loumou
  </body>
</html>
