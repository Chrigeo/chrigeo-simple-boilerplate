# PugCoffeeSass Yeoman Generator

> Pug + Coffeescript + Sass web project generator, with Grunt, made for simple websites.

[![Greenkeeper badge](https://badges.greenkeeper.io/Chrigeo/chrigeo-simple-boilerplate.svg)](https://greenkeeper.io/)
[![dependencies Status](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate/status.svg)](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate)
[![devDependencies Status](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate/dev-status.svg)](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate?type=dev)

## Getting Started

### Prerequisites

This generator requires [NodeJS](https://nodejs.org) to run its tools. The generated project requires [Ruby](https://www.ruby-lang.org) and [Sass](http://sass-lang.com), a CSS extension language, installed with the following command:

```cmd
gem install sass
```

You will also need to install [Grunt](https://gruntjs.com), a Javascript task runner:

```cmd
npm install -g grunt-cli
```

### Installing

Once all prerequisites are installed, it is easy to get up and running with this boilerplate.

First, you'll need to install [Yeoman](http://yeoman.io) and this generator:

```cmd
npm install -g yo generator-pugcoffeesass
```

Then, run the following command:
```cmd
yo pugcoffeesass
```

And you are good to go!

### Usage

#### Development

Launch the dev server with the command:

```cmd
grunt server
```

And access it on your browser via [http://localhost:3000](http://localhost:3000).

Every modification in the `src/` directory triggers a new build and reloads your browser page.

#### Production

Build the project with the command:

```
grunt build
```

You'll find the compiled files in the generated `dist/` folder.

## Features

* [Pug](https://pugjs.org) - Template engine for writing HTML
* [Sass](http://sass-lang.com) - Extension of the CSS language
* [CoffeeScript](http://coffeescript.org) - Language that compiles into JavaScript
* Linters for each of these languages:
  * [pug-lint](https://www.npmjs.com/package/pug-lint),
  * [sass-lint](https://www.npmjs.com/package/sass-lint),
  * [CoffeeLint](http://www.coffeelint.org)
* Development server, powered by [grunt-express](https://www.npmjs.com/package/grunt-express) and [grunt-contrib-watch](https://www.npmjs.com/package/grunt-contrib-watch)

## Tests

Testing this package requires [Mocha](http://mochajs.org) and [CoffeeScript](http://coffeescript.org):

```cmd
npm install -g mocha coffeescript
```

You can then run the tests with the following command:

```cmd
npm test
```

## Authors

* **Christopher Georget** - [Chrigeo](https://github.com/Chrigeo)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
