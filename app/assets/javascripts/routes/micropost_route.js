Tourdashboard.MicropostRoute = Ember.Route.extend({
  model: function (params) {
    return this.store.find('micropost', params.micropost_id);
  }
});
