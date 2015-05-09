Tourdashboard.MicropostsController = Ember.Controller.extend({
});

Tourdashboard.MicropostsController = Ember.ArrayController.extend({
  sortAscending: false,
  sortProperties: ['createdAt']
});
