-module(person).

-export([init/1, main/0]).

init(Name) ->
  Name.

main() ->
  spawn(fun() -> person:init("Cyytrus") end).
