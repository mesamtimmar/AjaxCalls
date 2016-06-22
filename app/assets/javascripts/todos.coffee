# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@CoffeeAdd=() ->
  alert "Added",
  $.ajax '/todos',
  type : "POST"
  data :
    todo:
      title: $('#todo_title').val();
      notes: $('#todo_notes').val();
  dataType: 'script'
  success  : (res, status, xhr) -> console.log res
  error    : (xhr, status, err) ->
  complete : (xhr, status) ->

$(document).ready ->
 $('body').on 'click', '.destroy-link', (e) ->
   alert "Deleted",
   $.ajax "/todos/#{ $(this).data('todo-id') }",
   type : "DELETE"
   dataType: 'script'
   success  : (res, status, xhr) -> console.log res
   error    : (xhr, status, err) ->
   complete : (xhr, status) ->
