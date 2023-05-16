<!DOCTYPE html>
<%@page import="com.it.SignupDTO"%>
<%@page import="java.util.List"%>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
   <header style="background-color: yellow;height: 30px;">
   </header>

 <div  class="container">
 	  <h2>Signup Page</h2>
 	  
 	  <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
        <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
          <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
         <hr/>
        
        <h1>PROFILE DATA!</h1>
        <span style="color:red;font-size: 16px;font-weight: bold;">${message}</span>
        
          <form action="seachRecords">
          	<input type="text"  value="${param.searchText}"  name="searchText" class="form-control" style="width: 30%;display: inline;">
            <button type="submit" class="btn btn-primary" style="margin-top: -5px;">GO!!!</button>
            
             <a href="signups">
             <button type="button" class="btn btn-primary" style="margin-top: -5px;">Clear</button>
             </a>
            </form>
            <hr/>
            
              <%
		 List<SignupDTO> dtos=(List<SignupDTO>)request.getAttribute("signups");
              
              %>
            
         <b>Total Record(s) : <span style="color:blue;"><%=dtos.size()%></span></b>
         <hr/>
         <table class="table table-bordered">
    <thead>
      <tr>
      <th>Pid</th>
        <th>
         <a href="sortData?sort=username&orderBy=asc"> 
           <img alt="" src="ad.png">
        </a>
        Username</th>
        <th>Password</th>
        <th>
        <a href="sortData?sort=email&orderBy=desc"> 
        <img alt="" src="ad.png">
        </a>
          Email
        </th>
         <th>Mobile</th>
         <th>Address</th>
         <th>Created Date</th>
         <th>Action</th>
      </tr>
    </thead>
    <tbody>
    
      <%
        for(SignupDTO signupDTO : dtos){        
      %>
      <tr>
         <td><%=signupDTO.getPid()%></td>
        <td><%=signupDTO.getUsername()%></td>
       <td><%=signupDTO.getPassword()%></td>
        <td>
        <%=signupDTO.getEmail()%></td>
         <td><%=signupDTO.getMobile()%></td>
          <td><%=signupDTO.getAddress()%></td>
             <td><%=signupDTO.getDoe()%></td>
             <td>
              <a href="dsignup?pid=<%=signupDTO.getPid()%>">
              <button type="button" class="btn btn-danger">DELETE</button>
              </a>
              
              <a href="esignup?pid=<%=signupDTO.getPid()%>">
              <button type="button" class="btn btn-primary">EDIT</button>
              </a>
             </td>
      </tr>
      
      <% } %>
      
    </tbody>
  </table>
        
 </div>

</body>
</html>