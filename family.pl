male(john).
male(alex).
male(bob).

female(lisa).
female(emma).

parent(john, alex).
parent(john, lisa).
parent(lisa, emma).
parent(lisa, bob).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandfather(X, Z) :- male(X), grandparent(X, Z).
grandmother(X, Z) :- female(X), grandparent(X, Z).

