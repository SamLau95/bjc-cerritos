# Rails 4 Starter App

## Using the Starter App

Copy all of the files into a new directory (unless you want the commit history of this app, in that case, copy over everything including the .git directory). Once you have copied over the files, install the gems by running:

    bundle install

Then, rename the application using [rails-rename](https://github.com/negativetwelve/rails-rename) by running the command:

    rails g rename NewAppName

where `NewAppName` is the name of your custom application.

## Setup

First, make a file for your environment variables:

    cp .env.sample .env

We're using Devise so you should set `DEVISE_SECRET_KEY` in `.env`

Copy over the `database.yml` file from `config/database.yml.sample` to `config/database.yml`:

    cp config/database.yml.sample config/database.yml
    
Then fill in `config/database.yml` with your postgres username and password.

Create the database using:

    rake db:create

Migrate the database:

    rake db:migrate

To seed the database, we have a rake task that loads users specifically for development purposes only.

    rake db:seed:development

For faster development, you might want to add yourself to the `db/seeds/development.rb` file.

Start the server:

    foreman start -f Procfile.dev

Happy developing!

## Heroku Deployment

There's a file, `.env`, which contains environment variables (mostly keys) that are not safe to upload to GitHub (added to .gitignore) so if you create this file, you can set your environment variables here easily.
For example:

    SECRET_KEY=secret-password

Since we use Git to deploy to Heroku, this file won't be included, so you'll have to set the environment variables manually, and this can be done just once. The equivalent of the above on Heroku is:

    heroku config:set SECRET_KEY=secret-password
