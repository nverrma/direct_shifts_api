# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  3.0.1

# To setup project environment
  1. Take repository clone
  2. Install postgres and set and set username password
  3. Set your postgres username and password in `config/database.yml`
  4. run `$ bundle install`
  5. run `$ rails db:create db:migrate`
  6. generate the devise_jwt_secret key by running `$ bundle exec rake secret` then paste it somewhere temporarily
  7. open Rails credentials with nano editor: `$ EDITOR="nano" bin/rails credentials:edit`
  8. At the bottom of the file add `devise_jwt_secret: <Here goes the key that you have previously generated>`
  9. Save the file
  10. run `$ rails s`