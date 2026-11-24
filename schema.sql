-- ==========================================
-- STUDENT DASHBOARD DATABASE SCHEMA
-- ==========================================

-- TABLE: app_settings
-- Menyimpan pengaturan sekolah dan admin

CREATE TABLE IF NOT EXISTS app_settings (
    id INT PRIMARY KEY DEFAULT 1 CHECK (id = 1),
    school_name VARCHAR(150) NOT NULL,
    admin_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    academic_year VARCHAR(20) NOT NULL,
    semester VARCHAR(10) NOT NULL,
    date_created TIMESTAMPTZ DEFAULT NOW(),
    date_updated TIMESTAMPTZ DEFAULT NOW()
);


-- TABLE: students
-- Menyimpan data siswa

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    nis VARCHAR(30) NOT NULL UNIQUE,
    name VARCHAR(150) NOT NULL,
    class VARCHAR(30) NOT NULL,
    gender VARCHAR(15) NOT NULL CHECK (gender IN ('male', 'female')),
    status VARCHAR(15) NOT NULL DEFAULT 'active'
        CHECK (status IN ('active', 'inactive')),
    date_created TIMESTAMPTZ DEFAULT NOW(),
    date_updated TIMESTAMPTZ DEFAULT NOW()
);


-- INDEX: Students
-- Membantu proses pencarian dan filter data siswa

CREATE INDEX IF NOT EXISTS idx_students_name
    ON students (name);

CREATE INDEX IF NOT EXISTS idx_students_class
    ON students (class);

CREATE INDEX IF NOT EXISTS idx_students_status
    ON students (status);