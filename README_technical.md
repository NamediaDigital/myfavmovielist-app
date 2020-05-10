# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

Commands:

- `rails server` or `rails s` - runs the rails app
- `rails generate controller movies` or `rails g controller movies` - generates controller “movies”
- `rails generate model NAME [field[:type][:index] field[:type][:index]] [options]` as in `rails g model movie title:string rating:string total_gross:decimal` - generates model movie
- `rails -T` - shows all rails tasks
- `rails -T db` - shows all database-related tasks
- `rails db:migrate` - runs the migration
- `rails db:migrate:status` runs the migration and shows the status
- `rails console` or `rails c` - starts rails console

###### In irb session:

- `Movie.all` results in `Movie Load (0.2ms) SELECT "movies".* FROM "movies" LIMIT ? [["LIMIT", 11]]`
- `movie = Movie.new` results in `#<Movie id: nil, title: nil, rating: nil, total_gross: nil, created_at: nil, updated_at: nil>`
- `movie.title = "Iron Man"` assigning a new title
- `movie.save` - saves the new movie in the database
- `Movie.count` - counts records for the Movie model
- `Movie.create(title: "Spider-Man", rating: "PG-13", total_gross: 825025036)` - creates and saves a new moview in the database
- `iron_man = Movie.find(1)` - find a movie by index of 1
- `spider_man = Movie.find_by(title: "Spider-Man")` - finds a movie by its title
- `spider_man.destroy` - deletes the movie
- `exit` - command to exit the irb session

###### In interactive console for the database:

- `rails dbconsole` - starts the db console
- `SQLite commands begin with a dot (".")`
- `sqlite> .tables` - finds all tables
- `.schema movies` - displays schema for the movies table, outputs `CREATE TABLE "movies" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "rating" varchar, "total_gross" decimal, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);`
- `sqlite> .schema schema_migrations` outputs `CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);`
- `sqlite> select * from schema_migrations;` outputs a timestamp
- `sqlite> .quit` to quit the database console
