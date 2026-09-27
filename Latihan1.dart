void main() {
  print('nama : Muhamad Miftahul Ulum');
  print('nim  : 1124160131');

  // String
  // String digunakan untuk menyimpan data berupa teks.
  // Bisa menggunakan kutip satu atau kutip dua.
  String brandLaptop = 'MacBook Air M1';
  print(brandLaptop);

  // int
  // int digunakan untuk bilangan bulat dan tidak menggunakan desimal.
  int tahun = 2020;
  print(tahun);

  // double
  // double digunakan untuk angka yang mempunyai nilai desimal.
  // Bisa digunakan untuk harga, berat, rating dan lain-lain.
  double harga = 16000000.0;
  print(harga);

  // Nullable String
  // Tanda ? berarti variabel boleh mempunyai nilai atau null.
  String? alamatPembeli = 'Jl. Anggrek';

  alamatPembeli = null;
  print(alamatPembeli);

  // Null-aware operator (??)
  // Digunakan untuk memberikan nilai pengganti jika nilainya null.
  String noteToPrint = alamatPembeli ?? 'Tidak ada alamat';
  print(noteToPrint);

  // Null Assertion Operator (!)
  // Tanda ! digunakan jika kita yakin variabel nullable tidak null.
  // Kalau ternyata nilainya null, bisa menyebabkan error.
  // Contoh:
  // print(alamatPembeli!.toUpperCase());
  //
  // Saya komentari supaya tidak dijalankan karena
  // alamatPembeli saat ini mempunyai nilai null.

  // final
  // final digunakan untuk nilai yang hanya bisa diberikan satu kali.
  // Setelah diberi nilai, nilainya tidak bisa diganti lagi.
  final String idPembelian = 'SHPY-0121';

  // final juga bisa digunakan untuk nilai yang baru diketahui
  // ketika program sedang berjalan.
  final DateTime waktuPembelian = DateTime.now();

  print(idPembelian);
  print(waktuPembelian);

  // const
  // const digunakan untuk nilai yang sudah diketahui dari awal
  // dan nilainya bersifat tetap.
  const String mataUang = 'IDR';
  const double pajak = 0.11;

  print(mataUang);
  print(pajak);

  // late
  // late digunakan ketika variabel dibuat terlebih dahulu,
  // tetapi nilainya baru diberikan setelah itu.
  late String statusPesanan;

  statusPesanan = 'Sedang diproses';
  print(statusPesanan);

  // String interpolation
  // Digunakan untuk memasukkan nilai variabel ke dalam String
  // menggunakan tanda $.
  String nama = 'Muhamad Miftahul Ulum';
  int umur = 19;

  print('Nama saya $nama');
  print('Umur saya $umur tahun');

  // List
  // List digunakan untuk menyimpan beberapa data secara berurutan.
  List<String> barangBelanja = [
    'Laptop',
    'Mouse',
    'Keyboard',
  ];

  print(barangBelanja);

  // Index dimulai dari 0, jadi [0] adalah data pertama.
  print(barangBelanja[0]);

  // add digunakan untuk menambahkan data ke dalam List.
  barangBelanja.add('Headset');
  print(barangBelanja);

  // Set
  // Set digunakan untuk menyimpan data yang tidak boleh duplikat.
  // Jadi data yang sama hanya akan disimpan satu kali.
  Set<String> kategoriBarang = {
    'Elektronik',
    'Aksesoris',
    'Elektronik',
  };

  print(kategoriBarang);

  // Map
  // Map menyimpan data dalam bentuk key dan value.
  // Key pada contoh ini menggunakan String.
  // Dynamic digunakan karena value-nya mempunyai tipe yang berbeda.
  Map<String, dynamic> dataMahasiswa = {
    'nama': 'Muhamad Miftahul Ulum',
    'nim': '1124160131',
    'semester': 5,
    'aktif': true,
  };

  // Data Map bisa dipanggil berdasarkan key-nya.
  print(dataMahasiswa['nama']);
  print(dataMahasiswa['nim']);
  print(dataMahasiswa['semester']);
  print(dataMahasiswa['aktif']);

  // Object
  // Object bisa menyimpan data dengan tipe yang berbeda.
  // Tetapi tipe datanya perlu diperiksa sebelum menggunakan
  // fungsi tertentu.
  Object data = 'Muhamad Miftahul Ulum';

  // is String digunakan untuk mengecek apakah data berupa String.
  if (data is String) {
    print(data.toUpperCase());
  }

  // dynamic
  // dynamic membuat variabel bisa menyimpan tipe data yang berbeda.
  // Tetapi harus hati-hati karena tipe datanya tidak dicek secara ketat.
  dynamic dataBebas = 'Belajar Dart';

  print(dataBebas);

  // Awalnya berisi String, kemudian diganti menjadi int.
  dataBebas = 19;
  print(dataBebas);

  // Membuat object dari class DataMahasiswa
  // Semua nilai dibuat tetap karena property-nya menggunakan final.
  const DataMahasiswa mahasiswa = DataMahasiswa(
    nama: 'Muhamad Miftahul Ulum',
    nim: '1124160131',
    semester: 5,
  );

  print(mahasiswa.nama);
  print(mahasiswa.nim);
  print(mahasiswa.semester);
}


// Immutable Class
// Class ini dibuat supaya data yang sudah dibuat tidak bisa
// diubah lagi karena semua property menggunakan final.
class DataMahasiswa {
  final String nama;
  final String nim;
  final int semester;

  // const constructor digunakan untuk membuat object yang
  // nilainya tetap.
  // required berarti data tersebut wajib diberikan saat
  // membuat object.
  const DataMahasiswa({
    required this.nama,
    required this.nim,
    required this.semester,
  });
}
