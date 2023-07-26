FROM ubuntu:22.04

RUN useradd -d /home/maink -m -s /bin/bash maink

ENV APP_ROOT /home/maink/sveltekit-supabase-webmedia

WORKDIR $APP_ROOT

RUN apt update && \
    apt upgrade -y && \
    apt install -y npm \
                   curl && \
    npm install -g n && \
    n lts && \
    apt purge -y npm nodejs
