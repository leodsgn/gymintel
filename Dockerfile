FROM ruby:2.5.1
ADD https://dl.yarnpkg.com/debian/pubkey.gpg /tmp/yarn-pubkey.gpg
RUN apt-key add /tmp/yarn-pubkey.gpg && rm /tmp/yarn-pubkey.gpg
RUN echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential libpq-dev curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -qq -y --no-install-recommends nodejs yarn
RUN mkdir /gymintel
WORKDIR /gymintel
COPY Gemfile /gymintel/Gemfile
COPY Gemfile.lock /gymintel/Gemfile.lock
RUN bundle install
RUN yarn install
COPY . /gymintel