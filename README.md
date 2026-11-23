# Student Dashboard Backend Intern

## 1. Identifikasi Kebutuhan

Dari project Student Dashboard, backend dibutuhkan untuk mengelola data siswa, data kelas, dan pengaturan sekolah.

Beberapa fitur yang perlu dibuat:
- Menampilkan statistik siswa dan kelas di dashboard.
- Mengelola data siswa (tambah, edit, hapus, dan lihat data).
- Mencari dan memfilter data siswa.
- Mengelola data kelas.
- Mengatur informasi sekolah dan admin.

## 2. Rancangan Database

Database yang dibutuhkan terdiri dari beberapa collection:

| Collection | Isi Data |
|---|---|
| Siswa | NIS, nama, kelas, jenis kelamin, status |
| Kelas | Nama kelas dan tingkat |
| Pengaturan | Nama admin, email, nama sekolah, tahun ajaran, semester |

Satu kelas dapat memiliki beberapa siswa.

## 3. Rancangan API

API yang dibutuhkan untuk mendukung fitur pada Student Dashboard:

- Dashboard untuk menampilkan statistik siswa dan kelas.
- Siswa untuk melihat, menambah, mengubah, dan menghapus data.
- Kelas untuk mengelola data kelas.
- Pengaturan untuk melihat dan mengubah informasi sekolah.
