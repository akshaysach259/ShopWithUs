<%@page import="javax.servlet.jsp.jstl.sql.ResultSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp"/>

 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "users";
String userId = "root";
String password = "";

try {
Class.forName(driverName).newInstance();
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);

%>

<div class="container">
	<div class = "jumbotron">
 <form name="form" action="EditServlet" method="post">
 <%
 statement=connection.createStatement();
 String u = request.getParameter("u");
 int num = Integer.parseInt(u);
 String data = "SELECT * FROM products where pid='"+num+"'";
 resultSet = statement.executeQuery(data);
 while (resultSet.next()){

	 
	 %>
	 <input type="hidden" name="pid" value='<%=resultSet.getString("pid") %>'/>
        <div class="form-group">
    <label for="">Product Name</label>
    <input type="text" class="form-control" id="pname" name="pName" value='<%=resultSet.getString("pName") %>'/>
   
  </div>
  <div class="form-group">
    <label for="">Product Price</label>
    <input type="number" class="form-control" id="pPrice" name="pPrice" value='<%=resultSet.getString("pPrice") %>'>
   
  </div>
  
  <div class="form-group">
    <label for="">Product Discription</label>
    <input type="text" class="form-control" id="pDiscription" name="pDiscription" value='<%=resultSet.getString("pDiscription") %>'>
   
  </div>
   <div class="form-group">
    <label for="">Product Categories </label>
    <input type="text" class="form-control" id="pCategories" name="pCategories" value='<%=resultSet.getString("pCategories") %>'>
   
  </div>
  
   <div class="form-group">
    <label for="">Product Size</label>
    <input type="text" class="form-control" id="pSize" name="pSize" value='<%=resultSet.getString("pSize") %>'>
   
  </div>
   <%
 }
   %>
  <br>
   <button type="submit" class="btn btn-block btn-def">Submit</button>
  </form>
  </div>
  </div>


<jsp:include page="footer.jsp"/>


