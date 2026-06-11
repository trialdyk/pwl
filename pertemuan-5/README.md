# JOBSHEET 10

**Nama:** Tri Aldy Kurniawan  
**NIM:** 244107020098

---

## Pertemuan 10 — Implementasi Sorting (Ascending & Descending) pada Table Filament

### Capaian Pembelajaran

Setelah mengikuti praktikum ini, mahasiswa mampu:
1. Menambahkan fitur sorting kolom pada tabel Filament
2. Menggunakan method `sortable()`
3. Menerapkan sorting pada kolom relasi
4. Menerapkan sorting pada kolom tanggal
5. Mengatur default sorting tabel

---

### Langkah-langkah Implementasi

#### Langkah 1 — Menambahkan `sortable()` pada Kolom Title, Slug, dan Category

Buka file `app/Filament/Resources/Posts/Tables/PostsTable.php` dan tambahkan method `->sortable()` pada kolom Title, Slug, dan Category:

```php
TextColumn::make('title')
    ->sortable(),
TextColumn::make('slug')
    ->sortable(),
TextColumn::make('category.name')
    ->sortable(),
```

**Hasil:** Kolom Title, Slug, dan Category sekarang memiliki icon panah di header yang menandakan kolom tersebut bisa diurutkan.

![Posts Table dengan sortable columns](https://github.com/user-attachments/assets/screenshot-posts-sortable.png)

---

#### Langkah 2 — Menambahkan Kolom Created At dengan Sorting

Tambahkan kolom `created_at` dengan format datetime dan sorting:

```php
TextColumn::make('created_at')
    ->dateTime()
    ->sortable(),
```

**Hasil:** Kolom Created At muncul dengan format tanggal dan waktu yang rapi, serta bisa diurutkan.

---

#### Langkah 3 — Mengatur Default Sorting

Tambahkan `->defaultSort('created_at', 'desc')` pada konfigurasi table agar data terbaru tampil paling atas:

```php
return $table
    ->defaultSort('created_at', 'desc')
    ->columns([
        // ...
    ]);
```

**Hasil:** Tabel otomatis menampilkan data dengan urutan tanggal terbaru (descending) saat pertama kali dibuka.

![Default Sorting Created At Desc](https://github.com/user-attachments/assets/screenshot-default-sort-desc.png)

---

#### Langkah 4 — Uji Sorting Title Ascending (A–Z)

Klik header kolom **Title** satu kali untuk mengurutkan secara ascending (A–Z).

**Hasil:** Data terurut dari A ke Z:
1. Belajar Laravel
2. Filament Admin Panel
3. Gin Framework
4. Go Concurrency
5. Laravel API
6. Node.js Backend
7. React Hooks
8. Vue.js untuk Pemula

![Sorting Title Ascending](https://github.com/user-attachments/assets/screenshot-title-asc.png)

---

#### Langkah 5 — Uji Sorting Title Descending (Z–A)

Klik header kolom **Title** dua kali untuk mengurutkan secara descending (Z–A).

**Hasil:** Data terurut dari Z ke A:
1. Vue.js untuk Pemula
2. React Hooks
3. Node.js Backend
4. Laravel API
5. Go Concurrency
6. Gin Framework
7. Filament Admin Panel
8. Belajar Laravel

![Sorting Title Descending](https://github.com/user-attachments/assets/screenshot-title-desc.png)

---

#### Langkah 6 — Uji Sorting Created At

Klik header kolom **Created At** untuk mengurutkan berdasarkan tanggal.

**Hasil:** Data terurut berdasarkan tanggal pembuatan, dengan data terbaru di atas (descending) atau terlama di atas (ascending).

![Sorting Created At](https://github.com/user-attachments/assets/screenshot-created-at-sort.png)

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Mengapa sorting penting pada admin panel?**  
   Sorting memungkinkan pengguna untuk mengorganisir dan menemukan data dengan cepat, terutama ketika jumlah data sangat banyak. Tanpa sorting, pengguna harus mencari data secara manual yang tidak efisien.

2. **Apa perbedaan `sortable()` biasa dengan `defaultSort()`?**  
   `sortable()` hanya mengaktifkan fitur sorting pada kolom tertentu, sehingga pengguna bisa klik header untuk mengurutkan. Sedangkan `defaultSort()` mengatur urutan default tabel saat pertama kali dibuka, tanpa perlu interaksi pengguna.

3. **Mengapa relasi tetap bisa di-sort?**  
   Filament secara otomatis menangani query relasi (JOIN) saat sorting. Ketika kita menggunakan `category.name` dengan `->sortable()`, Filament akan melakukan JOIN dengan tabel categories dan mengurutkan berdasarkan kolom name.

4. **Kapan kita menggunakan `desc` sebagai default?**  
   `desc` (descending) cocok digunakan untuk data yang bersifat kronologis seperti blog posts, transaksi, atau log aktivitas, di mana data terbaru biasanya lebih relevan dan ingin ditampilkan pertama kali.

---

### Kesimpulan

Pada praktikum ini, mahasiswa telah berhasil:
- ✅ Mengaktifkan sorting pada kolom Title, Slug, dan Category
- ✅ Menambahkan kolom Created At dengan format datetime
- ✅ Mengatur default sorting berdasarkan Created At descending
- ✅ Menguji sorting ascending dan descending pada kolom Title
- ✅ Memahami perbedaan antara `sortable()` dan `defaultSort()`

Fitur sorting ini sangat penting untuk manajemen data dalam skala besar, memungkinkan pengguna untuk mengorganisir dan menemukan informasi dengan cepat dan efisien.
