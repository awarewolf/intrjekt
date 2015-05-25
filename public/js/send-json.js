$(function() {

  $(".interject").click(function() {
    // alert(" Text: " + $(".post-text").val() + "  Timeline position: " + Math.floor(wavesurfer.getCurrentTime()))

    var data = {
      time: Math.floor(wavesurfer.getCurrentTime()),
      content: $(".post-text").val(),
      title: $(".post-title").val()
    }

    $.post('/posts', data, function(response){
      console.log(response)
    })

  })//end click function

});
