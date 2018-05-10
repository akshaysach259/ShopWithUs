<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="header.jsp"/>

<div class="container">
	<div class = "jumbotron">
 <form name="form" action="addproducts" method="post" onsubmit="return validate()" enctype="multipart/form-data">
        <div class="form-group">
    <label for="">Product Name</label>
    <input type="text" class="form-control" id="pname" name="pName" placeholder="Enter Name">
   
  </div>
  <div class="form-group">
    <label for="">Product Price</label>
    <input type="number" class="form-control" id="" name="pPrice" placeholder="Product Price">
   
  </div>
  
  <div class="form-group">
    <label for="">Product Discription</label>
    <input type="text" class="form-control" id="pDiscription" name="pDiscription" placeholder="Product Discription">
   
  </div>
   <div class="form-group">
    <label for="">Product Categories </label>
    <input type="text" class="form-control" id="pcategories" name="pcategories" placeholder="Product Categories">
   
  </div>
  
   <div class="form-group">
    <label for="">Product Size</label>
    <input type="text" class="form-control" id="pSize" name="pSize" placeholder="Product Size">
   
  </div>
  <br>
  
  
  
  </form>
  </div>
  </div>
   <form method="post" action="FileUpload" enctype="multipart/form-data">
            Select file to upload:
            <input type="file" name="uploadFile" />
            <br/><br/>
            <input type="submit" value="Upload" />
        </form>