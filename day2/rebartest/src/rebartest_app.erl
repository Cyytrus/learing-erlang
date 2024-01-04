%%%-------------------------------------------------------------------
%% @doc rebartest public API
%% @end
%%%-------------------------------------------------------------------

-module(rebartest_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    rebartest_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
