-module({{app_name}}).

%%% API
-export([start/0]).

%%% Functions
start() ->
    application:start(?MODULE).
