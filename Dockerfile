FROM ruby:2.6.5
WORKDIR /myapp
ADD test.sh /
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

CMD  ["/bin/bash", "/test.sh"]