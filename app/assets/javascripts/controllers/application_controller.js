Tourdashboard.ApplicationController = Ember.Controller.extend({
  format: "DD-MM-YYYY HH:mm",
  date: new Date(),
  formattedDate: function() {
    var date = this.get('date'),
      format = this.get('format');
    return moment(date).format(format);
  }.property('format', 'date')
});
