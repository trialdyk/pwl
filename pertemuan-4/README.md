**Pertemuan 4**

**Praktikum 1**
Hasil Pengamatan
<img width="1109" height="186" alt="image" src="https://github.com/user-attachments/assets/ef313135-4e39-4d49-9254-8df004e6076d" />
Apabila kolomnya tidak dimasukkan ke fillable maka datanya tidak akan masuk saat mass assignment

**Praktikum 2**
Hasil pengamatan pertama
<img width="546" height="216" alt="image" src="https://github.com/user-attachments/assets/a9d88fad-fbe0-448d-a08f-87a3a2a61831" />
ini memunculkan data dengan id 1

ketika dirubah ke where dan first
<img width="516" height="197" alt="image" src="https://github.com/user-attachments/assets/fca45c8f-106f-4a24-aca7-cf89dacd15b9" />
ini mencari data dengan level id 1

ketika dirubah dengan first where
<img width="516" height="197" alt="image" src="https://github.com/user-attachments/assets/d3988fbd-46bc-49df-b820-b476cd13bb93" />
hasilnya sama seperti sebelumnya, ini berarti ini adalah kode lebih singkat untuk mencari data dengan level id 1

abort(404)

akan menampilkan halaman error 404
<img width="1295" height="745" alt="image" src="https://github.com/user-attachments/assets/cc0a9cef-5589-4746-8e0a-5f576609367a" />

**Praktikum 2.2**
kedua fungsi tersebut bertujuan untuk membuat halaman jadi 404 saat datanya kosong, hanya saja findOrFail hanya untuk id 
<img width="1295" height="745" alt="image" src="https://github.com/user-attachments/assets/ec550dd0-89ad-4624-a445-8da0ea5a5e56" />


**Praktikum 2.3**
menampilkan jumlah user dengan level_id 2
<img width="381" height="78" alt="image" src="https://github.com/user-attachments/assets/5a492bb9-942f-460c-a7f4-f688bb488b13" />
Tampilan langkah 3
<img width="214" height="146" alt="image" src="https://github.com/user-attachments/assets/3cba6af9-e1e9-4918-b27e-03eda91c555a" />


**Praktikum 2.4**
mencoba find user, jika tidak menemukan data akan create datanya
<img width="470" height="212" alt="image" src="https://github.com/user-attachments/assets/d7da0388-a0e9-4bca-b15f-d076c2aa3ef3" />

kalau firstOrNew dia membuat instance tapi tidak disimpan di database, harus di $user->save() dulu
<img width="366" height="179" alt="image" src="https://github.com/user-attachments/assets/86ff1820-c7f1-41e2-aad0-018ee0c817b4" />
<img width="366" height="179" alt="image" src="https://github.com/user-attachments/assets/88672f22-4a4e-4856-9e70-a45dfcc161aa" />


**Praktikum 2.5**
<img width="567" height="181" alt="image" src="https://github.com/user-attachments/assets/23d6ec68-be4b-467b-a34c-b2e972bb23f2" />
Kodenya mendemonstrasikan penggunaan method isDirty() dan isClean() di Laravel Eloquent untuk memeriksa apakah model telah dimodifikasi

<img width="392" height="107" alt="image" src="https://github.com/user-attachments/assets/72cc4e76-cd4e-4e29-8ab2-bf2f84f3e085" />
kodenya mendemonstrasikan penggunaan method wasChanged() di Laravel Eloquent untuk memeriksa apakah ada perubahan yang sudah disimpan ke database

**Praktikum 2.6**
<img width="534" height="326" alt="image" src="https://github.com/user-attachments/assets/7eef2f8e-8f6c-47fb-a0a6-02435df7da04" />
Menampilkan tabel dengan semua data user dari database
Setiap baris menampilkan: ID, Username, Nama, ID Level, dan link Ubah/Hapus
Ada link "+ Tambah User" di atas tabel
Jika ada 5 user di database, akan tampil 5 baris data
Note: Link tambah, ubah, dan hapus belum memiliki route/controller, jadi akan error 404 jika diklik.

<img width="518" height="297" alt="image" src="https://github.com/user-attachments/assets/e99e5c4d-1607-484f-b830-71949b611cee" />
<img width="563" height="352" alt="image" src="https://github.com/user-attachments/assets/4ca24a07-5c86-465f-9ca3-ed64f9206030" />

Cara Kerja:
User klik link "+ Tambah User" di halaman /user
Browser membuka /user/tambah → tampil form
User isi form dan klik tombol "Simpan"
Data dikirim ke /user/tambah_simpan (POST)
Controller simpan data ke database
Redirect kembali ke /user → tampil data baru

Edit :
<img width="414" height="320" alt="image" src="https://github.com/user-attachments/assets/06f11092-8d40-4082-9e0b-97411e1cd94f" />
<img width="536" height="387" alt="image" src="https://github.com/user-attachments/assets/5eb9fdc0-49cb-4304-85fc-597e3cfe3e61" />
Cara Kerja:
User klik link "Ubah" di tabel user (misal ID = 5)
Browser membuka /user/ubah/5 → tampil form dengan data user ID 5
User ubah data dan klik tombol "Ubah"
Data dikirim ke /user/ubah_simpan/5 (PUT)
Controller update data di database
Redirect kembali ke /user → tampil data yang sudah diubah

Delete:
<img width="538" height="330" alt="image" src="https://github.com/user-attachments/assets/c76c0b99-1393-4e73-b7d8-92ce08214992" />
Cara kerja:

Menerima parameter $id dari URL
Mencari user berdasarkan ID menggunakan find($id)
Menghapus data user dengan method delete()
Redirect kembali ke halaman /user

**Praktikum 2.7**
<img width="690" height="266" alt="image" src="https://github.com/user-attachments/assets/2e0bf299-a450-4733-89a7-46c50d68e49d" />
Method with('level') - Eager Loading:

Mengambil data user sekaligus dengan data level yang berelasi
Mencegah N+1 query problem (lebih efisien)
Tanpa with(): Query dijalankan berkali-kali untuk setiap user
Dengan with(): Hanya 2 query (1 untuk user, 1 untuk semua level)
