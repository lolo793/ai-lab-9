% --- Truth Tables as Facts ---

% AND Truth Table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR Truth Table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Negation Truth Table
neg(true, false).
neg(false, true).

% --- Boolean Expression Rule: (A AND B) OR (NOT A AND NOT B) ---
logicGate(A, B, Output) :-
    and(A, B, And1),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, And2),
    or(And1, And2, Output).