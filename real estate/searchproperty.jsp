
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>

<%HttpSession session=request.getSession(false);
if(session==null)
response.sendRedirect("login.jsp");


 %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title>

 <style type="text/css">

        .style5
        {
            width: 222px;
        }
        .style6
        {
            width: 125px;
        }
        .style8
        {
            width: 150px;
        }

a
   {
       color:Black;
       text-decoration:none;
       font-size:large;
       }
        a:hover {
    color: #FF0000;
    text-decoration:underline;
    background-color:White;
  
}

     .style9
     {
         width: 574px;
         height: 35px;
     }
     .style10
     {
         width: 51px;
         height: 35px;
     }

     .style12
     {
         height: 46px;
     }

     .style13
     {
         height: 45px;
     }

     .style14
     {
         height: 23px;
     }
     .style15
     {
         height: 50px;
     }

     .mystyle
     {
         margin-left:120px;
         
     }
     .mystyle1
     {
         margin-left:60px;
     }

     .style19
     {
         height: 101px;
     }

     .style24
     {
         height: 35px;
     }

     .style25
     {
         width: 196px;
     }
     .mystyle2
     {
         margin-left:120px;
         width:87%
     }

 </style>
 <script>
 function ff1()
 {
	 document.form1.submit();
 }
 </script>
 </head>

<body>
    <form method="post" action="search.jsp" name="form1" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTc3NzMzMjQyMQ9kFgICAw9kFgoCBw8PFgQeBFRleHQFAXMeC05hdmlnYXRlVXJsBQx3ZWxjb21lLmFzcHhkZAIJDw8WBB8BBQtsb2dvdXQuYXNweB8ABQZMb2dvdXRkZAINDw8WAh4ISW1hZ2VVcmwFJWltYWdlcy9zaWx2ZXItcmVjdGFuZ2xlLWJ1dHRvbi1tZC5wbmdkZAIRD2QWAgIBD2QWAgIBD2QWBAIDDxBkZBYBZmQCBQ8QZGQWAWZkAhMPFCsAAg8WBB4LXyFEYXRhQm91bmRnHgtfIUl0ZW1Db3VudGZkZGQYAwUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgMFDEltYWdlQnV0dG9uNQUMSW1hZ2VCdXR0b240BQxJbWFnZUJ1dHRvbjYFCUxpc3RWaWV3MQ88KwAOAwhmDGYNAv////8PZAUKTXVsdGlWaWV3MQ8PZGZka+vTDi0+hc8FCMcsHyoG451lc29uzgK+1bAED5TPO24=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="5BF45227" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdABYLtUzI4PgFPcN1G9BNgTcxXcNrMOaSm/7Wu6nuqKdZpbPlfWEzwgQ7Rg+LErfTYm8RIIWQVb9G6HNjWgtv81RUBM4cL33r+Uva8BQBqJdytjE/bMSTpFwX+bhNyvz2wdLBsGtqGzDW0CV9+SysSPDJSUOvAquBYsstGzLqrqp1NHTMBPGz47jXlOHFQbbGa/QqdYFnf7xnG66kbyWy4r2UDvyIIdGyKbqlKAv3oYd9ETBWSyeEo8rNnecJnzmP8byf5e08v82FQt7r6e8uIBmXVaRBLcITKUwt0jLOaqI/kYaP5BQ6g6CgccuzOjryMASPGLm69uMqMZaNl2WaRpOoE1QxdRWCAiw7MYGg0QxoIDAY9nVbjve5Vf9Q55j6+S+7VXaf1/+YM5SSICVypKjj5tXCk4vdkYyu9YD2OEMuj4KXLlBwgJCUSzOmHp79gqKdg9oi7VdVZRYOxiuu+NVG4ODcS6W157NWcKWjbrTQBgd3pCiM3POrpym1TXt2lWg=" />
</div>
    
    <div style="width:100%">
    <table align="center" width="100%"> 
    <tr><td align="left" class="style10">
        <img id="Image8" src="img/real_estate.jpg" style="height:66px;width:72px;" />
        </td><td class="style9">
        <span id="Label1" style="color:Black;font-size:XX-Large;font-weight:bold;">Real</span>
            <span id="Label2" style="color:Red;font-size:XX-Large;font-weight:bold;">ESTATE</span>
            &nbsp;</td><td align="center" class="style24">
            &nbsp;</td>
        <td align="left"
            style="color: #FF0000; font-size: x-large; font-weight: bold;" 
            class="style24">
            </td>
        <td align="center" class="style24"></td><td align="right" class="style24"></td>
        
       
        <td align="right" class="style24"><%=session.getAttribute("user")%>
            
        <a id="HyperLink1" href="logoutprocess.jsp" style="color:Black;">Logout</a></td></tr> 
    </table>
    </div>
    
    <br />
    <div style="width:100%" >
    <table align="center" style="width: 953px">
    <tr><td class="style6" align="center">

            
        </td><td align="center"><a href="index.html">Home</a>
           </td><td class="style5">
        <a href="sell_rent.html" title="sell/rent your property.Its free!!" >
                Sell/Rent Property</a>
        </td><td class="style25"> <a href="buy.html">
           Luxury Homes</a></td><td class="style8">
       
        </td></tr>
    </table>
    </div>
    <br />
    
    <div style="background:#666666; width: 100%; height: 30px;">
    
    </div>
    
    <br />

    <div align="center" class="mystyle1">
        <img id="Image1" src="img/house1.jpg" style="height:364px;width:90%;" />
    </div>

<br />

    <div class="mystyle2">
        <table style="empty-cells: show;" >
       <tr><td colspan="3"></td></tr>
       <tr><td style="font-weight: 700">
   </td><td bgcolor="#CCCCCC">
<input type="image" name="ImageButton5" id="ImageButton5" src="img/silver-rectangle-button-md.png" style="background-color:#FF6699;border-color:Black;border-width:1px;border-style:Groove;height:54px;width:123px;" />
           </td><td class="style26">
               <input type="image" name="ImageButton4" id="ImageButton4" src="img/important%20(5).jpg" style="background-color:#FF6699;border-color:#999999;border-width:1px;border-style:Groove;height:54px;width:123px;margin-left: 0px" />
           </td></tr>
           
       </table>

        <table style="width: 1125px; height: 125px">
       <tr align="center"><td width="100%" bgcolor="#909090">
           
             

                   <div id="Panel2" style="height:47px;width:1069px;">
	
                   <table align="left" style="width: 1058px; height: 10px;">
                   <tr><td class="style27">
                      
                       <input name="TextBox1" type="text" id="TextBox1" placeholder="Enter City/locality name" style="border-color:#666666;border-style:Groove;font-size:Large;height:45px;width:250px;" />
                           &nbsp;
                       <select name="DropDownList1" id="DropDownList1" style="color:#999999;font-size:Large;height:50px;width:280px;">
		<option value="Property Type">Property Type</option>
		<option value="Agriculture">Agriculture</option>
		<option value="Commercial">Commercial</option>
		<option value="Residential">Residential</option>

	</select>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                       <select name="DropDownList5" id="DropDownList5" style="color:#999999;font-size:Large;height:50px;width:280px;">
		<option value="Budget">Budget</option>
		<option value="0 and 49000">Less than Rs.50000</option>
		<option value="50000 and 100000">Rs.50000 -1 lac</option>
		<option value="100000 and 200000">Rs. 1 Lac-2 lac</option>
		<option value="100000 and 500000">Rs. 2 lac-5 lac</option>
		<option value="500000 and 2000000">Rs. 5 lac -20 lac</option>
		<option value="2000000 and 5000000">Rs. 20 lac- 50 lac</option>
		<option value="5000000 and 8000000">Rs. 50 lac-80 lac</option>
		<option value="8000000 and 10000000">Rs. 80 lac-1 cr</option>
		<option value=" 10000000 and 50000000">rs. 1 cr-5 cr</option>
		<option value="50000000 and 200000000">Rs. 5 cr-20 cr</option>
		<option value="200000000 and 500000000">Rs. 20 cr-50 cr</option>
		<option value="More than Rs. 5 cr">More than Rs. 5 cr</option>

	</select>
                           </td>
                       <td bgcolor="#909090">
                           <input type="image" onClick="ff1()" name="ImageButton6" id="ImageButton6" src="img/download%20(2).png" style="height:50px;width:170px;margin-left: 0px" />
                       </td></tr>
                   </table>
                   
</div>
             
               
           </td></tr>
      
      </table>
      </div>

    <br />
   
     <div style="width:65%; float:left;"
          id="dd1" class="mystyle">
         
             <table style="border: 1px solid #C0C0C0"><tr><td>
                 <img id="ListView1_Image7" src="img/delete.jpg" style="height:100px;width:100px;" /></td><td >
                     <span>
                        <span id="ListView1_Label5" style="display:inline-block;color:#CC0000;font-size:XX-Large;width:700px;">No Property Found as per your search criteria</span>
                        <br />
                        <span id="ListView1_Label13" style="color:#CC0000;font-size:XX-Large;">Please change the search parameters</span></span>
                    </td><td></td></tr> 
                </table>
             </div>
</div>



<div style="margin-left:75%">
<br />
<br />

<table align="left" style="width: 17px;">

<tr>
<td>
    <img id="Image3" src="img/Hamilton-House.jpg" style="border-color:Black;height:141px;width:270px;" />
    </td>
<tr><td style="color: #800000; font-weight: normal; border: 1px solid #000000" 
        class="style19">Wow 
             <br />
             Urban Tree infrastructurePvt Ltd.<br />
             Medavkkam,chennai<br />
            2.3 BHK <br />
             Rs. 3,4 Cr</td></tr>
<tr><td class="style12"></td></tr>
<tr><td></td></tr>
<tr><td>
    <img id="Image4" src="img/img.jpg" style="height:228px;width:270px;" />
    </td></tr>
<tr><td class="style13"></td></tr>
<tr><td></td></tr>
<tr><td>
    <img id="Image5" src="img/bookings.gif" style="height:182px;width:270px;" />
    </td></tr>
    <tr><td class="style15"></td></tr>
    <tr><td></td></tr>
    <tr><td class="style14">
        <img id="Image6" src="img/house%20(1).jpg" style="height:192px;width:270px;" />
        </td></tr>
        <tr><td class="style15"></td></tr>
         <tr><td></td></tr>
        <tr><td class="style14">
        <img id="Image10" src="img/book-now-btn-01.jpg" style="height:192px;width:270px;" />
        </td></tr>
       
</table>
 
</div>


<br />
<br />
 <div style="width: 100%">
        <img id="Image7" src="img/footer.jpg" style="width:100%;" />
    </div>
    <div style="width: 100%">
    
        <img id="Image2" src="img/image136.png" style="width:100%;" />
    
    </div>
     <div>
    
        <span id="Label3" style="font-size:XX-Large;font-weight:bold;">Developed By:</span>
    <span id="Label4" style="color:#CC0000;font-size:X-Large;">SYS</span>
    </div>
    </form>
</body>
</html>
