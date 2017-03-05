<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
   <head>
   	<title>Search for A Student</title>
    
   	<link href="css/bootstrap.min.css" rel="stylesheet">
	 
    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
    
	<script type="text/javascript" src="jquery-1.4.2.min.js" >
	</script>
	
	<script type="text/javascript">
	
		function doSearch() {
			//make request to server
			//alert("Searching for Student");
			$.getJSON ("looseSearch.do",
						{ CHARS: $ ('#userID').val()
				
						},
						function (data) {
							// the CALLBACK
							//alert("Response received for Student Search" + data);
							$('#searchResults').text('');
							
							for (var index in data){
								$('#searchResults').append('<p>'+data[index].firstName+' '+data[index].lastName+' '+data[index].userID+'</p>');
							}
						}				
			);
		}
	</script> 
	
   </head>

   <body>
      <jsp:include page="/myheader.jsp"/>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h1>Perform Loose Search for A Student</h1>
      <div id="searchStudent" class="container">
         <form:form role="form" commandName="student" cssClass="form-group"> 
         	
         		<div class="form-group col-sm-4">
             		<label for="userID" class="control-label" ><fmt:message key="student.userID"/></label>
             	
             		<form:input id="userID" path="userID" cssClass="form-control" onkeyup="doSearch();"/>   
		    			
		    		<div id ="searchResults">
		    			Search Results will appear here.		    		
		    		</div>		 
		    	</div>
		    		    		   		
	 		</form:form>	
	 		   	  
      </div>
      </div>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <jsp:include page="/footer.jsp"/>  
   </body>
</html>
