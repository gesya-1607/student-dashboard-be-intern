# Student Dashboard Backend Intern

## 1. Identifikasi Kebutuhan

Project Student Dashboard membutuhkan backend untuk mengelola data siswa, kelas, dan informasi sekolah.

Beberapa fitur yang dibutuhkan:

- Menampilkan statistik siswa dan kelas pada dashboard.
- Mengelola data siswa.
- Mencari dan memfilter data siswa.
- Mengelola data kelas.
- Mengelola informasi sekolah dan admin.

## 2. Database

Database menggunakan PostgreSQL yang dijalankan melalui Docker dan dikelola menggunakan Directus.

Database yang telah dibuat terdiri dari beberapa collection:

### Students

Collection Students digunakan untuk menyimpan data siswa.

Field yang tersedia:

- `id`
- `nis`
- `name`
- `class`
- `gender`
- `status`
- `date_created`
- `date_updated`

### kelas

Collection kelas digunakan untuk menyimpan data kelas.

Data kelas yang telah dibuat:

- XII RPL 1
- XII RPL 2

Collection kelas juga memiliki relasi dengan collection Students sehingga data siswa dapat terhubung dengan kelasnya.

### app_settings

Collection app_settings digunakan untuk menyimpan informasi pengaturan sekolah.

Field yang tersedia:

- `school_name`
- `admin_name`
- `email`
- `academic_year`
- `semester`

## 3. Teknologi yang Digunakan

- PostgreSQL
- Docker
- Directus
- Node-RED

## 4. Pengembangan API

Node-RED digunakan untuk mengembangkan API dan menghubungkan data dari Directus.

Pengujian yang telah dilakukan:

- Menghubungkan Node-RED dengan Directus.
- Mengambil data kelas dari Directus menggunakan HTTP Request.
- Menampilkan hasil data melalui Debug Node.

Endpoint yang telah diuji:

`GET /items/kelas`

## 5. Progress

- Membuat database PostgreSQL menggunakan Docker.
- Menjalankan Directus.
- Membuat collection Students.
- Membuat collection kelas.
- Membuat collection app_settings.
- Menambahkan data siswa dan kelas.
- Membuat relasi antara siswa dan kelas.
- Menghubungkan Node-RED dengan Directus.
- Menguji pengambilan data kelas melalui Node-RED.
