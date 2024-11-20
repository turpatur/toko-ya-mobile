# PBP Flutter 
## Past Works
- https://github.com/turpatur/toko-ya-mobile/wiki/Tugas-7
- https://github.com/turpatur/toko-ya-mobile/wiki/Tugas-8
### Tugas 9 
 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
    Model untuk mendefinisikan struktur data yang dikirim untuk memudahkan validasi dan pemrosesan data, kalau tidak ada model bisa aada kesalahan parsing data. 
 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
    Library HTTP untuk mengirim request (GET,POST, dan lainnya) dan menerima response. 
 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    CookieRequest mengirim dan menyimpan informasi dari session. Perlu di semua komponen flutter agar semua komponen bisa akses session yang sama. 
 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    - User input data di UI Flutter
    - Data kirim ke server Django
    - Server proses data dan memberikan respons
    - Flutter menerima response dan menampilkan data

 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    - Login: User memasukkan data login, server melakukan verifikasi dan mengirim token yang disimpan di Flutter.
    - Register: User mengisi data register, server menyimpan data dan mengirimkan status.
    - Logout: User mengirim permintaan logout, server menghapus sesi dan token, Flutter menghapus sesi.

 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
       - Saya membuat app authentication pada Django untuk memproses registrasi, lalu adjust settings sesuai dengan kebutuhan.
       - Membuat function di views di project django untuk memproses login, registrasi, dan tambah item
       - install package provider dan pbp_django_auth untuk authorization pada flutter.
       - Copas data json pada project Django dan ubah ke dart via quicktype, lalu letakkan pada `models/item_entry.dart`
       - Input untuk form akan disimpan, lalu ditampilkan di page lihat daftar item 
       - Buat card untuk setiap item yang bisa diclick, setelah diclick akan menampilkan item dengan detail sesuai model. 
