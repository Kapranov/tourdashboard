$(function() {
  var flashCallback;
  flashCallback = function() {
    return $(".alert-box").fadeOut();
  };

  $(".alert-box").bind('click', (function(_this) {
    return function(ev) {
      return $(".alert-box").fadeOut();
    };
  })(this));

  return setTimeout(flashCallback, 3000);
});
