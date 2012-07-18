-module({{app_name}}_sup).
-behaviour(esupervisor).
-include_lib("esupervisor/include/esupervisor.hrl").

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% API functions
start_link() ->
    esupervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% Supervisor callback
init([]) ->
    #one_for_one{ % Application supervisor
        children = [
            ]
        }.

% vim: set ts=4 sw=4 et:
