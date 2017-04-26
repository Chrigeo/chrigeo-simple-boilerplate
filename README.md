# Chrigeo Simple Boilerplate

> Pug + Coffeescript + Sass web project boilerplate, with Grunt, made for simple websites.

[![Greenkeeper badge](https://badges.greenkeeper.io/Chrigeo/chrigeo-simple-boilerplate.svg)](https://greenkeeper.io/)
[![devDependencies Status](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate/dev-status.svg)](https://david-dm.org/Chrigeo/chrigeo-simple-boilerplate?type=dev)

## Getting Started

### Prerequisites

This boilerplate requires [NodeJS](https://nodejs.org) and [Ruby](https://www.ruby-lang.org) to run its tools. You will need to install [Sass](http://sass-lang.com), a CSS extension language, with the following command:

```cmd
gem install sass
```

You will also need to install [Grunt](https://gruntjs.com), a Javascript task runner:

```cmd
npm install -g grunt-cli
```

### Installing

Once all prerequisites are installed, it is easy to get up and running with this boilerplate.

First, you'll need to clone this repository:

```cmd
git clone https://github.com/Chrigeo/chrigeo-simple-boilerplate.git
```

Then, just install the dependencies:
```cmd
npm install
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

## Authors

* **Christopher Georget** - [Chrigeo](https://github.com/Chrigeo)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
