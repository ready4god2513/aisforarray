$(function(){
  $("#samples").cycle({
    delay: -1000
  });
  $("#samples").css("height", $("#samples img").first().css("height"));
});