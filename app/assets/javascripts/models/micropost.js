Tourdashboard.Micropost = DS.Model.extend({
  author: DS.attr('string'),
  email: DS.attr('string'),
  review: DS.attr('string'),
  createdAt: DS.attr('date'),
  updatedAt: DS.attr('date')
});
