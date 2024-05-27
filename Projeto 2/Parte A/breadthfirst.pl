menorcustobfs(X, Y, C) :-
    bfs_custo([[X]], Y, [], RevPath),
    reverse(RevPath, C).

menortempobfs(X, Y, C) :-
    bfs_tempo([[X]], Y, [], RevPath),
    reverse(RevPath, C).

menordoisbfs(X, Y, C) :-
    bfs_dois([[X]], Y, [], RevPath),
    reverse(RevPath, C).

bfs_custo([[Goal|T] | _], Goal, _, [Goal|T]).

bfs_custo([[Current|T] | Rest], Goal, Visited, Path) :-
    findall([Next, Current | T],
            (arco(Current, Next), \+ member(Next, [Current|T]), \+ member(Next, Visited)),
            NextPaths),
    sort_paths_cost(NextPaths, SortedPaths),
    append(Rest, SortedPaths, NewQueue),
    bfs_custo(NewQueue, Goal, [Current | Visited], Path).

bfs_tempo([[Goal|T] | _], Goal, _, [Goal|T]).

bfs_tempo([[Current|T] | Rest], Goal, Visited, Path) :-
    findall([Next, Current | T],
            (arco(Current, Next), \+ member(Next, [Current|T]), \+ member(Next, Visited)),
            NextPaths),
    sort_paths_time(NextPaths, SortedPaths),
    append(Rest, SortedPaths, NewQueue),
    bfs_tempo(NewQueue, Goal, [Current | Visited], Path).

bfs_dois([[Goal|T] | _], Goal, _, [Goal|T]).

bfs_dois([[Current|T] | Rest], Goal, Visited, Path) :-
    findall([Next, Current | T],
            (arco(Current, Next), \+ member(Next, [Current|T]), \+ member(Next, Visited)),
            NextPaths),
    sort_paths_dois(NextPaths, SortedPaths),
    append(Rest, SortedPaths, NewQueue),
    bfs_dois(NewQueue, Goal, [Current | Visited], Path).

sort_paths_cost(Paths, SortedPaths) :-
    map_list_to_pairs(path_cost, Paths, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedPaths).

path_cost([Y, X | _], Cost) :-
    estado(X, Y, Cost, _, _).

sort_paths_time(Paths, SortedPaths) :-
    map_list_to_pairs(path_time, Paths, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedPaths).

path_time([Y, X | _], Time) :-
    estado(X, Y, _, Time, _).

sort_paths_dois(Paths, SortedPaths) :-
    map_list_to_pairs(path_dois, Paths, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedPaths).

path_dois([Y, X | _], Dois) :-
    estado(X, Y, Cost, Time, _),
    Dois is Cost * Time.
