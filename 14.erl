-module(lesson2_task14).
-export([duplicate/1]).

duplicate([]) -> [];
duplicate([Head | Tail]) -> [Head, Head | duplicate(Tail)].
