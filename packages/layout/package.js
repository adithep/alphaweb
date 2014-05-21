Package.describe({
  summary: "Layout for Alpha-Films Website"
});

Package.on_use(function (api, where) {

  api.use([
    'coffeescript'
    , 'jade'
    , 'stylus'
    , 'famono'
    , 'standard-app-packages']);

  api.add_files([
    'layout.jade'
    , 'layout.coffee'
    , 'layout.stylus'], 'client');

});

Package.on_test(function (api) {
  api.use('layout');

  api.add_files('layout_tests.js', ['client', 'server']);
});
