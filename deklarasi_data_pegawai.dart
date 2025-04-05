class Pegawai {
  int nip;         // NIP bertipe integer
  String nama;     // Nama bertipe string
  String alamat;   // Alamat bertipe string
  String golongan; // Golongan bertipe string (bisa juga char)

  // Constructor
  Pegawai({
    required this.nip,
    required this.nama,
    required this.alamat,
    required this.golongan,
  });

  // Method untuk menampilkan data
  void display() {
    print('NIP: $nip | Nama: $nama | Alamat: $alamat | Golongan: $golongan');
  }
}