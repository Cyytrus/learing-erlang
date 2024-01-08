-module(rna_transcription).

-export([to_rna/1]).

to_rna(Strand) ->
  case Strand of
    [$G | Rest] -> [$C | to_rna(Rest)];
    [$C | Rest] -> [$G | to_rna(Rest)];
    [$T | Rest] -> [$A | to_rna(Rest)];
    [$A | Rest] -> [$U | to_rna(Rest)];
    [] -> []
  end.