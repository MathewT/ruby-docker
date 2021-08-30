FROM ruby:3.0.2-alpine3.14

RUN apk add --update build-base bash bash-completion libffi-dev tzdata postgresql-client postgresql-dev

WORKDIR /app

RUN mkdir $HOME/.ssh
RUN touch $HOME/.bashrc

RUN echo "alias ll='ls -alF'" >> $HOME/.bashrc
RUN echo "alias la='ls -A'" >> $HOME/.bashrc
RUN echo "alias l='ls -CF'" >> $HOME/.bashrc
RUN echo "alias q='exit'" >> $HOME/.bashrc
RUN echo "alias c='clear'" >> $HOME/.bashrc


CMD [ "irb" ]