## Description

This template repository includes a basic setup for using Docker to run RSpec tests, Pry, and Ruby scripts using Ruby 2.6.5. 

## Set Up Instructions

`lib` and `spec` currently contain code for a very simple `title_case` method. To run tests on the current code, simply run the command `docker-compose up` in the root directory of this project.

To run tests on your own code, replace the `lib` and `spec` directories with your own source code (for `lib`) and tests (for `spec`).

Any time you want to run your tests, run `docker-compose up --build`. This will build the source code in a docker image and then automatically run `bundle exec rspec`. `bundle exec` ensures that the command runs within the local environment of the bundle (instead of accidentally pulling gems from a global environment) while `rspec` runs your tests.

**Note:** If you have not made any changes to your code, you do not need the `--build` flag. However, if you have made any changes to your code and you want those changes to be added to the Docker image, you 

## Using Pry

<!-- Sometimes you'll want to debug your code with `binding.pry`. In order to do this, you need to enter an interactive terminal in your Docker terminal. First, add `binding.pry` wherever you need to in your code. 

```
pry ()
{
  docker exec -it "$1" bundle exec rspec
}
``` -->