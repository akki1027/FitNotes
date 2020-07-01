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
//= require jquery
//= require bootstrap-sprockets

$(function () {
	$('.form').on('change', 'input[type="file"]', function (event) {
		var file = event.target.files[0];
		var reader = new FileReader();

		if (file.type.indexOf("image") < 0) {
			return false;
		}

		reader.onload = (function (file) {
			return function (event) {
				$(".preview").empty();

				$(".preview").append($('<img>').attr({
					src: event.target.result,
					title: file.name,
					width: "200px"
				}));
			};
		})(file);

		reader.readAsDataURL(file);
	});
});

$(function () {
	$('.edit-note-name-icon').click(function () {
		$('.edit-note-name-form').toggle();
	});
});
// one------------------------------------------
$(function () {
	$('.set').val(1);
});
// two------------------------------------------
$(function () {
	$('#add-set-two').click(function () {
		$('#two').addClass('show-field');
		$('#two').removeClass('hide-field');
		$('.set_two').val(2);
		$(this).hide();
		$('#add-set-three').show();
	});
});
$(function () {
	$('.cancel-two').click(function () {
		$("#two").addClass('hide-field');
		$("#two").removeClass('show-field')
		$("#three").addClass('hide-field');
		$("#three").removeClass('show-field')
		$("#four").addClass('hide-field');
		$("#four").removeClass('show-field')
		$('#add-set-two').show();
		$('#add-set-three').hide();
		$('#add-set-four').hide();
		$('.weight_two').val(null);
		$('.set_two').val(null);
		$('.rep_two').val(null);
		$('.weight_three').val(null);
		$('.set_three').val(null);
		$('.rep_three').val(null);
		$('.weight_four').val(null);
		$('.set_four').val(null);
		$('.rep_four').val(null);
	});
});
// three----------------------------------------
$(function () {
	$('#add-set-three').click(function () {
		$('#three').addClass('show-field');
		$('#three').removeClass('hide-field');
		$('.set_three').val(3);
		$(this).hide();
		$('#add-set-four').show();
	});
});
$(function () {
	$('.cancel-three').click(function () {
		$("#three").addClass('hide-field');
		$("#three").removeClass('show-field');
		$('#four').addClass('hide-field');
		$('#four').removeClass('show-field')
		$('#add-set-three').show();
		$('#add-set-four').hide();
		$('.weight_three').val(null);
		$('.set_three').val(null);
		$('.rep_three').val(null);
		$('.weight_four').val(null);
		$('.set_four').val(null);
		$('.rep_four').val(null);
	});
});
// four-----------------------------------------
$(function () {
	$('#add-set-four').click(function () {
		$('#four').addClass('show-field');
		$('#four').removeClass('hide-field');
		$('.set_four').val(4);
		$(this).hide();
	});
});
$(function () {
	$('.cancel-four').click(function () {
		$("#four").addClass('hide-field');
		$("#four").removeClass('show-field');
		$('#add-set-four').show();
		$('.weight_four').val(null);
		$('.set_four').val(null);
		$('.rep_four').val(null);
	});
});
