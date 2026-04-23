# JOBSHEET 6

**Nama:** Tri Aldy Kurniawan  
**NIM:** 244107020098

---

## Pertemuan 4 — Implementasi Form Elements & Resource Post di Filament

### Langkah-langkah

**Langkah 1**  
![Langkah 1](https://github.com/user-attachments/assets/c847b209-0ed4-4cf5-9cd7-a7fbad09d3b0)

**Langkah 2**  
![Langkah 2](https://github.com/user-attachments/assets/b7d81c2d-2313-4f10-941a-ec04b5070817)

**Langkah 3**  
![Langkah 3a](https://github.com/user-attachments/assets/0f76093a-9d03-49a8-a3c9-cd68013190c9)  
![Langkah 3b](https://github.com/user-attachments/assets/162fca6f-2431-49a3-ab16-dbe09d701f64)  
![Langkah 3c](https://github.com/user-attachments/assets/94a9e212-6640-49b4-a5b5-ba17c0d32eeb)

---

### Jawaban Pertanyaan Analisis & Diskusi

> *(Akan diisi setelah soal diberikan)*

---

### Tugas Praktikum

**1. Form Create**  
![Form Create](https://github.com/user-attachments/assets/ac7d3a70-517e-4207-9f92-b64f4663bb0c)

**2. Tabel Post**  
![Tabel Post](https://github.com/user-attachments/assets/79af4473-d32a-4c6e-893d-9efd49fe9b8f)

**3. Folder Storage**  
![Folder Storage](https://github.com/user-attachments/assets/9fb4bcba-a349-46f2-84b6-4e5cf3e9c210)

---

### Jawaban Pertanyaan Analisis & Diskusi — Pertemuan 4

1. **Mengapa kita perlu storage:link?**  
   Karena file yang diupload disimpan di folder `storage/app/public`, sedangkan
   folder `public` yang bisa diakses browser berbeda. `storage:link` membuat
   symbolic link agar file bisa diakses lewat URL.

2. **Apa fungsi $casts untuk field JSON?**  
   Mengkonversi otomatis data JSON yang tersimpan di database menjadi array PHP
   saat diambil, dan sebaliknya saat disimpan, tanpa perlu encode/decode manual.

3. **Mengapa kita menggunakan category.name bukan category_id?**  
   Karena `category.name` menampilkan nama yang lebih mudah dibaca pengguna,
   sedangkan `category_id` hanya menampilkan angka yang tidak informatif.

4. **Apa perbedaan RichEditor dan MarkdownEditor?**  
   RichEditor menggunakan format WYSIWYG dengan toolbar visual (bold, italic, dll),
   sedangkan MarkdownEditor menggunakan sintaks Markdown berbasis teks.

---

### Jawaban Pertanyaan Analisis & Diskusi — Pertemuan 5

1. **Mengapa layout form penting dalam aplikasi admin?**  
   Layout yang baik membuat form lebih mudah dibaca, lebih terstruktur, dan
   meningkatkan pengalaman pengguna saat mengisi data.

2. **Apa perbedaan Section dan Group?**  
   Section mengelompokkan field dalam kotak dengan judul dan border, sedangkan
   Group hanya mengelompokkan field secara horizontal tanpa tampilan pembatas.

3. **Kapan kita menggunakan columnSpanFull()?**  
   Saat ingin sebuah field mengambil lebar penuh dari grid, misalnya pada field
   textarea atau editor yang membutuhkan ruang lebih lebar.

4. **Apa keuntungan sistem grid 12 kolom?**  
   Lebih fleksibel dalam mengatur lebar field, karena bisa dibagi menjadi
   berbagai kombinasi (1/2, 1/3, 2/3, dll) sesuai kebutuhan layout.
---

### Tugas Praktikum

**1. Halaman Sebelum Layout**  
![Sebelum Layout](https://github.com/user-attachments/assets/b3ef3fae-8933-48bd-a092-9daf9d31d27b)

**2. Halaman Setelah Layout**  
![Setelah Layout](https://github.com/user-attachments/assets/083c39bd-43d4-4bf1-822f-d45b7d727728)

---

## Pertemuan 6 — Custom Layout Form dengan Section & Group di Filament

### Langkah-langkah

*(tidak ada screenshot)*

---

### Jawaban Pertanyaan Analisis & Diskusi — Pertemuan 6

1. **Mengapa validasi penting pada admin panel?**  
   Untuk memastikan data yang masuk ke database valid, konsisten, dan mencegah
   kesalahan atau data korup yang bisa merusak sistem.

2. **Apa perbedaan validasi client-side dan server-side?**  
   Validasi client-side terjadi di browser (cepat, tapi bisa dilewati), sedangkan
   validasi server-side terjadi di backend (lebih aman dan tidak bisa dilewati).

3. **Mengapa unique otomatis bekerja saat edit data?**  
   Filament secara otomatis mengecualikan record yang sedang diedit dari pengecekan
   unique, sehingga data yang tidak diubah tidak dianggap duplikat.

4. **Kapan kita perlu menggunakan rules array dibanding string?**  
   Saat aturan validasi lebih dari satu atau kompleks, rules array lebih mudah
   dibaca dan dikelola dibanding menggabungkan semuanya dalam satu string.

---

### Tugas Praktikum

**1. Error Required**  
![Error Required](https://github.com/user-attachments/assets/36e9d45d-b2b3-488e-af70-3708d63291c1)

**2. Error Min Length**  
![Error Min Length](https://github.com/user-attachments/assets/5f07862d-2b7f-4de0-b7ea-92599a322cae)

**3. Error Unique**  
![Error Unique](https://github.com/user-attachments/assets/d89de8b6-f2bf-4b60-b1be-074ba7020cb4)
