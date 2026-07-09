using UnityEngine;
using NaughtyAttributes;

namespace TamQuocSat.Gameplay.Cards
{
    public enum CardSuit
    {
        Club,       // Nhép 
        Spade,      // Bích 
        Heart,      // Cơ 
        Diamond     // Rô 
    }

    public enum CardCategory
    {
        Basic,      // Cơ bản (Đấm, Né, Bánh Mì, Phở)
        Weapon,     // Vũ khí (Dép Lào, Roi Mây, Điếu Cày, Nỏ Thần An Dương Vương...)
        Armor,      // Áo giáp vải
        Mount,      // Xa kỵ (Xe Wave, Vision, Ngựa Sắt Thánh Gióng...)
        Treasure,   // Bảo vật (Trống Đồng Đông Sơn, Tượng Thần...)
        Scroll      // Cẩm nang (Lễ hội, Địa danh văn hóa Việt Nam...)
    }

    [CreateAssetMenu(fileName = "PLC_MaSo_TenBai", menuName = "TamQuocSat/Playing Card SO", order = 2)]
    public class PlayingCardSO : ScriptableObject
    {
        [BoxGroup("Thông tin lá bài")]
        [InfoBox("Mã bài khớp với cột card_id trong Database (Ví dụ: PLC001)")]
        public string cardId = "PLC001";

        [BoxGroup("Thông tin lá bài")]
        public string cardName = "Cú Đấm";

        [BoxGroup("Thông tin lá bài")]
        public CardCategory category = CardCategory.Basic;

        [BoxGroup("Chất & Điểm số")]
        public CardSuit suit = CardSuit.Spade;

        [BoxGroup("Chất & Điểm số")]
        [Dropdown("GetRankList")]
        public string rankPoint = "A";

        [BoxGroup("Chỉ số chiến đấu")]
        [MinValue(0)]
        public int attackRange = 1;

        [BoxGroup("Hình ảnh")]
        [ShowAssetPreview(128, 128)]
        public Sprite cardIcon;

        [BoxGroup("Hình ảnh")]
        [ShowAssetPreview(256, 350)]
        public Sprite cardArtwork;

        [BoxGroup("Mô tả hiệu ứng")]
        [ResizableTextArea]
        public string effectDescription = "Tấn công 1 mục tiêu trong tầm đánh, gây 1 sát thương nếu đối phương không dùng lá NÉ.";

        private string[] GetRankList()
        {
            return new string[] { "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K" };
        }
    }
}