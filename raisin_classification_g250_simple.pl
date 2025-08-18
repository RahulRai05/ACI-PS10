% Rules for classifying raisin, based on provided attributes
% Please provide raisin's attributes in order as MajorAxisLength, Perimeter, Extent, Area and Eccentricit

% Rule 1
classify_raisin(MajorAxisLength, Perimeter, _, _, _, kecimen) :-
    MajorAxisLength =< 422.279133,
    Perimeter =< 1006.375.

% Rule 2
classify_raisin(MajorAxisLength, Perimeter, Extent, Area, _, besni) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter =< 1122.831,
    Area =< 62835,
    Extent =< 0.666255.

% Rule 3
classify_raisin(MajorAxisLength, Perimeter, Extent, Area, _, kecimen) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter =< 1122.831,
    Area =< 62835,
    Extent =< 0.701678,
    Extent > 0.666255.

% Rule 4
classify_raisin(MajorAxisLength, Perimeter, Extent, Area, _, besni) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter =< 1122.831,
    Area =< 62835,
    Extent > 0.701678.

% Rule 5
classify_raisin(MajorAxisLength, Perimeter, Extent, Area, _, kecimen) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter =< 1122.831,
    Area >  62835.

% Rule 6
classify_raisin(MajorAxisLength, Perimeter, Extent, _, _, besni) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter > 1122.831,
    Extent =< 0.671309.

% Rule 7
classify_raisin(MajorAxisLength, Perimeter, Extent, _, Eccentricity, besni) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter > 1122.831,
    Extent > 0.671309,
    Eccentricity =< 0.75951.

% Rule 8
classify_raisin(MajorAxisLength, Perimeter, Extent, _, Eccentricity, kecimen) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent =< 0.7476,
    Perimeter > 1122.831,
    Extent > 0.671309,
    Eccentricity > 0.75951.

% Rule 9
classify_raisin(MajorAxisLength, Perimeter, Extent, _, _, kecimen) :-
    MajorAxisLength =< 422.279133,
    Perimeter > 1006.375,
    Extent > 0.7476.

% Rule 10
classify_raisin(MajorAxisLength, _, _, _, _, besni) :-
    MajorAxisLength > 422.279133.
