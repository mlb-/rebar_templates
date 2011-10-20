#!/bin/sh
rebar clean && \
rebar get-deps && \
rebar compile && \
erl -pa ebin deps/*/ebin -s ex_reloader -s {{appid}}
