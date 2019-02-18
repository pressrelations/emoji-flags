FROM 589401011586.dkr.ecr.eu-central-1.amazonaws.com/base-ruby-gem:0.0.17

RUN apt-get update && apt-get clean

WORKDIR /tmp
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
ADD ./*.gemspec dummy.gemspec
RUN bash -l -c "bundle install -j16"
ADD . /var/www
RUN rm -rf /tmp/*
WORKDIR /var/www

RUN bash -l -c "RUBY_ENV=test bundle exec rspec -b"