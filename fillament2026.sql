-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table fillament2026.cache
CREATE TABLE IF NOT EXISTS cache (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  value mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  expiration bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY cache_expiration_index (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.cache: ~4 rows (approximately)
INSERT INTO cache (`key`, value, `expiration`) VALUES
 ('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1776957754),
 ('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1776957754;', 1776957754),
 ('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1776947341),
 ('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1776947341;', 1776947341);

-- Dumping structure for table fillament2026.cache_locks
CREATE TABLE IF NOT EXISTS cache_locks (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  owner varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  expiration bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY cache_locks_expiration_index (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.cache_locks: ~0 rows (approximately)

-- Dumping structure for table fillament2026.categories
CREATE TABLE IF NOT EXISTS categories (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  slug varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY categories_slug_unique (slug)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.categories: ~2 rows (approximately)
INSERT INTO categories (id, name, slug, created_at, updated_at) VALUES
 (1, 'laravel', 'laravel', '2026-04-23 06:25:22', '2026-04-23 06:25:22'),
 (2, 'javascript', 'javascript', '2026-04-23 06:25:31', '2026-04-23 06:25:31'),
 (3, 'golang', 'golang', '2026-04-23 06:25:37', '2026-04-23 06:25:37');

-- Dumping structure for table fillament2026.failed_jobs
CREATE TABLE IF NOT EXISTS failed_jobs (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  uuid varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  connection text COLLATE utf8mb4_unicode_ci NOT NULL,
  queue text COLLATE utf8mb4_unicode_ci NOT NULL,
  payload longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  exception longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  failed_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY failed_jobs_uuid_unique (uuid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table fillament2026.jobs
CREATE TABLE IF NOT EXISTS jobs (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  queue varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  payload longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  attempts smallint unsigned NOT NULL,
  reserved_at int unsigned DEFAULT NULL,
  available_at int unsigned NOT NULL,
  created_at int unsigned NOT NULL,
  PRIMARY KEY (id),
  KEY jobs_queue_index (queue)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.jobs: ~0 rows (approximately)

-- Dumping structure for table fillament2026.job_batches
CREATE TABLE IF NOT EXISTS job_batches (
  id varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  total_jobs int NOT NULL,
  pending_jobs int NOT NULL,
  failed_jobs int NOT NULL,
  failed_job_ids longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  options mediumtext COLLATE utf8mb4_unicode_ci,
  cancelled_at int DEFAULT NULL,
  created_at int NOT NULL,
  finished_at int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.job_batches: ~0 rows (approximately)

-- Dumping structure for table fillament2026.migrations
CREATE TABLE IF NOT EXISTS migrations (
  id int unsigned NOT NULL AUTO_INCREMENT,
  migration varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  batch int NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.migrations: ~5 rows (approximately)
INSERT INTO migrations (id, migration, batch) VALUES
 (1, '0001_01_01_000000_create_users_table', 1),
 (2, '0001_01_01_000001_create_cache_table', 1),
 (3, '0001_01_01_000002_create_jobs_table', 1),
 (8, '2026_04_23_124458_create_categories_table', 2),
 (9, '2026_04_23_124733_create_posts_table', 2),
 (10, '2026_04_23_150326_create_products_table', 3);

-- Dumping structure for table fillament2026.password_reset_tokens
CREATE TABLE IF NOT EXISTS password_reset_tokens (
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  token varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table fillament2026.posts
CREATE TABLE IF NOT EXISTS posts (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  title varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  slug varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  category_id bigint unsigned NOT NULL,
  color varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  image varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  body text COLLATE utf8mb4_unicode_ci,
  tags json DEFAULT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  published_at date DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  KEY posts_category_id_foreign (category_id),
  CONSTRAINT posts_category_id_foreign FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.posts: ~2 rows (approximately)
INSERT INTO posts (id, title, slug, category_id, color, image, body, tags, published, published_at, created_at, updated_at) VALUES
 (1, 'Laravel', 'laravel', 1, '#f01010', 'post/01KPX8AKR7RW3ZX5DEE3SX4CT6.png', 'ini adalah laravel', '["laravel"]', 1, '2026-04-23', '2026-04-23 06:26:31', '2026-04-23 06:26:31'),
 (2, 'Javascript', 'javascript', 2, '#ebf209', 'post/01KPX8C32YRB3114AMB6R6HXAN.jpg', 'ini adalah javascript', '["javascript"]', 0, '2026-04-23', '2026-04-23 06:27:20', '2026-04-23 06:27:20'),
 (3, 'Golang', 'golang', 3, '#13cbf7', 'post/01KPX8DAJ0ZJ93V7NK3HW8Y9WV.png', 'ini adalah golang', '["golang"]', 1, '2026-04-23', '2026-04-23 06:28:00', '2026-04-23 06:28:00');

-- Dumping structure for table fillament2026.products
CREATE TABLE IF NOT EXISTS products (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  sku varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  description text COLLATE utf8mb4_unicode_ci NOT NULL,
  price int NOT NULL,
  stock int NOT NULL,
  image varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  is_active tinyint(1) NOT NULL DEFAULT '1',
  is_featured tinyint(1) NOT NULL DEFAULT '0',
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY products_sku_unique (sku)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.products: ~3 rows (approximately)
INSERT INTO products (id, name, sku, description, price, stock, image, is_active, is_featured, created_at, updated_at) VALUES
 (1, 'Laravel', 'laravel', 'Laravel', 100000, 10, 'products/01KPXEN8Z2SK5ECF8ZAK11W94K.png', 1, 0, '2026-04-23 08:17:12', '2026-04-23 08:17:12'),
 (2, 'javascript', 'javascript', 'javascript', 100000, 10, 'products/01KPXEXBMWZNH8N0TWDGENBMYK.jpg', 1, 0, '2026-04-23 08:21:37', '2026-04-23 08:21:37'),
 (3, 'golang', 'golang', 'golang\n', 99999, 9, 'products/01KPXEYJVAW095S4PFCAQS15HH.png', 0, 1, '2026-04-23 08:22:17', '2026-04-23 08:31:01');

-- Dumping structure for table fillament2026.sessions
CREATE TABLE IF NOT EXISTS sessions (
  id varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  user_id bigint unsigned DEFAULT NULL,
  ip_address varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  user_agent text COLLATE utf8mb4_unicode_ci,
  payload longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  last_activity int NOT NULL,
  PRIMARY KEY (id),
  KEY sessions_user_id_index (user_id),
  KEY sessions_last_activity_index (last_activity)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.sessions: ~3 rows (approximately)
INSERT INTO sessions (id, user_id, ip_address, user_agent, payload, last_activity) VALUES
 ('jRZh9pRYtyQsdj0VSUCQXEuUYZqB3O8YrpfZQWvu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0',
'eyJfdG9rZW4iOiJsa09Xc09zQWthRG5nTUJTb3BycnFOand2MTlKS1ptMWQxbXBydkVEIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2FkbWluXC9wcm9kdWN0c1wvMyIsInJvdXRlIjoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLnByb2R1Y3RzLnZpZXcifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEsInBhc3N3b3JkX2hhc2hfd2ViIjoiNjhjMWRmYWE3OTEzODNjNjBiYjdmZTdkMGI0MDliNmMzZmY3YWJmMzVhOGU4Njc1OTUyODM2M2I1YTJhYjhiNiIsInRhYmxlcyI6eyJlNjQ0ODMzZjRlNGUwODcxMjMxNWRhNzFiMzNmYWNkMl9jb2x1bW5zIjpbeyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6Im5hbWUiLCJsYWJlbCI6Ik5hbWUiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoiZW1haWwiLCJsYWJlbCI6IkVtYWlsIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6ImNyZWF0ZWRfYXQiLCJsYWJlbCI6IkNyZWF0ZWQgYXQiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfV0sImRkYzFkMDhlYmVmYTY1MjI5MDNhYjFmMzdjM2NiOGFjX2NvbHVtbnMiOlt7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoibmFtZSIsImxhYmVsIjoiTmFtZSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJzbHVnIiwibGFiZWwiOiJTbHVnIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH1dLCJhNjA3Y2RhNzNjYmRlNDQ2ZjhiYjY0Y2NkNzU2MDZlZV9jb2x1bW5zIjpbeyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6InRpdGxlIiwibGFiZWwiOiJUaXRsZSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJzbHVnIiwibGFiZWwiOiJTbHVnIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6ImNhdGVnb3J5Lm5hbWUiLCJsYWJlbCI6IkNhdGVnb3J5IiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6ImNvbG9yIiwibGFiZWwiOiJDb2xvciIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJpbWFnZSIsImxhYmVsIjoiSW1hZ2UiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoicHVibGlzaGVkIiwibGFiZWwiOiJQdWJsaXNoZWQiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfV0sIjhmYWM2ZWIxY2VjMjY4MDNiM2Y3ZmI0NDBhMjcxMTFiX2NvbHVtbnMiOlt7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoibmFtZSIsImxhYmVsIjoiTmFtZSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJza3UiLCJsYWJlbCI6IlNrdSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJwcmljZSIsImxhYmVsIjoiUHJpY2UiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoic3RvY2siLCJsYWJlbCI6IlN0b2NrIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6ImltYWdlIiwibGFiZWwiOiJJbWFnZSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJpc19hY3RpdmUiLCJsYWJlbCI6IklzIGFjdGl2ZSIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9XX0sImZpbGFtZW50IjpbXX0=', 1776959419),
 ('mqVH6HzYVVXk83ZMnMyLSRwcKZ7KXRc06yTOd3bI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0',
'eyJfdG9rZW4iOiJrUU1pMTJiQ0RoT0NVM1RQQml5NXdrNjdDcU9pY3JmM1FnbGM1N1Y0IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9hZG1pblwvbG9naW4iLCJyb3V0ZSI6ImZpbGFtZW50LmFkbWluLmF1dGgubG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1776950908),
 ('Q1M6m6k51xeFhQaBfiQ76Q0OX4snhAH9SF6ufQLp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', 'eyJfdG9rZW4iOiIzdnl1ak41YnRBYjdVdlUycnZubXk0TW11VVM0WDg2ZWpkQnlINjdIIiwidXJsIjp7ImludGVuZGVkIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2FkbWluXC9wb3N0cyJ9LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL2FkbWluXC9wb3N0cyIsInJvdXRlIjoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLnBvc3RzLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1776950906);

-- Dumping structure for table fillament2026.users
CREATE TABLE IF NOT EXISTS users (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  remember_token varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY users_email_unique (email)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fillament2026.users: ~2 rows (approximately)
INSERT INTO users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) VALUES
 (1, 'admin user', 'admin@gmail.com', NULL, '$2y$12$tXi1bleSyLGBJ.3dGzRVA.8gSw2MB2xxXnmqHeIzZVK0K8PL/kPRe', NULL, '2026-04-23 05:23:47', '2026-04-23 05:23:47'),
 (2, 'admin user 2', 'admin2@gmail.cm', NULL, '$2y$12$AXUGH7rzkwCBDLaCnLjUmOE.osKY2ElYUVmom.Xz2rqyujoKwftYq', NULL, '2026-04-23 05:26:40', '2026-04-23 05:26:40'),
 (3, 'Teknisi1', 'teknisi1@gmail.com', NULL, '$2y$12$CR7ngnIfuTm2/a5rItGag.MrZm.gHFCQOL7RpqQqywys2hYKhEmZa', NULL, '2026-04-23 05:36:45', '2026-04-23 05:36:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
