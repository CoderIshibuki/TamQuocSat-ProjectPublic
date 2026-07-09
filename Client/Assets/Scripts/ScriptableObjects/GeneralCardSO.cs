using UnityEngine;
using System.Collections.Generic;
using NaughtyAttributes;

namespace TamQuocSat.Gameplay.Cards
{
    public enum FactionType
    {
        Long,      
        Lan,        
        Quy,        
        Phung,      
        NguyLinh    
    }

    [CreateAssetMenu(fileName = "CHR001_OngAnhCoKhiHUST", menuName = "TamQuocSat/Character Card SO")]
    public class GeneralCardSO : ScriptableObject
    {
        [BoxGroup("Thông tin nhân vật")]
        [InfoBox("Mã nhân vật khớp với Database (Ví dụ: CHR001)")]
        public string characterId = "CHR001";

        [BoxGroup("Thông tin nhân vật")]
        public string characterName = "Ông Anh Cơ Khí HUST";

        [BoxGroup("Thông tin nhân vật")]
        public FactionType faction = FactionType.Long;

        [BoxGroup("Thông tin nhân vật")]
        [Range(3, 5)]
        public int maxHP = 4;

        [BoxGroup("Thông tin nhân vật")]
        [Dropdown("GetGenderList")]
        public string gender = "Nam";

        [BoxGroup("Hình ảnh Thư Viện")]
        [ShowAssetPreview(128, 128)]
        public Sprite avatarSprite;

        [BoxGroup("Hình ảnh Thư Viện")]
        [ShowAssetPreview(256, 350)]
        public Sprite fullArtSprite;

        [BoxGroup("Tiểu sử & Kỹ năng")]
        [ResizableTextArea]
        public string biography = "Sinh viên cơ khí Bách Khoa truyền kỳ, tay cầm cờ lê, đam mê chế tạo...";

        [BoxGroup("Tiểu sử & Kỹ năng")]
        [ResizableTextArea]
        public string skillDescriptions = "Chế Tạo: Trong giai đoạn chuẩn bị, có thể bỏ 1 lá bài để đổi lấy 1 trang bị từ chồng bài bỏ...";

        private List<string> GetGenderList() { return new List<string> { "Nam", "Nữ" }; }
    }
}