$(document).ready(function()
{
 $("#alertSuccess").hide();
 $("#alertError").hide();
});

$(document).on("click", "#btnSave", function(event)
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
 
// Form validation-------------------
var status = validateCustomerForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
}
// If valid------------------------
var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "customersAPI", 
 type : type, 
 data : $("#formCustomer").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onCustomerSaveComplete(response.responseText, status); 
 } 
 }); 
});

function onCustomerSaveComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 }
$("#hidItemIDSave").val(""); 
$("#formCustomer")[0].reset(); 
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{ 
		$("#hidItemIDSave").val($(this).data("customerid")); 
		 $("#NIC").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#CustomerFirstName").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#CustomerLastName").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#HomeNo").val($(this).closest("tr").find('td:eq(4)').text()); 
		 $("#Street").val($(this).closest("tr").find('td:eq(5)').text()); 
		 $("#HomeCity").val($(this).closest("tr").find('td:eq(6)').text()); 
		 $("#CustomerPhone").val($(this).closest("tr").find('td:eq(7)').text()); 
		 $("#AccountNo").val($(this).closest("tr").find('td:eq(8)').text()); 
		 $("#Password").val($(this).closest("tr").find('td:eq(9)').text()); 
		});




$(document).on("click", ".btnRemove", function(event)
		{ 
		 $.ajax( 
		 { 
		 url : "customersAPI", 
		 type : "DELETE", 
		 data : "CustomerID=" + $(this).data("customerid"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
		 onCustomerDeleteComplete(response.responseText, status); 
		 } 
		 }); 
		});
		
function onCustomerDeleteComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 } 
}


// CLIENT-MODEL================================================================
function validateCustomerForm()
{
	// CODE
	if ($("#NIC").val().trim() == "")
	{
	return "Insert NIC.";
	}
	// NAME
	if ($("#CustomerFirstName").val().trim() == "")
	{
	return "Insert First Name.";
}

// NAME
	if ($("#CustomerLastName").val().trim() == "")
	{
	return "Insert Last Name.";
}

// Home No
	if ($("#HomeNo").val().trim() == "")
	{
	return "Insert Last Name.";
}

// Street
	if ($("#Street").val().trim() == "")
	{
	return "Insert Street Name.";
}

// City
	if ($("#HomeCity").val().trim() == "")
	{
	return "Insert the City Name.";
}
// Phone-------------------------------
if ($("#CustomerPhone").val().trim() == ""){
	return "Insert Phone Number.";
}
		

// Account No
	if ($("#AccountNo").val().trim() == "")
	{
	return "Insert the Account Number.";
}
// Password------------------------
if ($("#Password").val().trim() == ""){
	
	return "Insert Password with maximum Character 8.";
}
	return true;
}