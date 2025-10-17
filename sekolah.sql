-- Tugas Project Backend: Database & Version Control (PostgreSQL Version)
-- 1. Membuat Database
CREATE DATABASE sekolah;

-- Gunakan database (jalankan manual di DBeaver)
-- \c sekolah

-- 2. Membuat Tabel & Relasi
CREATE TABLE IF NOT EXISTS siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT NOT NULL REFERENCES siswa(id) ON DELETE CASCADE,
    mata_pelajaran VARCHAR(100) NOT NULL,
    nilai INT CHECK (nilai BETWEEN 0 AND 100)
);

-- 3. Isi Data (INSERT)
INSERT INTO siswa (nama, umur, jurusan) VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eko', 16, 'IPS');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, 'Matematika', 85),
(1, 'Bahasa Inggris', 90),
(2, 'Matematika', 78),
(2, 'Ekonomi', 82),
(3, 'Fisika', 88),
(3, 'Kimia', 92),
(4, 'Bahasa Indonesia', 89),
(4, 'Sastra', 94),
(5, 'Sosiologi', 80),
(5, 'Geografi', 83);

-- 4. Query Data (SELECT)
-- a. Semua siswa
SELECT * FROM siswa;

-- b. Nama siswa jurusan IPA
SELECT nama FROM siswa WHERE jurusan = 'IPA';

-- c. Rata-rata nilai tiap siswa
SELECT s.nama, AVG(n.nilai) AS rata_nilai
FROM siswa s
JOIN nilai n ON s.id = n.siswa_id
GROUP BY s.nama
ORDER BY s.nama;

-- 5. Update & Delete
UPDATE siswa SET jurusan = 'Teknik Informatika' WHERE id = 2;
DELETE FROM nilai WHERE id = 3;

-- End of SQL Project
