# Prototyper

Prototyper is a simple commandline tool I use to set up a basic Sinatra application. Sinatra is useful for prototyping ideas but also requires a bunch of boilerplate. This helps.

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

## Tests

Run tests with minitest.

``` bash
$ ruby test/unit/prototyper.rb
```

**License: MIT**
