FROM ruby:2.3.1

ENV PROJECT=scumblr
ENV HOME=/${PROJECT}

WORKDIR ${HOME}

# Install Prerequisites
RUN apt-get update && \
    apt-get -y install \
        build-essential \
        curl \
        git-core \
        imagemagick \
        imagemagick-common \
        libcurl4-openssl-dev \
        libffi-dev \
        libmagickcore-dev \
        libmagickwand-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt1-dev \
        libyaml-dev \
        nodejs \
        postgresql-client \
        postgresql-common \
        python-dev \
        python-pip \
        python-software-properties \
        sqlite3 \
        zlib1g-dev

# Install gems
RUN gem install bundler --no-ri --no-rdoc
RUN gem install sidekiq --no-ri --no-rdoc

# Install Rails
RUN gem install rails -v 4.2.6 --no-ri --no-rdoc

# Get scumblr
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
