# JOBSHEET 7

**Nama:** Tri Aldy Kurniawan  
**NIM:** 244107020098

> **Catatan:** Screenshot untuk Pertemuan 7–8 banyak yang hilang karena saat mengerjakan
> laporan praktikum pertemuan 9, tidak sengaja merefresh halaman di GitHub sehingga
> laporan hilang. Progress juga sudah di-push ke GitHub sehingga tidak bisa mengulang
> dari awal. Hanya bisa melampirkan screenshot praktikum pertemuan 9.

---

## Pertemuan 7 — Implementasi Wizard Form (Multi Step Form) di Filament

### Langkah-langkah

*(Screenshot tidak tersedia)*

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Mengapa Wizard Form lebih baik untuk form panjang?**  
   Karena memecah form panjang menjadi beberapa langkah yang lebih fokus,
   sehingga pengguna tidak kewalahan dan proses pengisian lebih terarah.

2. **Kapan kita menggunakan skippable()?**  
   Saat sebuah step bersifat opsional dan pengguna boleh melewatinya tanpa
   harus mengisi semua field di step tersebut.

3. **Apa kelebihan multi step dibanding single form panjang?**  
   Lebih terstruktur, lebih mudah divalidasi per tahap, dan pengalaman pengguna
   lebih baik karena tidak perlu scroll panjang.

4. **Apakah wizard cocok untuk semua jenis form?**  
   Tidak. Wizard cocok untuk form kompleks yang memiliki alur logis antar langkah.
   Untuk form sederhana, single form lebih efisien.

---

### Tugas Praktikum

*(Screenshot tidak tersedia)*

---

## Pertemuan 8 — Implementasi Info List (View Page) di Filament

### Langkah-langkah

*(Screenshot tidak tersedia)*

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Mengapa View Page tidak cocok menggunakan form input?**  
   Karena View Page berfungsi hanya untuk menampilkan data, bukan mengeditnya.
   Menggunakan form input di sana akan membingungkan pengguna.

2. **Apa perbedaan TextColumn dan TextEntry?**  
   TextColumn digunakan di Table untuk menampilkan data dalam baris tabel,
   sedangkan TextEntry digunakan di InfoList untuk menampilkan detail satu record.

3. **Kapan kita menggunakan badge?**  
   Saat ingin menampilkan nilai yang memiliki status atau kategori tertentu,
   seperti status publish/draft, agar lebih mudah dibedakan secara visual.

4. **Apa keuntungan menggunakan IconEntry untuk boolean?**  
   Lebih intuitif secara visual, pengguna langsung memahami nilai true/false
   melalui ikon centang atau silang tanpa perlu membaca teks.

---

### Tugas Praktikum

*(Screenshot tidak tersedia)*

---

## Pertemuan 9 — Implementasi Tabs pada Info List di Filament

### Langkah-langkah

*(Screenshot tidak tersedia)*

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Kapan kita menggunakan Tabs dibanding Section?**  
   Tabs digunakan saat data terlalu banyak dan perlu dipisah secara kategori,
   sedangkan Section cukup untuk mengelompokkan field dalam satu halaman yang sama.

2. **Apa kelebihan Tabs untuk data panjang?**  
   Membuat halaman lebih ringkas dan tidak perlu scroll panjang, karena setiap
   kategori data ditampilkan secara terpisah dalam tab masing-masing.

3. **Apakah Tabs bisa digunakan pada Form juga?**  
   Ya, Tabs dapat digunakan di Form maupun InfoList untuk mengelompokkan
   field atau entry menjadi beberapa bagian yang lebih terorganisir.

4. **Bagaimana jika tab terlalu banyak?**  
   Bisa menyebabkan navigasi yang membingungkan. Sebaiknya gabungkan tab yang
   berkaitan atau gunakan layout lain seperti Section jika tab melebihi 5.

---

### Tugas Praktikum

**Tab Horizontal**  
![Tab Horizontal](https://github.com/user-attachments/assets/7de2b91d-8656-46a3-9c99-7e383a7fcc74)

**Tab Vertical**  
![Tab Vertical](https://github.com/user-attachments/assets/a0f1fac5-b791-4240-aea0-51179e888dc1)

**Tab dengan Badge**  
![Tab dengan Badge](https://github.com/user-attachments/assets/72d91c89-2c6e-4f53-9665-a9376b78026d)
