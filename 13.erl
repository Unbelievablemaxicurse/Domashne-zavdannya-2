-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];
decode([{N, X} | Tail]) -> lists:duplicate(N, X) ++ decode(Tail).
