-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([X]) -> [[X]];
pack([X, X | Tail]) -> [[X | pack([X | Tail])]];
pack([X, Y | Tail]) -> [X | pack(Tail)].
