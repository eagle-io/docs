$( document ).ready(function() {

  // Remove the RTD Extra Head CSS that is injected automatically during build
  $("link[href*='sphinx_rtd_theme.css']").remove();

  // Hide extra garbage being inserted
  var fnRemoveGarbage = function(){
    var garbage = [".keep-us-sustainable", ".ethical-rtd"];
    for (var i=0; i<garbage.length; i++) {
      $(garbage[i]).hide();
    }
  }
  
  fnRemoveGarbage()
  window.setTimeout(fnRemoveGarbage, 101)
  window.setTimeout(fnRemoveGarbage, 2000)

  // Shift nav in mobile when clicking the menu.
  $("[data-toggle='wy-nav-top']").click(function(e) {
    $("[data-toggle='wy-nav-shift']").toggleClass("shift");
    $("[data-toggle='rst-versions']").toggleClass("shift");
    e.stopPropagation();
  });


  // Overwrite image link functionality so they dont follow images.
  $("a.image-reference").click(function(e) {
    e.preventDefault();
  });

  // Close menu when you click a link.
  // $(".wy-menu-vertical .current ul li a").click(function() {
  //   $("[data-toggle='wy-nav-shift']").removeClass("shift");
  //   $("[data-toggle='rst-versions']").toggleClass("shift");
  // });
  // $("[data-toggle='rst-current-version']").click(function() {
  //   $("[data-toggle='rst-versions']").toggleClass("shift-up");
  // });
  $("table.docutils:not(.field-list").wrap("<div class='wy-table-responsive'></div>");

});
