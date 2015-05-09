Tourdashboard.MicropostsNewRoute = Ember.Route.extend({
  model: function() {
    return this.store.createRecord('micropost');
  },

  actions: {
    create: function(micropost) {
      var route = this;
      micropost.save().then(function() {
        route.transitionTo('microposts');
      });
    }
  }
});
