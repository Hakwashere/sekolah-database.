# Project Backend: Database & Version Control (PostgreSQL + DBeaver)

## Deskripsi
Project ini membuat database **sekolah** menggunakan PostgreSQL dan DBeaver, berisi dua tabel: `siswa` dan `nilai`. Termasuk operasi dasar SQL dan version control menggunakan Git & GitHub.

## Langkah Penggunaan
1. Buka **DBeaver** → konek ke PostgreSQL lokal.
2. Jalankan:
   ```sql
   CREATE DATABASE sekolah;
   \c sekolah
   ```
3. Copy semua isi file `sekolah.sql` ke DBeaver, lalu jalankan.
4. Cek hasil query dan pastikan relasi antar tabel benar.
5. Gunakan Git di folder project:
   ```bash
   git init
   git add sekolah.sql README.md
   git commit -m "Membuat database dan tabel siswa"
   git commit -m "Menambahkan data siswa dan nilai"
   git commit -m "Menambahkan query dan update/delete"
   ```
6. Buat repository baru di GitHub: `sekolah-database`
7. Hubungkan dan push:
   ```bash
   git remote add origin https://github.com/username/sekolah-database.git
   git branch -M main
   git push -u origin main
   ```

## Kriteria Penilaian
✅ Database & tabel benar  
✅ Relasi FK/PK sesuai  
✅ Minimal 5 data siswa & nilai  
✅ Query SELECT, JOIN, GROUP BY benar  
✅ UPDATE & DELETE berhasil  
✅ 3 commit dengan pesan jelas  
✅ Struktur GitHub rapi
