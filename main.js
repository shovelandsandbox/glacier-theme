var app = {};

app.Todo = Backbone.Model.extend({
  defaults: {
    title: '',
    completed: false
  }
});

app.TodoList = Backbone.Collection.extend({
  model: app.Todo,
  localStorage: new Store('backbone-todo')
});

app.AppView = Backbone.View.extend({
  // el, initialize, render, events
  el: '#todoapp',

  initialize: function() {
    this.render();

    var test = test;
  },

  render: function() {
    this.$el.html("Hello World");
  }
});

app.TodoView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#item-template').html()),
  render: function() {
    this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
});

app.todoList = new app.TodoList();

