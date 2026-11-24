# API Contract

Dokumentasi API ini menjelaskan endpoint, request, dan response yang tersedia pada Student Dashboard API.

## Base URL

```text
http://localhost:1880/gesya/dashboard
```

---

## 1. Dashboard Overview

### Endpoint

```http
GET /overview
```

### Deskripsi

Mengambil ringkasan statistik data siswa yang ditampilkan pada dashboard.

### Response

```json
{
  "success": true,
  "data": {
    "total_students": 6,
    "active_students": 5,
    "inactive_students": 1
  }
}
```

---

## 2. Get All Students

### Endpoint

```http
GET /students
```

### Deskripsi

Mengambil seluruh data siswa yang tersimpan dalam sistem.

### Response

```json
{
  "success": true,
  "total": 7,
  "data": [
    {
      "id": 1,
      "date_created": "2026-11-23T09:09:24.769Z",
      "date_updated": null,
      "nis": "2022001",
      "name": "Andi Pratama",
      "class": "XII RPL 1",
      "gender": "male",
      "status": "active"
    }
  ]
}
```

### Field Response

| Field | Tipe Data | Deskripsi |
|---|---|---|
| success | Boolean | Status keberhasilan request |
| total | Number | Jumlah data siswa |
| data | Array | Daftar data siswa |
| id | Number | ID siswa |
| date_created | String | Tanggal data dibuat |
| date_updated | String / Null | Tanggal data diperbarui |
| nis | String | Nomor Induk Siswa |
| name | String | Nama siswa |
| class | String | Kelas siswa |
| gender | String | Jenis kelamin |
| status | String | Status siswa |

---

## 3. Create Student

### Endpoint

```http
POST /students
```

### Deskripsi

Menambahkan data siswa baru ke dalam sistem.

### Request Body

```json
{
  "nis": "TEST001",
  "name": "Testing Student",
  "class": "XII RPL 1",
  "gender": "male",
  "status": "active"
}
```

### Response

```json
{
  "success": true,
  "message": "Data siswa berhasil ditambahkan",
  "data": {
    "id": 8,
    "nis": "TEST001",
    "nama": "Testing Student",
    "kelas": "XII RPL 1",
    "jenis_kelamin": "Laki-laki",
    "status": "Aktif"
  }
}
```

---

## 4. Update Student

### Endpoint

```http
PATCH /students/:id
```

### Deskripsi

Memperbarui data siswa berdasarkan ID siswa.

### Request Body

```json
{
  "name": "Testing Student Updated",
  "class": "XII RPL 2",
  "gender": "male",
  "status": "active"
}
```

### Response

```json
{
  "success": true,
  "message": "Data siswa berhasil diperbarui",
  "data": {
    "id": 8,
    "nis": "TEST001",
    "nama": "Testing Student Updated",
    "kelas": "XII RPL 2",
    "jenis_kelamin": "Laki-laki",
    "status": "Aktif"
  }
}
```

---

## 5. Delete Student

### Endpoint

```http
DELETE /students/:id
```

### Deskripsi

Menghapus data siswa berdasarkan ID siswa.

### Response

```json
{
  "success": true,
  "message": "Data siswa berhasil dihapus"
}
```

---

## 6. Get Settings

### Endpoint

```http
GET /settings
```

### Deskripsi

Mengambil data pengaturan dashboard.

### Response

Response endpoint ini berisi data pengaturan dashboard yang tersimpan pada Directus.

---

## 7. Update Settings

### Endpoint

```http
PATCH /settings
```

### Deskripsi

Memperbarui pengaturan dashboard, seperti nama sekolah, nama administrator, email, tahun ajaran, dan semester.

### Request Body

```json
{
  "school_name": "SMK Telkom Malang",
  "admin_name": "Gesya Putri",
  "email": "admin@smktelkommalang.sch.id",
  "academic_year": "2026/2027",
  "semester": "ganjil"
}
```

### Response

```json
{
  "success": true,
  "message": "Settings berhasil diperbarui",
  "data": {
    "id": 1,
    "school_name": "SMK Telkom Malang",
    "admin_name": "Gesya Putri",
    "email": "admin@smktelkommalang.sch.id",
    "academic_year": "2026/2027",
    "semester": "ganjil"
  }
}
```

### Field Response

| Field | Tipe Data | Deskripsi |
|---|---|---|
| success | Boolean | Status keberhasilan request |
| message | String | Pesan hasil request |
| data | Object | Data pengaturan dashboard |
| id | Number | ID pengaturan |
| school_name | String | Nama sekolah |
| admin_name | String | Nama administrator |
| email | String | Email administrator |
| academic_year | String | Tahun ajaran |
| semester | String | Semester akademik |

---

## Status Response

| Status | Deskripsi |
|---|---|
| `success: true` | Request berhasil diproses |
| `success: false` | Request gagal diproses |

## Catatan

- API menggunakan HTTP untuk komunikasi antara client dan backend.
- Backend API dibangun menggunakan Node-RED.
- Directus digunakan sebagai sistem manajemen data.
- PostgreSQL digunakan sebagai database.
- API diuji menggunakan Postman.
