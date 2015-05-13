Tourdashboard.Router.map(function() {
  this.resource('cashorder');
  this.resource('microposts', function() {
    this.resource('micropost', { path: ':micropost_id' }, function() {
      this.route('edit');
    });
    this.route('new');
  });
});
