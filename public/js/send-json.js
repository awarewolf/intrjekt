$(function() {

  $(".interject").click(function() {

    var postData = {
      time: Math.floor(wavesurfer.getCurrentTime()),
      content: $(".post-text").val(),
      title: $(".post-title").val()
    }

    $.post('/posts', postData, function(response){
      console.log(response)
    })

  })//end click function

});
