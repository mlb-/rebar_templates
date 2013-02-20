-module({{name}}).
-behaviour(gen_server).

%%% Exports
%% OTP API
-export([start_link/0]).

%% gen_server API
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

%%% Functions
%% OTP API
start_link() ->
    gen_server:start_link(?MODULE, [], []).

%% gen_server callbacks
init([]) ->
    {ok, {}}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
