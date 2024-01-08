-module(collatz_conjecture).

-export([steps/1, calc/2]).

steps(Integer) when Integer > 0 ->
  calc(Integer, 0);
steps(_Integer) ->
  erlang:error(badarg).

calc(1, Acc) ->
  Acc;
calc(Integer, Acc) when Integer rem 2 =:= 0 ->
  calc(Integer div 2, Acc + 1);
calc(Integer, Acc) when Integer rem 2 =/= 0 ->
  calc(Integer * 3 + 1, Acc + 1).
