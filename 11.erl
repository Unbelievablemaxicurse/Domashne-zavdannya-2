-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified([]) -> [];
encode_modified([X]) -> [X];
encode_modified([X, X | Tail]) -> [{1 + element(1, Head), X} | encode_modified(Tail)];
encode_modified([X, Y | Tail]) when X /= Y -> [{1, X} | encode_modified([Y | Tail])].
