# Student Dashboard API

## Deskripsi

Student Dashboard API merupakan API backend yang dirancang untuk mengelola data siswa dan informasi dashboard. Proyek ini menggunakan Node-RED untuk membangun API dan Directus sebagai sistem manajemen data yang terhubung dengan PostgreSQL.

API ini menyediakan endpoint untuk mengambil statistik dashboard, mengelola data siswa, serta mengelola pengaturan dashboard.

## Tujuan

- Menyediakan API untuk pengelolaan data siswa.
- Menampilkan statistik siswa pada dashboard.
- Mendukung operasi CRUD pada data siswa.
- Mengelola pengaturan dashboard.
- Mengintegrasikan Node-RED dengan Directus dan PostgreSQL.

## Teknologi yang Digunakan

| Teknologi | Deskripsi |
|---|---|
| Node-RED | Pengembangan API backend |
| Directus | Sistem manajemen data |
| PostgreSQL | Database |
| Postman | Pengujian API |
| HTTP | Komunikasi API |

## Fitur

- Dashboard Overview
- Mendapatkan Semua Data Siswa
- Menambahkan Data Siswa
- Memperbarui Data Siswa
- Menghapus Data Siswa
- Mendapatkan Pengaturan Dashboard
- Memperbarui Pengaturan Dashboard

## Endpoint API

Base URL:

```text
http://localhost:1880/gesya/dashboard
```

| Method | Endpoint | Deskripsi |
|---|---|---|
| GET | `/overview` | Mendapatkan ringkasan dashboard |
| GET | `/students` | Mendapatkan semua data siswa |
| POST | `/students` | Menambahkan data siswa baru |
| PATCH | `/students/:id` | Memperbarui data siswa |
| DELETE | `/students/:id` | Menghapus data siswa |
| GET | `/settings` | Mendapatkan pengaturan dashboard |
| PATCH | `/settings` | Memperbarui pengaturan dashboard |

## Data Siswa

Data siswa memiliki beberapa field berikut:

| Field | Deskripsi |
|---|---|
| id | ID siswa |
| nis | Nomor Induk Siswa |
| name | Nama siswa |
| class | Kelas siswa |
| gender | Jenis kelamin siswa |
| status | Status siswa |

## Data Pengaturan

Pengaturan dashboard memiliki beberapa field berikut:

| Field | Deskripsi |
|---|---|
| school_name | Nama sekolah |
| admin_name | Nama administrator |
| email | Email administrator |
| academic_year | Tahun ajaran |
| semester | Semester akademik |

## Alur Sistem

```text
Client / Postman
       |
       v
    Node-RED
       |
       v
   HTTP Request
       |
       v
    Directus
       |
       v
  PostgreSQL
```

Node-RED menerima permintaan API dari client, memproses data, dan berkomunikasi dengan Directus. Directus mengelola data yang tersimpan di PostgreSQL.

## Pengujian API

Semua endpoint API telah diuji menggunakan Postman.

| Endpoint | Method | Status |
|---|---|---|
| Dashboard Overview | GET | Berhasil |
| Get Students | GET | Berhasil |
| Create Student | POST | Berhasil |
| Update Student | PATCH | Berhasil |
| Delete Student | DELETE | Berhasil |
| Get Settings | GET | Berhasil |
| Update Settings | PATCH | Berhasil |

## Instalasi dan Konfigurasi

### 1. Instal Node-RED

Pastikan Node.js dan Node-RED telah terinstal.

Jalankan Node-RED:

```bash
node-red
```

Akses Node-RED melalui:

```text
http://localhost:1880
```

### 2. Jalankan Directus

Pastikan Directus dan PostgreSQL telah berjalan.

Akses Directus melalui:

```text
http://localhost:8055
```

### 3. Konfigurasi Environment Variables

Konfigurasikan environment variables yang diperlukan:

```env
DIRECTUS_URL=http://localhost:8055
DIRECTUS_TOKEN=your_directus_token
```

### 4. Import Flow Node-RED

Import file JSON flow Node-RED ke dalam Node-RED.

Deploy flow setelah proses import selesai.

### 5. Pengujian API

Gunakan Postman untuk menguji endpoint API.

Base URL:

```text
http://localhost:1880/gesya/dashboard
```

## Author

**Gesya Putri**
