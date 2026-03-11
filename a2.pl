% =========================================================
% BAGIAN 1: FAKTA FRAME – Data Mahasiswa
% =========================================================

frame(budi, [
    ipk(1.8),
    kehadiran(60),
    tunggakan(ada)
]).

frame(siti, [
    ipk(2.3),
    kehadiran(55),
    tunggakan(tidak)
]).

frame(andi, [
    ipk(1.5),
    kehadiran(40),
    tunggakan(ada)
]).

frame(rina, [
    ipk(3.2),
    kehadiran(85),
    tunggakan(tidak)
]).

% =========================================================
% BAGIAN 2: RULE – Deteksi Status DO
% =========================================================

% Rule: DO Kritis – IPK < 2.0 DAN kehadiran < 50%
status_do(Nama, 'DO Kritis') :-
    frame(Nama, DaftarSlot),
    member(ipk(NilaiIPK), DaftarSlot),     NilaiIPK < 2.0,
    member(kehadiran(Hadir), DaftarSlot),  Hadir < 50.

% Rule: Waspada DO – IPK < 2.0 ATAU kehadiran < 75%
status_do(Nama, 'Waspada DO') :-
    frame(Nama, DaftarSlot),
    member(ipk(NilaiIPK), DaftarSlot),
    NilaiIPK < 2.0,
    \+ status_do(Nama, 'DO Kritis').
status_do(Nama, 'Waspada DO') :-
    frame(Nama, DaftarSlot),
    member(kehadiran(Hadir), DaftarSlot),
    Hadir < 75,
    \+ status_do(Nama, 'DO Kritis').

% Rule: Aman – tidak memenuhi kriteria apapun di atas
status_do(Nama, 'Aman') :-
    frame(Nama, _),
    \+ status_do(Nama, 'DO Kritis'),
    \+ status_do(Nama, 'Waspada DO').

% =========================================================
% BAGIAN 3: KESIMPULAN – Tampilkan semua mahasiswa
% =========================================================

cek_semua :-
    frame(Nama, _),
    status_do(Nama, Status),
    format('Mahasiswa ~w : ~w~n', [Nama, Status]),
    fail.
cek_semua.
