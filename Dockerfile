FROM ruby:3.0
 
WORKDIR /automation_base/
COPY . /automation_base/
 
RUN gem install bundle && bundle install