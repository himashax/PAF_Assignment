
$(document).on("click", "#btnSave", function(event){ 

//var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT"; 

	var type = "POST";
	
	$.ajax( 
	 { 
	 url : "ResearcherAPI", 
	 type : type, 
	 data : $("#formRes").serialize(), 
	 dataType : "text", 
	 complete : function(response, status){
		 onItemSaveComplete(response.responseText, status); 
	 } 
	 }); 
});


$(document).on("click", ".btnRemove", function(event)
	{ 
		 $.ajax( 
		 { 
		 url : "ResearcherAPI", 
		 type : "DELETE", 
		 data : "id=" + $(this).data("itemid"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
			 onItemDeleteComplete(response.responseText, status); 
		 } 
	}); 
});


	function onItemSaveComplete(response, status){
		
	if (status == "success") { 
		 var resultSet = JSON.parse(response); 
		 if (resultSet.status.trim() == "success") 
		 { 
			 $("#divItemsGrid").html(resultSet.data); 
		 } 
	 } 
	
	 $("#hidItemIDSave").val(""); 
	 $("#formItem")[0].reset(); 
	}

	
	
	function onItemDeleteComplete(response, status)
	{ 
	if (status == "success") 
	 { 
		 var resultSet = JSON.parse(response); 
		 if (resultSet.status.trim() == "success") 
		 { 
		
			 $("#divItemsGrid").html(resultSet.data); 
		 }
	 }
}