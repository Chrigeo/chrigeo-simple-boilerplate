'use strict';

var path = require('path');
var chalk = require('chalk');

var generator = require('yeoman-generator');
var yosay = require('yosay');

var PugCoffeeSassGenerator = class extends generator {

  constructor(args, opts) {
    super(args, opts);
  }

  prompting() {
    return this.prompt([{
      type: 'input',
      name: 'name',
      message: 'Your project name :',
      default: this.appname
    }]).then((answers) => {
      this.props = answers;
    });
  }

  config() {
    this.fs.copyTpl(
      this.templatePath('_package.json'),
      this.destinationPath('package.json'),
      { name: this.props.name }
    );
    this.fs.copy(
      this.templatePath('.pug-lintrc.json'),
      this.destinationPath('.pug-lintrc.json')
    );
    this.fs.copy(
      this.templatePath('.sass-lint.yml'),
      this.destinationPath('.sass-lint.yml')
    );
    this.fs.copy(
      this.templatePath('Gruntfile.coffee'),
      this.destinationPath('Gruntfile.coffee')
    );
  }

  app() {
    this.fs.copy(
      this.templatePath('src/coffee/app.coffee'),
      this.destinationPath('src/coffee/app.coffee')
    );
    this.fs.copy(
      this.templatePath('src/media/yay.png'),
      this.destinationPath('src/media/yay.png')
    );
    this.fs.copy(
      this.templatePath('src/pug/_footer.pug'),
      this.destinationPath('src/pug/_footer.pug')
    );
    this.fs.copy(
      this.templatePath('src/pug/_head.pug'),
      this.destinationPath('src/pug/_head.pug')
    );
    this.fs.copy(
      this.templatePath('src/sass/style.scss'),
      this.destinationPath('src/sass/style.scss')
    );
    this.fs.copy(
      this.templatePath('src/vendor/bootstrap.min.css'),
      this.destinationPath('src/vendor/bootstrap.min.css')
    );
    this.fs.copy(
      this.templatePath('src/vendor/bootstrap.min.js'),
      this.destinationPath('src/vendor/bootstrap.min.js')
    );
    this.fs.copy(
      this.templatePath('src/vendor/jquery-3.2.1.min.js'),
      this.destinationPath('src/vendor/jquery-3.2.1.min.js')
    );
    this.fs.copy(
      this.templatePath('src/about.pug'),
      this.destinationPath('src/about.pug')
    );
    this.fs.copy(
      this.templatePath('src/index.pug'),
      this.destinationPath('src/index.pug')
    );
  }

  install() {
    this.npmInstall();
  }
}

module.exports = PugCoffeeSassGenerator;
