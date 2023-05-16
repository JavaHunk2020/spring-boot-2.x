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
 	  <h2>Signup Page</h2>
 	  
 	  <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
        <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
          <img  src="students_schoool_footer2.png"  style="height: 180px;"/>
         <hr/>
        
         <form action="csignup" method="post">
         
          <div class="form-group" style="width: 60%">
            <label>Username</label>
            <input type="text"  name="username" class="form-control">
         
         </div>
         
         <div class="form-group" style="width: 60%">
            <label>Password</label>
            <input type="password" name="password" class="form-control">
         </div>
         
           
       <div class="form-group" style="width: 60%">
            <label>Email</label>
            <input  type="email"  name="email" class="form-control">
         </div>
         
           <div class="form-group" style="width: 60%">
            <label>Mobile</label>
            <input type="number" name="mobile" class="form-control">
         </div>
         
            <div class="form-group" style="width: 60%">
            <label>Address</label>
            <textarea rows="3" name="address" class="form-control"></textarea> 
            
         </div>
         
           <div class="form-group" style="width: 60%">
			 	 <button type="submit" class="btn btn-primary">Signup</button>
              <button type="reset" class="btn btn-danger">Clear</button>
                     <a href="signups">
                          <button type="button" class="btn btn-warning">All Data!</button>
                     </a>
         </div>
         </form>
 	  
 </div>

</body>
</html>