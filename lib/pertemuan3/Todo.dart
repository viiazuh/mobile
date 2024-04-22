class TodoData{
  String? _judul;
  String? _keterangan;


  TodoData(this._judul, this._keterangan);
  String? get judul => _judul;
  String? get keterangan => _keterangan;

  set judul(val){_judul = val;}
  set keterangan(val){_keterangan =  val;}
}