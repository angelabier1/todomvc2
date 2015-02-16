//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/
//  $('.toggle').live('change',function(){
//      $(this).parents('form:first').submit();
//    });

$(function(){
    $('.edit_task input[type=submit]').remove();
    $('.edit_task input[type=checkbox]').click(function() {
        $(this).parent('form').submit();
    });
});