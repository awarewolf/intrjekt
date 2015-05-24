$(function() {

  $(".interject").click(function() {
    alert(" Text: " + $(".post-text").val() + "  Timeline position: " + Math.floor(wavesurfer.getCurrentTime()))
  });

});
