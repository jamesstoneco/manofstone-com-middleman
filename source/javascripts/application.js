// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require foundation/js/foundation
//= require foundation/js/foundation/foundation.abide
// require foundation/js/foundation/foundation.accordion
// require foundation/js/foundation/foundation.alert
//= require foundation/js/foundation/foundation.clearing
// require foundation/js/foundation/foundation.dropdown
//= require foundation/js/foundation/foundation.interchange
// require foundation/js/foundation/foundation.joyride
// require foundation/js/foundation/foundation.magellan
//= require foundation/js/foundation/foundation.offcanvas
// require foundation/js/foundation/foundation.orbit
// require foundation/js/foundation/foundation.reveal
// require foundation/js/foundation/foundation.tab
// require foundation/js/foundation/foundation.tooltip
//= require foundation/js/foundation/foundation.topbar
//= require vendor/highlight
//= require vendor/processing
//= require vendor/jquery.timeago
//= require_directory .

$(document).foundation();

$(document).ready(function() {
  // function showHiddenParagraphs() {
  //   $("p.hidden").fadeIn(500);
  // }
  // setTimeout(showHiddenParagraphs, 1000);

  // $('a.mobile-jump').on('click', function(e) {
  //     e.preventDefault();
  //     Foundation.lib_methods.scrollTo($(window), $($(e.currentTarget).attr('href')).offset().top, 1000);
  // });

  $("time.timeago").timeago();
  // code highlighting
  hljs.initHighlightingOnLoad();
});

// google analytics below
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-19284762-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();



