-module(lesson2_task15).
-export([replicate/2]).

replicate([], _) -> [];
replicate([Head | Tail], N) -> lists:duplicate(N, Head) ++ replicate(Tail, N).
