# Tugas 7
 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
    - Stateless Widget
      Widget yang tidak memiliki state. Bersifat statis dan tampilannya tetap sama setelah widget dirender. Contohnya adalah `Icon`, `Text`, `Container`, dan `Image`.
    - Stateful Widget
      Widget yang memiliki state yang dapat berubah setelah widget dirender. State ini dapat berubah karena adanya interaksi user atau perubahan data. Contohnya adalah `Checkbox`, `Slider`, dan `TextField`.
 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - Scaffold  : Sebagai struktur dasar halaman dengan AppBar dan Body 
    - AppBar    : Menampilkan header
    - Padding   : Memberikan padding di sekeliling widget
    - Column    : Mengatur layout widget secara vertikal
    - Row       : Mengatur layout widget secara horizontal
    - InfoCard  : Menampilkan informasi NPM, nama, kelas di proyek ini dalam bentuk card
    - GridView  : Menampilkan item dalam format grid
    - ItemCard  : Menampilkan fitur utama (lihat daftar produk, tambah produk, logout)
    - Material  : Memberikan tampilan material design pada widget 
    - InkWell   : Memberikan efek ripple pada widget 
    - Snackbar  : Menampilkan pesan sementara apabila button ditekan
 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut. <br>
    `setState()` adalah fungsi yang digunakan untuk mengubah state dari stateful widget. Pemanggilan `setState()` akan merender ulang widget tersebut dengan state yang baru yang dipengaruhi oleh perubahan-perubahan vaeriabel. Dalam proyek ini, contoh variabel yang dapat terdampak oleh setState() adalah `products` apabila ada penambahan dalam produk dalam database e-commerce.
 4. Jelaskan perbedaan antara const dengan final. <br>
     - const  : assign value pada compile time dan tidak bisa diubah pada runtime. 
     - final  : assign value pada runtime dan sekalinya diassign tidak dapat diubah valuenya. 
 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
    -  Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
       - Membuuat proyek dengan `flutter create toko_ya`
       - cd ke direktori `toko_ya`
       - run proyek dengan `flutter run`
    -  Membuat tiga tombol sederhana dengan ikon dan teks.
      - Membuat widget ItemHomepage dan ItemCard
        - ```dart
          class ItemHomepage {
            final String name;
            final IconData icon;
          
            ItemHomepage(this.name, this.icon);
          }
          
          class ItemCard extends StatelessWidget {
            final ItemHomepage item;
            final Color buttonColor;
          
            const ItemCard(this.item, {super.key, required this.buttonColor});
          
            @override
            Widget build(BuildContext context) {
            ...
          ```
      - Membuat array Items
        - ```dart
            final List<ItemHomepage> items = [
              ItemHomepage("Lihat Daftar Produk", Icons.inventory),
              ItemHomepage("Tambah Produk", Icons.add),
              ItemHomepage("Logout", Icons.logout),
            ];
          ```  
    - Mengimplementasikan warna-warna yang berbeda untuk setiap tombol
      - Apply warna berdasarkan Index
        - ```dart
            Color _getButtonColor(int index) {
              switch (index) {
                case 0:
                  return Colors.green[700]!;
                case 1:
                  return Colors.green[500]!;
                case 2:
                  return Colors.green[300]!;
                default:
                  return Colors.green;
              }
            }
          }
          ```
      - apply warna pada ItemCard
        - ```dart
            @override
            Widget build(BuildContext context) {
              return Material(
                color: buttonColor,
          ...
          ``` 
    - Memunculkan Snackbar dengan pesan
      - ```dart
        ...
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        ...
        ``` 
