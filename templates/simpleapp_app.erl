-module({{appid}}_app).

-behaviour(application).

%% application API
-export([start/2, stop/1]).

%% application functions

start(_StartType, _StartArgs) ->
    {{appid}}_sup:start_link().

stop(_State) ->
    ok.
