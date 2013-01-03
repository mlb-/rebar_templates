-module({{app_name}}_app).
-behaviour(application).

%% OTP API
-export([start/2, stop/1]).
-export([start_phase/3]).

%% application callbacks
start(_StartType, _StartArgs) ->
    {{app_name}}_sup:start_link().

start_phase(cowboy, _StartType, _PhaseStartArgs) ->
    Priv = code:priv_dir({{app_name}}),
    {ok, Out} = file:script(Priv ++ "/cowboy.dispatch"),
    [Acceptors, Port, Dispatch] = [proplists:get_value(Key, Out)
                                   || Key <- [acceptors, port, dispatch]],
    {ok, _PID} = cowboy:start_listener(cowboy_listener, Acceptors,
                                       cowboy_tcp_transport, [{port, Port}],
                                       cowboy_http_protocol, [{dispatch, Dispatch}]
                                      ),
    ok.

stop(_State) ->
    ok.
