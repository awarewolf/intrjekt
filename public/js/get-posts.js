$(document).ready(function(){

    $(".get-json").click(function(){

        $.getJSON("demo_ajax_json.js", function(result){
            consol.log(result)
        });

    console.log('get json')
    });

});