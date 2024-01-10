-module(hamming).

-export([distance/2, count/3]).
distance([], []) ->
  0;
distance(Strand1, Strand2) when length(Strand1) =/= length(Strand2) ->
  {error, badarg};
distance(_Strand1, []) ->
  {error, badarg};
distance([], _Strand2) ->
  {error, badarg};
distance(Strand1, Strand2) ->
  count(Strand1, Strand2, 0).

count([], [], Acc) ->
  Acc;
count([H1 | T1], [H2 | T2], Acc) ->
  case H1 == H2 of
    true ->
      count(T1, T2, Acc);
    false ->
      count(T1, T2, Acc + 1)
  end.
