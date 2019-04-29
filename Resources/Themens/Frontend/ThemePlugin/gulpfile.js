const gulp = require('gulp');
const sass = require('gulp-sass');
const sasslint = require('gulp-sass-lint');
const cssnano = require('gulp-cssnano');
const concat = require('gulp-concat');
const babel = require('gulp-babel');


gulp.task('sass-lint', function() {
    return gulp.src(['frontend/_public/src/scss/**/*.scss'])
        .pipe(sasslint())
        .pipe(sasslint())
        .pipe(sasslint.format())
        .pipe(sasslint.failOnError())
});





// Compile and concat SASS file
gulp.task('sass', function() {
    return gulp.src('frontend/_public/src/scss/all.scss')
        .pipe(sass())
        .pipe(concat('styles.min.css'))
        .pipe(gulp.dest('frontend/_public/src/css'))

});

// Concat js file
gulp.task('js', function() {
    return gulp.src('app/js/*.js')
        .pipe(babel({
            presets: ['@babel/env']
        }))
});




//watch tasks
gulp.task('watch', function(){
    gulp.watch(['frontend/_public/src/scss/**/*.scss', 'frontend/_public/src/js/**/*.js'], gulp.series(['js' ,'sass', 'sass-lint']));
});

gulp.task('default', gulp.series(['js', 'sass', 'sass-lint', 'watch']));

