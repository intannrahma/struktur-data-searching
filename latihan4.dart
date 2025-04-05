void insertBefore(List<int> list, int key, int newData) {
  int index = list.indexOf(key);
  if (index != -1) {
    list.insert(index, newData);
    print("Disisipkan $newData sebelum $key => $list");
  } else {
    print("Data kunci $key tidak ditemukan.");
  }
}

void insertAfter(List<int> list, int key, int newData) {
  int index = list.indexOf(key);
  if (index != -1) {
    list.insert(index + 1, newData);
    print("Disisipkan $newData sesudah $key => $list");
  } else {
    print("Data kunci $key tidak ditemukan.");
  }
}

void deleteKey(List<int> list, int key) {
  int index = list.indexOf(key);
  if (index != -1) {
    list.removeAt(index);
    print("Data kunci $key dihapus => $list");
  } else {
    print("Data kunci $key tidak ditemukan.");
  }
}

void main() {
  List<int> data = [15, 30, 45, 50, 55];

  print("Data awal: $data");

  insertBefore(data, 30, 25);  // sebelum 30
  insertAfter(data, 30, 35);   // sesudah 30
  deleteKey(data, 45);         // hapus 40
}
