import 'package:flutter/material.dart';

void main() {
  hello(); // Bài 6: gọi hàm không có tham số
  runApp(const BaiThucHanhDartApp());
}

// ================= BÀI 6 =================
void hello() {
  debugPrint('Hello Dart');
}

// ================= BÀI 7 =================
int tinhTong(int a, int b) {
  return a + b;
}

// ================= BÀI 8 =================
int tinhTongArrow(int a, int b) => a + b;

// ================= BÀI 9 =================
int tinhTongList(List<int> list) {
  int tong = 0;

  for (int so in list) {
    tong += so;
  }

  return tong;
}

// ================= BÀI 10 =================
class SinhVien {
  String name;
  int age;
  double gpa;

  SinhVien(this.name, this.age, this.gpa);

  String hienThiThongTin() {
    return 'Tên sinh viên: $name\nTuổi: $age\nĐiểm trung bình: $gpa';
  }
}

class BaiThucHanhDartApp extends StatelessWidget {
  const BaiThucHanhDartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài thực hành Dart',
      debugShowCheckedModeBanner: false,
      home: const ManHinhBaiTap(),
    );
  }
}

class ManHinhBaiTap extends StatelessWidget {
  const ManHinhBaiTap({super.key});

  String bai1() {
    String tenSinhVien = 'Nguyễn Văn Huy';
    var tuoi = 20;
    final double diemTrungBinh = 8.5;
    const bool trangThaiTotNghiep = false;

    return '''
Tên sinh viên: $tenSinhVien
Tuổi: $tuoi
Điểm trung bình: $diemTrungBinh
Trạng thái tốt nghiệp: $trangThaiTotNghiep
''';
  }

  String bai2() {
    int a = 10;
    double b = 2.5;

    return '''
Biến int: $a
Biến double: $b

Cộng: ${a + b}
Trừ: ${a - b}
Nhân: ${a * b}
Chia: ${a / b}
''';
  }

  String bai3() {
    String hoTen = 'Trần Văn Nam';
    double diem = 6.5;

    bool dau = diem >= 5;

    return '''
Họ tên: $hoTen
Điểm: $diem
Biến bool: $dau
Kết quả: ${dau ? 'Sinh viên đậu' : 'Sinh viên rớt'}
''';
  }

  String bai4() {
    List<int> danhSachSo = [3, 5, 7, 9, 11];

    int tong = 0;
    for (int so in danhSachSo) {
      tong += so;
    }

    return '''
Danh sách: $danhSachSo
Phần tử đầu tiên: ${danhSachSo.first}
Phần tử cuối cùng: ${danhSachSo.last}
Tổng các phần tử: $tong
''';
  }

  String bai5() {
    Map<String, dynamic> sinhVien = {
      'name': 'Lê Thị Mai',
      'age': 21,
      'gpa': 8.2,
    };

    return '''
Toàn bộ Map: $sinhVien

Tên sinh viên: ${sinhVien['name']}
Tuổi: ${sinhVien['age']}
Điểm trung bình: ${sinhVien['gpa']}
''';
  }

  String bai6() {
    return '''
Hello Dart
''';
  }

  String bai7() {
    int a = 7;
    int b = 9;
    int ketQua = tinhTong(a, b);

    return '''
a = $a
b = $b
Tổng hai số là: $ketQua
''';
  }

  String bai8() {
    int a = 12;
    int b = 8;
    int ketQua = tinhTongArrow(a, b);

    return '''
a = $a
b = $b
Tổng bằng arrow function: $ketQua

Nhận xét:
- Hàm thường dùng khi có nhiều dòng lệnh.
- Arrow function dùng khi hàm ngắn, chỉ có một biểu thức.
''';
  }

  String bai9() {
    List<int> list = [1, 2, 3, 4, 5];
    int tong = tinhTongList(list);

    return '''
Danh sách: $list
Tổng các phần tử trong danh sách: $tong
''';
  }

  String bai10() {
    SinhVien sv1 = SinhVien('Phạm Văn An', 20, 7.8);
    SinhVien sv2 = SinhVien('Hoàng Minh Anh', 22, 8.9);

    return '''
Sinh viên 1:
${sv1.hienThiThongTin()}

Sinh viên 2:
${sv2.hienThiThongTin()}
''';
  }

  Widget khungBai(String tieuDe, String noiDung) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            offset: Offset(0, 2),
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tieuDe,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            noiDung,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f5f7),
      appBar: AppBar(
        title: const Text('Bài thực hành 1 - Dart cơ bản'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            khungBai('Bài 1: Khai báo và sử dụng biến', bai1()),
            khungBai('Bài 2: Thực hiện phép toán với số', bai2()),
            khungBai('Bài 3: Kiểm tra điều kiện với bool', bai3()),
            khungBai('Bài 4: Làm việc với List', bai4()),
            khungBai('Bài 5: Làm việc với Map', bai5()),
            khungBai('Bài 6: Viết hàm không có tham số', bai6()),
            khungBai('Bài 7: Hàm có tham số và trả về', bai7()),
            khungBai('Bài 8: Arrow function', bai8()),
            khungBai('Bài 9: Hàm xử lý danh sách', bai9()),
            khungBai('Bài 10: Xây dựng lớp SinhVien', bai10()),
          ],
        ),
      ),
    );
  }
}
