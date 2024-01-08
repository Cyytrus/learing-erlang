it was not possible to do

```erlang
is_odd(Integer) when Integer rem 2 =/= 0 -> true
is_even(Integer) when Integer rem 2 =/= 0 -> false
```

as created guards because the functions in the guards have to be free from side effects.