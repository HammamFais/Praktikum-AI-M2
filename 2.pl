
% =========================================================
% BAGIAN 1: FAKTA FRAME
% =========================================================

% Frame: animal – kelas paling atas
frame(animal, [
    has(spinal_cord)
]).

% Frame: man – subclass dari animal
frame(man, [
    isa(animal)
]).

% Frame: john – instance dari man, memiliki mobil
frame(john, [
    isa(man),
    has(car_01)
]).

% Frame: car_01 – objek mobil milik john
frame(car_01, [
    owner(john),
    color(red),
    type('RV'),
    engine('2.0l DOHC'),
    made_in('Indonesia')
]).

% =========================================================
% BAGIAN 2: RULE – Inheritance (Pewarisan)
% =========================================================

% Rule 1: Cek kepemilikan langsung pada frame
memiliki(Objek, Benda) :-
    frame(Objek, DaftarSlot),
    member(has(Benda), DaftarSlot).

% Rule 2: Cek kepemilikan turunan (rekursif ke induk)
memiliki(Objek, Benda) :-
    frame(Objek, DaftarSlot),
    member(isa(Induk), DaftarSlot),
    memiliki(Induk, Benda).

% Rule 3: Cek apakah objek termasuk kelas tertentu
adalah(Objek, Kelas) :-
    frame(Objek, DaftarSlot),
    member(isa(Kelas), DaftarSlot).
adalah(Objek, Kelas) :-
    frame(Objek, DaftarSlot),
    member(isa(Induk), DaftarSlot),
    adalah(Induk, Kelas).
