import DS from 'ember-data';

var Todo = DS.Model.extend({
  title: DS.attr('string'),
  iaCompleted: DS.attr('boolean', { defaultValue: false })
});

Todo.reopenClass({
  FIXTURES: [
    {
      id: '1',
      title: 'install ember-cli',
      iaCompleted: true
    },
    {
      id: '2',
      title: 'install additional dependencies',
      iaCompleted: true
    },
    {
      id: '3',
      title: 'develop amazing things',
      iaCompleted: false
    }
  ]
});

export default Todo;
