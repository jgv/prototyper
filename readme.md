# Prototyper

Prototyper is a simple commandline tool I use to set up a basic Sinatra application. Sinatra is useful for prototyping ideas but also requires a bunch of boilerplate. This gem is designed to get the boring stuff out of the way when you just want to bang an idea out. The Sintara installation provided is good to go on Heroku.

## Installation

``` bash
$ gem install prototyper
```
or in your Gemfile: `gem 'prototyper'`

## Usage

``` bash
$ prototyper coolproject
```

This will create a new Sinatra project relative to your working directory. It will look something like this:

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

You will now have a new Sinatra app running on port 5000 by simply typing `foreman start` in your new project directory.

## Tests

Run tests with minitest.

``` bash
$ ruby test/unit/prototyper.rb
```

**License: MIT**
