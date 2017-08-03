console.log("Script is connected.");

$(document).ready(function(){
  $("#hide").click(function(){
    $("#cat1").toggle();
  })
})

$(document).ready(function(){
  $("#fade").click(function(){
    $("#cat2").fadeToggle("slow");
  })
})

$(document).ready(function(){
  $("#slide").click(function(){
    $("#cat3").slideToggle();
  })
})

$(document).ready(function(){
  $("#animate").click(function(){
    $("#cat4").animate({left: '250px', opacity: '0.5'});
  });
});

$(document).ready(function(){
  $("#animate-queue").click(function(){
    var kitty = $("#cat5");
    kitty.animate({left: '300px'}, "slow");
    kitty.animate({height: 'toggle'}, "slow");
    kitty.animate({width: 'toggle'}, "slow");
    kitty.animate({width: '200px'});
    kitty.animate({left: '0px'}, "slow");
    kitty.animate({opacity: 'toggle'}, "slow");
  });
});