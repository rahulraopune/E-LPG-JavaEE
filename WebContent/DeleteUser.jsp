<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Artisteer v3.0.0.39952
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>New Page</title>
    <meta name="description" content="Description" />
    <meta name="keywords" content="Keywords" />


    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="style.ie7.css" type="text/css" media="screen" /><![endif]-->

    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="script.js"></script>
</head>
<body>
<div id="art-main">
    <div class="art-sheet">
        <div class="art-sheet-tl"></div>
        <div class="art-sheet-tr"></div>
        <div class="art-sheet-bl"></div>
        <div class="art-sheet-br"></div>
        <div class="art-sheet-tc"></div>
        <div class="art-sheet-bc"></div>
        <div class="art-sheet-cl"></div>
        <div class="art-sheet-cr"></div>
        <div class="art-sheet-cc"></div>
        <div class="art-sheet-body">
<div class="art-nav">
	<div class="art-nav-l"></div>
	<div class="art-nav-r"></div>
<div class="art-nav-outer">
	<ul class="art-hmenu">
			
	</ul>
</div>
</div>
<!-- orenge plate -->
<div class="cleared reset-box"></div>
<div class="art-header">
                <div class="art-header-clip">
                <div class="art-header-center">
                    <div class="art-header-png"></div>
                    <div class="art-header-jpeg"></div>
                </div>
                </div>
                <div class="art-logo">
                                  <a href="#" class="art-rss-tag-icon" title="RSS"></a>
                                 <h1 class="art-logo-name"><a href="./index.html">GASOLINE PRODUCTS</a></h1>
                                                 <h2 class="art-logo-text">No.1 Gas Products In MAHARASHTRA..!!</h2>
                                </div>
</div>
    
   
<div class="art-block">
    <div class="art-block-body">
                <div class="art-blockcontent">
                    <div class="art-blockcontent-body">
               <p></p>
<%
String uname=(String)session.getAttribute("uname");
System.out.println(uname);

if(uname.equals("rahulraopune")||uname.equals("rohinipatilamalner")||uname.equals("dipikakhairnarnashik")||uname.equals("admin"))
{
    try

    {
     
    String sql1="select username from register";
    Class.forName("com.ibm.db2.jcc.DB2Driver");
    Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/ELPG","Administrator","password");
    System.out.println("Connected");
    PreparedStatement ps=con.prepareStatement(sql1);
      ResultSet rs=ps.executeQuery();
     System.out.println("executeUpdate");
          %>
<form action="DeleteServlet" method="post">
    <center>
    <h1>Select the User to Delete</h1>
     </center>
        <table>
        <tr>
        <td>
        <select name="s1">
        <%  while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
        </td>
            <tr><td><input type="submit" value="Delete"/></td></tr>
       </table>
       
</form>
<%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
}
else
{
	String msg1="Login here as admin to delete..";
	request.setAttribute("msg", msg1);
	getServletContext().getRequestDispatcher("/AdminLogin.jsp").forward(request, response);

}
     
%>
                <p></p>
<p></p>                
                                		<div class="cleared"></div>
                    </div>
                </div>
		<div class="cleared"></div>
    </div>
</div>

                      <div class="cleared"></div>
                    </div>
                 
 <div class="art-block">
    <div class="art-block-body">
                <div class="art-blockcontent">
                    <div class="art-blockcontent-body">
                <div>
  
</div>                
                                		<div class="cleared"></div>
                    </div>
                </div>
		<div class="cleared"></div>
    </div>
</div>

                      <div class="cleared"></div>
                    </div>
                </div>
     <div>       
            <div class="cleared"></div>
            <div class="art-footer">
                <div class="art-footer-t"></div>
                <div class="art-footer-l"></div>
                <div class="art-footer-b"></div>
                <div class="art-footer-r"></div>
                <div class="art-footer-body">
                    <a href="#" class="art-rss-tag-icon" title="RSS"></a>
                            <div class="art-footer-text">
                                <p>Copyright � 2014. All Rights Reserved.</p>
                                                            </div>
                    <div class="cleared"></div>
                </div>
            </div>
    		<div class="cleared"></div>
       
    </div>
    <!-- <div class="cleared"></div>
    <p class="art-page-footer"><a href="http://www.2createawebsite.com/artisteer">Website Template created with Artisteer</a>.</p>
</div> -->

</body>
</html>
