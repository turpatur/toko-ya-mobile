# PBP Flutter 
## Past Works
- https://github.com/turpatur/toko-ya-mobile/wiki/Tugas-7
### Tugas 8 
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
   - Const digunakan untuk mendeclare value yang berniali konstan dan tidak berubah. Keuntungan menggunakan const adalah untuk mengurangi konsumsi memori karena assignment value dengan const hanya dilakukan sekali dan valuenya tidak akan berubah setelah compile. Sebaiknya menggunakan const untuk assign value atau widget yang tidak ada perubahan state, misal icon. Const sebaiknya tidak digunakan apabila value yang digunakan dapat berubah-ubah.
2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
   - Column digunakan untuk mengatur widget secara vertikal, sedangkan widget digunakan untuk mengatur widger secara horizontal.
   - Contoh implementasi (dalam tugas)
    - ```dart
      ...
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoCard(title: 'NPM', content: npm),
          InfoCard(title: 'Name', content: name),
          InfoCard(title: 'Class', content: className),
        ],
      ),
      ...
      ```
   - ```dart
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name: $_name'),
          Text('Description: $_description'),
          Text('Price: $_price'),
          Text('Stock: $_stock'),
        ],
      ),
     ```
3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
   - Saya hanya mneggunakan `TextFormField` yang merupakan elemen input yang field untuk mengisi teks.
   - Elemen lain yang saya tidak gunakan untuk tugas ini adalah:
     - `DropdownButtonFormField` yang berupa dropdown
     - `Checkbox` untuk menentukan niai boolean 
     - `Slider` untuk memilih nilai angka dalam suatu range interval
     - `RadioButton` untuk memilih opsi dari beberapa opsi lainnya
     - `DatePicker` untuk memilih tanggal    
4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
   - Saya menggunakan `ThemeData` untuk membuat tema aplikasi saya konsisten
    - ```dart
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(secondary: Colors.green[400]),
        useMaterial3: true,
      ),
      ```
      - Aplikasi yang saya buat mengandung banyak warna hijau, jadi saya gunakan color scheme dengan `primarySwatch: Colors.green` 
5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
   - Saya menggunakan `Push()` dan `PushReplacement()`.
    - `Push()` menambahkan route pada stack route yang dikelola oleh `Navigator`
     - ```dart
       if (item.name == "Tambah Produk") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemEntryFormPage()));
          }
       ``` 
    - `PushReplacement()` menghapus route yang ditampilkan oleh user, lalu menggantikannya dengan route lainnya
     - ```dart
       onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
       ``` 
