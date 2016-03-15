:-dynamic in/1,			% matches the in/1 percept
	state/1,
	at/1,
	atBlock/1,
	color/2,
	holding/1,
	place/1,
	sequence/1,
	sequenceIndex/1,
	block/2,
	visited/1,			% matches the state/1 percept
	zone/5.				% matches the zone/5 percept

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".
nextColorInSeq(Color) :- sequenceIndex(X), sequence(Y), nth0(X, Y, Color).