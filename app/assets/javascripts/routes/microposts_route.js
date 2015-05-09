Tourdashboard.MicropostsRoute = Ember.Route.extend({
  model: function () {
    this.store.find('micropost');

    return this.store.filter('micropost', function(micropost) {
      return !micropost.get('isNew');
    });
  },

  actions: {
    "delete": function(micropost) {
      micropost.destroyRecord();
    }
  }
});
