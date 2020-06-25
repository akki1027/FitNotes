// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require_tree .

// $(function() {
// 	$('#add-set').click(function() {
// 		$('#two').toggle();
// 	});
// });

$(function() {
	$('#add-set-two').click(function() {
		$('#two').show();
		$(this).hide();
	});
});

$(function() {
	$('.cancel-two').click(function() {
		$("#two").hide();
		$('#add-set-two').show();
		$('.weight_two').val(null);
		$('.set_two').val(null);
		$('.rep_two').val(null);
	});
});
// -----------------------------------------
$(function() {
	$('#add-set-three').click(function() {
		$('#three').show();
		$(this).hide();
	});
});

$(function() {
	$('.cancel-three').click(function() {
		$("#three").hide();
		$('#add-set-three').show();
		$('.weight_three').val(null);
		$('.set_three').val(null);
		$('.rep_three').val(null);
	});
});
// -----------------------------------------
$(function() {
	$('#add-set-four').click(function() {
		$('#four').show();
		$(this).hide();
	});
});

$(function() {
	$('.cancel-four').click(function() {
		$("#four").hide();
		$('#add-set-four').show();
		$('.weight_four').val(null);
		$('.set_four').val(null);
		$('.rep_four').val(null);
	});
});







