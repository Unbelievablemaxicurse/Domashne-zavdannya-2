-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([{N, X} | Tail]) -> lists:duplicate(N, X) ++ decode_modified(Tail).
