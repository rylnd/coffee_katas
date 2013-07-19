var files = Object.keys(window.__karma__.files),
    specs = files.filter(function(file) {
      return /spec.*coffee.*\.js$/.test(file)
    });

requirejs.config({
  baseUrl: '/base',
  deps: specs,
  callback: window.__karma__.start
});
