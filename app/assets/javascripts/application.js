//= require jquery
//= require jquery_ujs
//= require foundation
//= require moment
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.uk.js
//= require ember
//= require ember-data
//= require_self
//= require ./tourdashboard

Ember.Handlebars.registerBoundHelper('format-date', function(format, date) {
  return moment(date).format(format);
});

Tourdashboard = Ember.Application.create({
  rootElement: '#ember-app',
  LOG_RESOLVER: false
});

Tourdashboard.ApplicationAdapter = DS.RESTAdapter;

//= require_tree .

$(document).ready(function(){
  $('.datepicker').datepicker();
});
