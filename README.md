# Trạm PAS (Projection Assembly System) · HFS VINA

> **Đơn vị phụ trách:** HFS VINA – Innovation Team  
> **Số bản vẽ:** `HFS-PAS-2026-01` (Rev A · Concept)  
> **Kích thước tiêu chuẩn:** 1800 × 900 × 2200 mm  

---

## 1. Giới thiệu hệ thống
Hệ thống **PAS (Projection Assembly System)** là giải pháp trạm lắp ráp thông minh thế hệ mới dành cho dây chuyền sản xuất của **HFS VINA**, kết hợp:
1. **Chỉ dẫn bằng máy chiếu (Workguide / Projection SOP):** Rọi trực tiếp ánh sáng hướng dẫn vào từng khay linh kiện, vẽ viền phôi và thứ tự thao tác trên mặt bàn.
2. **Camera AI giám sát thao tác tay (Hand Tracking / Poka-Yoke):** Theo dõi bàn tay công nhân ở tốc độ 30 khung hình/giây; tự động chuyển bước khi lấy đúng linh kiện, lập tức khóa bước và cảnh báo còi/đèn đỏ khi lấy sai khay.
3. **Súng siết vít kiểm soát lực (Torque Control):** Đo lường và ngắt lực tự động theo chuẩn quy định (ví dụ: `0.50 N·m ±10%`), đếm đủ số vít mới cho phép hoàn thành công đoạn.
4. **Kiểm tra ngoại quan Poka-Yoke bằng AI:** Camera độ phân giải cao kết hợp đèn chiếu dome/ring so sánh ảnh sản phẩm với mẫu chuẩn trước khi xuất xưởng.
5. **Truy xuất nguồn gốc thời gian thực (Traceability):** Gửi toàn bộ dữ liệu (Serial Number, thời gian từng bước, biểu đồ lực siết, hình ảnh AI kiểm tra) về hệ thống **MES / SPC**.

---

## 2. Hướng dẫn sử dụng & Trình chiếu

### Cách 1: Chạy trực tiếp một chạm (Khuyến nghị)
* Nhấp đúp vào file [`Run_Simulation.bat`](Run_Simulation.bat).
* Trình duyệt sẽ tự động mở trang mô phỏng 3D tại địa chỉ: **[http://localhost:8080](http://localhost:8080)**.

### Cách 2: Chạy trực tiếp từ file HTML
* Mở trực tiếp file [`index.html`](index.html) bằng bất kỳ trình duyệt nào (Google Chrome, Microsoft Edge, Firefox, Safari).

---

## 3. Cấu trúc thư mục

```text
PAS_Simulation/
├── index.html            # File giao diện & mô phỏng 3D hoàn chỉnh
├── Run_Simulation.bat    # File khởi chạy nhanh 1 chạm trên Windows
├── libs/                 # Thư viện 3D chạy Offline không cần Internet
│   ├── three.min.js      # Three.js 3D Engine (v0.147.0)
│   └── OrbitControls.js  # Bộ điều khiển xoay/zoom góc nhìn 3D
└── README.md             # Tài liệu thuyết minh hệ thống
```

---

## 4. Hướng dẫn tùy biến thông số cho Model sản phẩm mới

Toàn bộ logic vận hành được cấu hình trong phần `/* ---------------- data ---------------- */` và `L10N` bên trong file `index.html`:
* **Quy trình các bước (STEPS):** Tùy chỉnh danh sách các bước thao tác, thời gian tiêu chuẩn và vai trò của từng thiết bị trong mảng `steps`.
* **Thông số lực siết (TORQUE):** Chỉnh sửa mảng `const TORQUE = [0.52, 0.51, 0.53, 0.52];` theo dải lực thực tế của sản phẩm.
* **Số lượng khay linh kiện:** Cấu hình 3 tầng khay trong mảng `TIERS` (Tầng A, B, C tương ứng 18 khay `A1` đến `C6`).

