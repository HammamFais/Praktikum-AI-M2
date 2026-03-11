# 🤖 Praktikum AI - M2 Representasi Pengetahuan (Frame & Inheritance)

| | |
|---|---|
| **Nama** | Hammam Hidayatullah |
| **NRP** | 3124600096 |
| **Program Studi** | D4 Teknik Informatika 🎓 |
| **Institusi** | Politeknik Elektronika Negeri Surabaya (PENS) |
| **Mata Kuliah** | Praktikum Kecerdasan Buatan |
| **Dosen** | Dr. Tita Karlita S.Kom., M.Kom |
| | |

---
---

## 📖 Deskripsi
Repository ini berisi tugas M2 Praktikum Kecerdasan Buatan tentang **Representasi Pengetahuan** menggunakan metode **Frame** dan **Inheritance** (Pewarisan) pada bahasa pemrograman **Prolog**. Fokus praktikum ini adalah bagaimana mengorganisir data yang kompleks ke dalam struktur yang lebih rapi dan saling terhubung.

---

## 📂 Struktur File

| File | Judul | Deskripsi |
|------|------|-----------|
| `a2.pl` | Student Monitoring | Deteksi status DO mahasiswa menggunakan Frame dan logika negasi. |
| `2.pl` | Frame Inheritance | Representasi hirarki objek (Animal -> Man -> John) dengan pewarisan sifat rekursif. |

---

## 🧠 Konsep yang Dipelajari

- ✅ **Representasi Frame:** Membungkus data ke dalam list atribut (`slot`) agar lebih terstruktur.
- ✅ **Unifikasi & Member:** Menggunakan predikat `member/2` sebagai fungsi getter untuk mengambil nilai dari dalam frame.
- ✅ **Inheritance (Pewarisan):** Membuat aturan agar objek di level bawah bisa mewarisi sifat dari class di atasnya.
- ✅ **Recursive Reasoning:** Menelusuri hirarki "Is-A" secara dinamis hingga ke akar (root).
- ✅ **Logical Control:** Penggunaan operator negasi `\+` untuk klasifikasi data yang eksklusif.

---

## 🛠️ Teknologi

![Prolog](https://img.shields.io/badge/Language-Prolog-orange?style=for-the-badge)
![SWI-Prolog](https://img.shields.io/badge/Runtime-SWI--Prolog-red?style=for-the-badge)
![VS Code](https://img.shields.io/badge/Editor-VS%20Code-blue?style=for-the-badge)
![GitHub](https://img.shields.io/badge/Repo-GitHub-black?style=for-the-badge)

---

## ▶️ Cara Menjalankan

1. Pastikan **SWI-Prolog** sudah terinstall di laptop.
2. Clone repository ini atau download filenya.
3. Klik kanan pada file `.pl`, pilih **Consult**, atau jalankan via terminal:
   ```prolog
   ?- [a2].
   ?- cek_semua.