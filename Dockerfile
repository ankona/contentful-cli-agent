#FROM alpine
FROM jenkins/jnlp-slave

USER root
RUN apt-get update

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - \
    && apt-get -y install nodejs npm \
    && npm install -g npm gulp contentful-cli \
    && npm install gulp merge-stream del gulp-serve gulp-rename gulp-inline-source gulp-stylus \
    && rm -rf /var/lib/apt/lists

# RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - 
# RUN apt-get -y install nodejs npm
# RUN npm install -g npm kongfig gulp contentful-cli 
# RUN rm -rf /var/lib/apt/lists
