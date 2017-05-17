FROM dory.pressrelations.de:5000/base-ruby-gem:0.0.17

RUN apt-get update && apt-get clean

WORKDIR /tmp
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
ADD ./*.gemspec dummy.gemspec
RUN bash -l -c "bundle install -j16"
ADD ./lib lib
RUN rm -rf /tmp/*
WORKDIR /app
