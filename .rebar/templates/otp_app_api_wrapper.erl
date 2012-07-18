-module({{app_name}}).

% API
-export([start/0]).

% functions
start() -> application:start(?MODULE).

