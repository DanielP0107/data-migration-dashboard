-- PostgreSQL Schema for Data Migration Dashboard

-- Users Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Data Imports Table
CREATE TABLE data_imports (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Migrated Data Table
CREATE TABLE migrated_data (
    id SERIAL PRIMARY KEY,
    import_id INT NOT NULL,
    data TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (import_id) REFERENCES data_imports(id) ON DELETE CASCADE
);

-- Audits Table
CREATE TABLE audits (
    id SERIAL PRIMARY KEY,
    user_id INT,
    action VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- Create Indexes
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_data_imports_user_id ON data_imports(user_id);
CREATE INDEX idx_migrated_data_import_id ON migrated_data(import_id);
CREATE INDEX idx_audits_user_id ON audits(user_id);