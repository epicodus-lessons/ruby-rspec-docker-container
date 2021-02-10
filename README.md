## Description

<<<<<<< HEAD
This template repository includes a basic setup for using Docker to run RSpec tests, Pry, and Ruby scripts using Ruby 2.6.5. 
=======
This is a basic Docker setup for running RSpec tests with Ruby 2.6.5. With this setup, you will be able to do all the things you need to do for section 1 of Ruby, including running RSpec tests, Ruby scripts, and Pry (a debugging tool that adds breakpoints to Ruby code).
>>>>>>> 039a8101659f4cc1c6df56e1bfbe51de2831c315

To use Docker, you will first need to [install](https://docs.docker.com/get-docker/) it. Once it's installed, Docker should be open so you can actually run Docker commands in the terminal.

## Running IRB

You don't need this setup for running IRB (Ruby REPL) by itself. To use IRB on its own, do the following (after Docker is installed and open):

```
$ docker pull ruby:2.6.5
```

This pulls down the image of Ruby we use at Epicodus. You only need to do this once.

Once you have it on your machine, you can run IRB with the following command:

```
$ docker run -it ruby:2.6.5 irb
```

We recommend creating an alias (called something like `dirb` for Docker IRB) to make the command easier to use.

You can exit IRB as normal by typing `exit`.

## Using This Repository for Docker

This repository is a template repository. To use it, start by creating a new repository with `ruby-rspec-docker-container` as a template.

The repository contains a simple project that tests a simple `title_case` method. To run tests on the current code, simply run the command `docker-compose up` in the root directory of this project.

To run tests on your own code, replace the `lib` and `spec` directories with your own source code (for `lib`) and tests (for `spec`).

<<<<<<< HEAD
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
=======
We recommend creating an alias for the following commands. The alias should look something like this:

```
dspec ()
{
  docker-compose down
  docker-compose up --build
  docker-compose run --rm app
}
```

With this alias, the `dspec` command will automatically run RSpec tests. You can use `binding.pry` as needed.

### Running Scripts

Running scripts is optional at Epicodus. However, if you want to experiment with it, follow these steps:

* The script **must** be located in `lib` and be called `script.rb`.

* To run the script, enter the following command in the root directory of the project: `script=script docker-compose up --build`. We recommend aliasing this command if you plan to run scripts a lot.
>>>>>>> 039a8101659f4cc1c6df56e1bfbe51de2831c315
