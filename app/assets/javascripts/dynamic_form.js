function get_dynamic_form(type)
{
 var mptype = type.value;
 console.log(mptype);
 if (mptype == 1)
   {
	 $('#itunes_form').show();
	$('#ad_form').hide();
   }
 if (mptype == 2)
 {
 	$('#ad_form').show();
    $('#itunes_form').hide();
 }  
	
}
