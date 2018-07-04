<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="header.jsp"/>
    
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>

<%


Connection conn = ConnectionProvider.getConn();


String uid = (String)session.getAttribute("uid");
String pid = (String)session.getAttribute("pid");
String pname = (String)session.getAttribute("pname");
String pprice = (String)session.getAttribute("pprice");

if(pid != null){
	

String sql = "insert into cart(product_id,user_id,pName,pPrice) values (?,?,?,?)";

PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, pid);
ps.setString(2, uid);
ps.setString(3, pname);
ps.setString(4, pprice);
ps.executeUpdate();


}

Statement statement = null;
ResultSet rs = null; 
%>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                 <%

try{ 
	
	 int number=0;   
	
	System.out.println(conn);
	 statement=conn.createStatement();

	
	String cartsql ="SELECT * FROM cart where user_id='"+uid+"'";

	rs = statement.executeQuery(cartsql);
	while(rs.next()){
		number++;
		  
	%>																												

	 
	   <tr>
	   	  
	    <b>  <td><%=rs.getString("product_id") %></td>
	      <td><%=rs.getString("pName") %></td>
	      <td>&#8377 <%=rs.getString("pPrice") %></td>
	
	      
	       <td><a href='OrderDetails.jsp?u=<%=rs.getString("product_id")%>'><button type="submit" class="btn  btn-danger" >Order Now</button></a> </td>
	    </tr>
	    </div>
	</div>
  </div>
	</div>

	   
 <% 
	
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	     	 
	     	 
	%>
	    </tbody>
	</table>
	  <br>
</div>
</div>                 
</div>   
                                    
                    <jsp:include page="footer.jsp"/>
</div>