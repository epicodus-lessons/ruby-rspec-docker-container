## Description

This is a basic Dockerfile setup for running rspec tests with Ruby 2.6.5. 

## Set Up Instructions

`lib` and `spec` currently contain code for a very simple `title_case` method. To run tests on the current code, simply run the command `docker-compose up` in the root directory of this project.

To run tests on your own code, replace the `lib` and `spec` directories with your own source code (for `lib`) and tests (for `spec`).

Any time you want to run your tests, run `docker-compose up`. This will build the source code in a docker image and then automatically run `bundle exec rspec`. `bundle exec` ensures that the command runs within the local environment of the bundle (instead of accidentally pulling gems from a global environment) while `rspec` runs your tests.