# Prototyper

Prototyper is a simple commandline tool that sets up a basic web application. This gem is designed to get scaffolding a project out of the way. Currently it provides two different project types: HTML and Sinatra. The Sintara installtion provided is good to go on Heroku.

## Installation

``` bash
$ gem install prototyper
```
or in your Gemfile: `gem 'prototyper'`

## Usage

``` bash
$ prototyper coolproject
```

This will create a new HTML project relative to your working directory. It will look something like this:

```
.
├── assets
│   ├── javascripts
│   │   └── application.js
│   └── stylesheets
│       └── application.css
└── index.html
```

Instead of HTML, you may choose to scaffold a Sinatra app by passing the option `--type sinatra`. This will generate an app that looks like so:


```
.
├── Gemfile
├── Procfile
├── app.rb
├── assets
│   ├── javascripts
│   │   ├── application.js
│   │   └── html5shiv.js
│   └── stylesheets
│       └── application.css
├── config.ru
├── generator.rb
└── views
    └── index.erb
```

## Options

```
$ protoyper --help

Usage: prototyper [projectname] [options]
        --type [TYPE]                Select scaffolding type (sinatra, html)
        --html                       Generate HTML scaffolding
        --sinatra                    Generate Sinatra scaffolding
```

## Tests

Run tests with minitest.

``` bash
$ rake test
```

**License: MIT**
