# JOBSHEET 5

**Nama:** Tri Aldy Kurniawan  
**NIM:** 244107020098

---

## Pertemuan 1 — Instalasi Filament

### Langkah-langkah Instalasi

**Langkah 1**  
![Langkah 1](https://github.com/user-attachments/assets/2e33e10d-c2c9-405b-8347-72e95778ff02)

**Langkah 2**  
![Langkah 2](https://github.com/user-attachments/assets/05d30a4a-a897-438c-ae22-868eaabebc99)

**Langkah 3**  
![Langkah 3](https://github.com/user-attachments/assets/7dbdf46e-fc29-49eb-86dd-7aeb45960422)

**Langkah 4**  
![Langkah 4](https://github.com/user-attachments/assets/03703004-bc29-4d8d-8e37-810fb2f00feb)

**Langkah 5**  
![Langkah 5](https://github.com/user-attachments/assets/f2ae0920-41a1-42cf-b6d6-5c6bbd874517)

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Apa kelebihan Filament dibanding membuat admin panel manual?**  
   Filament menyediakan komponen UI siap pakai (tabel, form, notifikasi) sehingga 
   lebih cepat, hemat waktu, dan tidak perlu membuat dari nol.

2. **Mengapa Filament menggunakan Livewire?**  
   Karena Livewire memungkinkan interaksi dinamis (real-time) di halaman tanpa 
   perlu menulis JavaScript secara manual.

3. **Apa perbedaan SQLite dan MySQL dalam development?**  
   SQLite berbasis file, ringan, dan cocok untuk development lokal. MySQL berbasis 
   server, lebih powerful, dan cocok untuk production.

4. **Apa fungsi Panel Builder?**  
   Panel Builder adalah fitur utama Filament untuk membuat admin panel lengkap 
   dengan navigasi, halaman, dan resource secara terstruktur.

---

### Tugas Praktikum

**1. Halaman Login**  
![Halaman Login](https://github.com/user-attachments/assets/938ccbec-34ba-4414-bbcc-6c64f1b363bb)

**2. Halaman Dashboard**  
![Halaman Dashboard](https://github.com/user-attachments/assets/b2b00efb-b61b-4e29-9fd9-1d818c48c638)

**3. User di Database**  
![User di Database](https://github.com/user-attachments/assets/c37f48cc-985b-4953-825d-6ded7d54d2ca)

---

## Pertemuan 2 — Membuat CRUD Filament Resource

### Langkah-langkah

**Langkah 1**  
*(tidak ada screenshot)*

**Langkah 2**  
![Langkah 2](https://github.com/user-attachments/assets/6516c47a-2d3b-4fe8-b974-51c3ebcc1121)

**Langkah 3**  
![Langkah 3a](https://github.com/user-attachments/assets/92f7ff6b-14b4-4525-99b6-00808f4ff273)  
![Langkah 3b](https://github.com/user-attachments/assets/d16652ab-efcc-4b90-a0e4-f6350e9abc4c)  
![Langkah 3c](https://github.com/user-attachments/assets/858eb7ce-f4d0-4fd5-8a7a-8c35db44f681)  
![Langkah 3d](https://github.com/user-attachments/assets/1df62391-a0f9-4541-aa84-649e7d99c5c7)

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Mengapa Filament dapat membuat CRUD tanpa banyak coding?**  
   Karena Filament otomatis men-generate Resource beserta halaman List, Create, 
   Edit, dan Delete hanya dengan satu perintah artisan.

2. **Apa perbedaan Form Schema dan Table Schema?**  
   Form Schema mendefinisikan field input pada halaman Create/Edit, sedangkan 
   Table Schema mendefinisikan kolom yang ditampilkan pada halaman List.

3. **Bagaimana jika kita ingin menambahkan validasi email unik?**  
   Tambahkan rule `unique` pada field email di Form Schema, contoh:  
   `TextInput::make('email')->email()->unique()`

4. **Mengapa password tidak perlu kita hash manual?**  
   Karena Laravel secara otomatis melakukan hashing password melalui casting 
   `hashed` pada model, sehingga nilai tersimpan sudah terenkripsi.

---

### Tugas Praktikum

**1. Halaman List**  
![Halaman List](https://github.com/user-attachments/assets/845f2469-b4b3-4eef-a799-348f261e49d4)

**2. Halaman Create**  
![Halaman Create](https://github.com/user-attachments/assets/22699433-502a-4b74-8120-d86f38dd362d)

**3. Database**  
![Database](https://github.com/user-attachments/assets/fd17f64c-3e54-4989-84fb-8a945047dce3)

---

## Pertemuan 3 — Membuat Migration, Model, Relasi & Resource Category

### Langkah-langkah

**Langkah 1**  
![Langkah 1](https://github.com/user-attachments/assets/34bed079-594e-4fea-802e-ef324edbd324)

**Langkah 2**  
![Langkah 2](https://github.com/user-attachments/assets/6541c936-29d3-4e9e-a9c7-3c85c8f6caf5)

**Langkah 3**  
![Langkah 3](https://github.com/user-attachments/assets/bf4ae1b5-c7d5-4068-a0f2-e7d1b201071e)

**Langkah 4**  
![Langkah 4](https://github.com/user-attachments/assets/3b6874ba-392b-4e81-801d-bb5f2fce59fb)

**Langkah 5**  
![Langkah 5a](https://github.com/user-attachments/assets/8f58e5d1-ea3d-4e12-9693-5d6a43c72ece)  
![Langkah 5b](https://github.com/user-attachments/assets/74cb941c-1598-4878-9804-278d15b7efcb)  
![Langkah 5c](https://github.com/user-attachments/assets/370b73df-28d6-40e5-8076-26d63530082a)  
![Langkah 5d](https://github.com/user-attachments/assets/b9274498-3286-4d12-a599-76add27c3288)

---

### Jawaban Pertanyaan Analisis & Diskusi

1. **Mengapa kita perlu $fillable?**  
   Untuk mencegah mass assignment vulnerability, yaitu membatasi kolom mana saja 
   yang boleh diisi secara massal melalui method seperti `create()` atau `update()`.

2. **Apa fungsi $casts pada Laravel?**  
   Untuk mengkonversi tipe data atribut model secara otomatis, misalnya mengubah 
   string menjadi array, boolean, atau melakukan hashing pada password.

3. **Apa perbedaan integer biasa dengan foreign key?**  
   Integer biasa hanya menyimpan angka tanpa relasi, sedangkan foreign key adalah 
   integer yang merujuk ke primary key tabel lain untuk membuat relasi antar tabel.

4. **Bagaimana jika category dihapus tetapi masih ada post?**  
   Tergantung pengaturan constraint-nya. Jika menggunakan `onDelete('cascade')`, 
   post ikut terhapus. Jika tidak diatur, akan terjadi error foreign key constraint.

---

### Tugas Praktikum

**1. Halaman List**  
![Halaman List](https://github.com/user-attachments/assets/d0c4bdd8-d399-495c-bf8b-f6ab6401fdfb)

**2. Validasi Slug Unik**  
![Validasi Slug](https://github.com/user-attachments/assets/dccdf18d-7ec3-4488-997e-eee287915866)

**3. Database**  
![Database](https://github.com/user-attachments/assets/02463ee3-fba9-419d-9294-9c8bc4b66139)
