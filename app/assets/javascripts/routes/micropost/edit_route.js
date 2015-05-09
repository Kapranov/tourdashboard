Tourdashboard.MicropostEditRoute = Ember.Route.extend({
  model: function() {
    return this.modelFor('micropost');
  },

  actions: {
    update: function(micropost) {
      micropost.save();
    }
  }
});
