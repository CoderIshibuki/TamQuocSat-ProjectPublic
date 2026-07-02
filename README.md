# 🐉 TAM QUỐC SÁT - MULTIPLAYER CARD GAME PROJECT

Dự án phát triển game bài chiến thuật **Tam Quốc Sát (Sanguosha)** sử dụng engine **Unity (C#)** với kiến trúc mạng **Server-Authoritative Multiplayer**.

---

## 📌 Bảng theo dõi tiến độ (Kanban Board)
Xem chi tiết các chặng phát triển, tiến độ và danh sách công việc cần làm tại:
👉 **[Bảng Kanban (Kanban Board)](file:///d:/TamQuocSat-Project/Kanban/KANBAN.md)**
Hoặc thư mục `Kanban/` chứa các tài liệu tiến độ tương ứng (`da-lam`, `dang-lam`, `tuong-lai`).

---

## 🛠️ Công nghệ & Kiến trúc dự kiến
- **Engine / Ngôn ngữ:** Unity / C#
- **Multiplayer & Networking:** Photon Quantum / Fish-Net (Server-Authoritative, Deterministic State Synchronization)
- **Cơ sở dữ liệu (Database - Chặng 1):** PostgreSQL + Dapper/EF Core, Redis Cache, Supabase/PlayFab BaaS
- **Hệ thống dữ liệu game:** ScriptableObjects + Odin Inspector & Serializer, MessagePack
- **Diễn hoạt & Giao diện (Animation / UI):** GSAP & Motion Animation Libraries
