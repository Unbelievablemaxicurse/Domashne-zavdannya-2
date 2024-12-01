-module(lesson2_task10).
-export([encode/1]).

encode([]) -> [];
encode([X]) -> [{1, X}];
encode([X, X | Tail]) -> [{1 + element(1, Head), X} | encode(Tail)];
encode([X, Y | Tail]) when X /= Y -> [{1, X} | encode([Y | Tail])].
