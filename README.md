# README

## Getting started

To get started with the app, clone the repo, change directories into the clonde repo and then install the needed gems:

```
$ gem install bundler -v 2.2.17
$ bundle _2.2.17_ config set --local without 'production'
$ bundle _2.2.17_ install
```

Next, migrate the database:

```
$ rails db:migrate
```
Next, seed the database:

```
$ rails db:seed
```
run the test suite to verify that everything is working correctly:

```
$ rails test
```
If the test suite errors with webpack error:

```
$ rails webpacker:install
```
if prompted to overrite /babel.config.js:

```
$ y
```

run tests again and 

```
$ rails test
```
If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Visit applicaiton at http://127.0.0.1:3000
