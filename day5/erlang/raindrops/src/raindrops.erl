-module(raindrops).

-export([convert/1]).

convert(_Number)
  when _Number rem 3 =:= 0 andalso _Number rem 5 =:= 0 andalso _Number rem 7 =:= 0 ->
  "PlingPlangPlong";
convert(_Number) when _Number rem 3 =:= 0 andalso _Number rem 5 =:= 0 ->
  "PlingPlang";
convert(_Number) when _Number rem 3 =:= 0 andalso _Number rem 7 =:= 0 ->
  "PlingPlong";
convert(_Number) when _Number rem 5 =:= 0 andalso _Number rem 7 =:= 0 ->
  "PlangPlong";
convert(_Number) when _Number rem 3 =:= 0 ->
  "Pling";
convert(_Number) when _Number rem 5 =:= 0 ->
  "Plang";
convert(_Number) when _Number rem 7 =:= 0 ->
  "Plong";
convert(Number) ->
  integer_to_list(Number).
