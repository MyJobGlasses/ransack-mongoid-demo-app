# Ransack mongoid demo app
This demo application uses [MyJobGlasses](https://www.myjobglasses.com/) fork of [ransack-mongoid](https://github.com/MyJobGlasses/ransack-mongoid) and [activeadmin-mongoid](https://github.com/MyJobGlasses/activeadmin-mongoid).

## Versions
Ruby : 3.2.2
MongoDB: Latest as compatible with Mongoid 8.0

## Installation
Boot a MongoDB instance on the 27017 port and set it for use without user/password auth, then run these commands
```sh
docker compose up -d # will boot mongodb instance
bundle install
bundle exec rails db:seed
bundle exec rails s
```

## Test the features (broken at the time of writing)
Go to localhost:3000/admin and log in with the seeded admin user (email: admin@local.xyz, password: password) and click on a random tab (AdminUser or Posts)
For quick access to one of the bugs encountered, go to http://localhost:3000/admin/posts