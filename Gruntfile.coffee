module.exports = (grunt) ->
  # Grunt + Plugins configuration
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    watch: {
      coffee: {
        options: { livereload: true },
        files:['src/coffee/**.coffee'],
        tasks:['coffeelint', 'coffee', 'uglify']
      },
      pug: {
        options: { livereload: true },
        files:['src/*.pug', 'src/pug/*.pug'],
        tasks:['pug']
      },
      sass: {
        options: { livereload: true },
        files:['src/sass/**.scss', 'src/sass/**.sass'],
        tasks:['sasslint', 'sass:dist']
      },
      media: {
        options: { livereload: true },
        files:['src/media/**'],
        tasks:['clean:media', 'copy']
      }
    },
    express:{
      all:{
        options: {
          port: 3000,
          hostname: 'localhost',
          bases: ['dist/'],
          livereload: true
        }
      }
    },
    pug: {
      compile: {
        options: {
          data: {
            debug: false
          }
        },
        files: {
          'dist/index.html': 'src/index.pug'
        }
      }
    },
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> ' +
          ' <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      },
      build: {
        src: 'dist/js/app.js',
        dest: 'dist/js/app.js'
      }
    },
    puglint: {
      src: ['src/**.pug']
    },
    sasslint: {
      target: ['src/sass/**']
    },
    coffeelint: {
      app: ['src/coffee/*.coffee']
    },
    coffee: {
      compile: {
        files: {
          'dist/js/app.js': [
            'src/coffee/*.coffee'
          ]
        }
      }
    },
    sass: {
      dist: {
        options: {
          style: 'expanded'
        },
        files: [{
          "expand": true,
          "cwd": "src/sass/",
          "src": ["*.scss", "*.sass"],
          "dest": "dist/styles/",
          "ext": ".css"
        }]
      }
    },
    clean: {
      all: ['./dist', './.sass-cache'],
      media: ['./dist/media']
    },
    copy: {
      main: {
        files: [{
          expand: true,
          flatten: true,
          src: ['src/media/**'],
          dest: 'dist/media/',
          filter: 'isFile'
        }]
      }
    }
  })

  # Grunt plugins loading
  grunt.loadNpmTasks 'grunt-parallel'
  grunt.loadNpmTasks 'grunt-express'
  grunt.loadNpmTasks 'grunt-puglint'
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-sass-lint'
  grunt.loadNpmTasks 'grunt-contrib-pug'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'

  # Custom tasks
  grunt.registerTask 'build', [
    'clean:all',
    'puglint',
    'pug',
    'sasslint',
    'sass:dist',
    'coffeelint',
    'coffee',
    'uglify',
    'copy'
  ]

  grunt.registerTask 'server', [
    'build',
    'express',
    'watch'
  ]

  grunt.registerTask 'default', 'server'
