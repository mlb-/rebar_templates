-module({{app_name}}_default_handler).
-behaviour(cowboy_http_handler).

%% Exports
% Cowboy HTTP API
-export([init/3, handle/2, terminate/2]).

%% Functions
% Cowboy HTTP callbacks
init(_Transport, Req, []) ->
    {ok, cowboy_req:compact(Req), undefined}.

handle(Req, State) ->
    {ok, Req2} = cowboy_req:reply(
                                  200,
                                  [{<<"Content-Type">>, <<"text/html">>}],
                                  <<"Hello world.">>,
                                  Req
                                 ),
    {ok, Req2, State}.

terminate(_Req, _State) ->
    ok.
