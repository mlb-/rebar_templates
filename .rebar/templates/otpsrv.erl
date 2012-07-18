-module({{srvid}}).
-behaviour(gen_server).
-define(SERVER, ?MODULE).
-record(state, {
	}).

%% Supervisor API
-export([start_link/0]).

%% gen_server API
-export([init/1, handle_call/3, handle_cast/2,
		handle_info/2, terminate/2, code_change/3]).

%% Supervisor Functions
start_link() ->
  gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

%% Internal Function Definitions

%% gen_server Functions

init([]) ->
	State = #state{
	},
	{ok, State}.

handle_call(_Request, _From, #state{} = State) ->
  {noreply, ok, State}.

handle_cast(_Msg, #state{} = State) ->
  {noreply, State}.

handle_info(_Info, #state{} = State) ->
  {noreply, State}.

terminate(_Reason, #state{} = _State) ->
  ok.

code_change(_OldVsn, #state{} = State, _Extra) ->
  {ok, State}.

