$(document).ready(function(){
	$("recipe-list .recipe-link").draggable({
		clone:true;
	});
	// $("copy-recipe-target-box").droppable(event, ui) {
		drop: function(event, ui) {
			// UUMMMM now this is where it gets tricky -  need to call the ruby saved_recipe model method copy_recipe

			// so uh, yeah. how do I do that? 
		}
	}






});