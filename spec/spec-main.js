var files = Object.keys(window.__karma__.files),
    specs = files.filter(function(file) {
      return /spec.*coffee.*\.js$/.test(file)
    });

require(specs, window.__karma__.start);
// requirejs.config({
//   baseUrl: '/base/src',
//   deps: specs,
//   callback: window.__karma__.start
// });
