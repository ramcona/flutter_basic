class TransaksiModel{
  String type;
  int nominal;
  String sumber;
  String tujuan;
  String waktu;
  String status;

  TransaksiModel({
    this.type,
    this.nominal,
    this.sumber,
    this.tujuan,
    this.waktu,
    this.status
  });

}

var dataTransaksi = [
  TransaksiModel(
    type: 'masuk',
    nominal: 100000,
    sumber: 'BANK BNI - 08003593733 - Rafli Ramadhan',
    tujuan: 'BANK BCA - 08033334 - Rafli Ramadhan',
    waktu: '12:10 12 Mei 2020 WIB',
    status: 'SELESAI'
  ),
  TransaksiModel(
      type: 'masuk',
      nominal: 150000,
      sumber: 'BANK BNI - 08003593733 - Rafli Ramadhan',
      tujuan: 'BANK BCA - 08033334 - Rafli Ramadhan',
      waktu: '13:10 12 Mei 2020 WIB',
      status: 'SELESAI'
  ),
  TransaksiModel(
      type: 'keluar',
      nominal: 100000,
      sumber: 'BANK BCA - 08033334 - Rafli Ramadhan',
      tujuan: 'BANK BNI - 08003593733 - Rafli Ramadhan',
      waktu: '14:10 12 Mei 2020 WIB',
      status: 'SELESAI'
  )
];