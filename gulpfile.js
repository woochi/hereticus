var gulp = require('gulp'),
  nodemon = require('gulp-nodemon');

gulp.task('develop', function () {
  nodemon({
    script: 'app.coffee',
    ext: 'js jade',
  });
});

gulp.task('default', [
  'develop'
]);
