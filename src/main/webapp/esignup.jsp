<!DOCTYPE html>
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
 	  <h2>EDIT Signup Page</h2>
 	  
 	  <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
        <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
          <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
         <hr/>
        
         <form action="esignup" method="post">
         
          <input type="hidden" name="pid" value="${dto.pid}">
          <div class="form-group" style="width: 60%">
            <label>Username</label>
            <input type="text"  name="username" class="form-control" value="${dto.username}">
         
         </div>
         
         <div class="form-group" style="width: 60%">
            <label>Password</label>
            <input type="password" name="password" class="form-control" value="${dto.password}">
         </div>
         
           
       <div class="form-group" style="width: 60%">
            <label>Email</label>
            <input  type="email"  name="email" class="form-control" value="${dto.email}">
         </div>
         
           <div class="form-group" style="width: 60%">
            <label>Mobile</label>
            <input type="number" name="mobile" class="form-control" value="${dto.mobile}">
         </div>
         
            <div class="form-group" style="width: 60%">
            <label>Address</label>
            <textarea rows="3" name="address" class="form-control">${dto.address}</textarea> 
            
         </div>
         
           <div class="form-group" style="width: 60%">
			 	 <button type="submit" class="btn btn-primary">Update</button>
              <button type="reset" class="btn btn-danger">Clear</button>
                     <a href="signups">
                          <button type="button" class="btn btn-warning">All Data!</button>
                     </a>
         </div>
         </form>
 	  
 </div>

</body>
</html>