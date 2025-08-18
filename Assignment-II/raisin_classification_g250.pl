% Main predicate: classify_raisin(MajorAxisLength, Perimeter, Extent, Area, Eccentricity, Type).
% Usage Example:
% ?- classify_raisin(420.0, 1100.0, 0.66, 62000, 0.75, Type).

% The top-level predicate identify raisin type based on MajorAxisLength.
classify_raisin(MajorAxisLength, _, _, _, _, besni) :-
    MajorAxisLength > 422.279133.

classify_raisin(MajorAxisLength, Perimeter, Extent, Area, Eccentricity, Type) :-
    MajorAxisLength =< 422.279133,
    classify_by_outer_perimeter(Perimeter, Extent, Area, Eccentricity, Type).
	
	
% fallback rule
classify_raisin(_, _, _, _, _, unknown).	

% Predicate for the next level decison, based on outer Perimeter.
classify_by_outer_perimeter(Perimeter, _, _, _, kecimen) :-
    Perimeter =< 1006.375.

classify_by_outer_perimeter(Perimeter, Extent, Area, Eccentricity, Type) :-
    Perimeter > 1006.375,
    classify_by_outer_extent_and_inner_perimeter(Perimeter, Extent, Area, Eccentricity, Type).

% Predicate for the next level decison, based on outer Extent and inner Perimeter.
classify_by_outer_extent_and_inner_perimeter(_, Extent, _, _, kecimen) :-
    Extent > 0.7476.

classify_by_outer_extent_and_inner_perimeter(Perimeter, Extent, Area, Eccentricity, Type) :-
    Extent =< 0.7476,
    classify_by_inner_perimeter_and_area(Perimeter, Extent, Area, Eccentricity, Type).

% Predicate for the next level decison, based on inner Perimeter and Area.
classify_by_inner_perimeter_and_area(Perimeter, Extent, Area, Eccentricity, Type) :-
    Perimeter =< 1122.831,
    classify_by_area_and_inner_extent(Extent, Area, Eccentricity, Type).

classify_by_inner_perimeter_and_area(Perimeter, Extent, _, Eccentricity, Type) :-
    Perimeter > 1122.831,
    classify_by_inner_extent_and_eccentricity(Extent, Eccentricity, Type).

% Predicate for the next level decison, using Area and inner Extent.
classify_by_area_and_inner_extent(_, Area, _, kecimen) :-
    Area > 62835.

classify_by_area_and_inner_extent(Extent, Area, Eccentricity, Type) :-
    Area =< 62835,
    classify_by_inner_inner_extent(Extent, Eccentricity, Type).

% Predicates for the inner Extent.
classify_by_inner_inner_extent(Extent, _, besni) :-
    Extent > 0.701678.

classify_by_inner_inner_extent(Extent, Eccentricity, Type) :-
    Extent =< 0.701678,
    classify_by_final_inner_extent(Extent, Eccentricity, Type).

% Predicates for last Extent    
classify_by_final_inner_extent(Extent, _, besni) :-
    Extent =< 0.666255.

classify_by_final_inner_extent(Extent, _, kecimen) :-
    Extent > 0.666255.

% Predicate for decision using inner Extent and Eccentricity.
classify_by_inner_extent_and_eccentricity(Extent, _, besni) :-
    Extent =< 0.671309.

classify_by_inner_extent_and_eccentricity(Extent, Eccentricity, Type) :-
    Extent > 0.671309,
    classify_by_eccentricity(Eccentricity, Type).

% Predicate for the Eccentricity.
classify_by_eccentricity(Eccentricity, besni) :-
    Eccentricity =< 0.75951.

classify_by_eccentricity(Eccentricity, kecimen) :-
    Eccentricity > 0.75951.

