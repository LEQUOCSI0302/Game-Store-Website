

const gameDatabase = [
    // --- DANH MỤC: Nổi bật & Bán chạy ---
    {
        imgSrc: "img/list/game6.jpg", tenGame: "Cyberpunk 2077", icon: "img/icon/windows.png", theLoai: "Nhập vai, Hành động",
        category: "noibat", // Thêm thuộc tính category
        title: "Cyberpunk 2077", description: "Là một game nhập vai hành động thế giới mở có cốt truyện lấy bối cảnh ở Night City.",
        genreTags: ["Nhập vai", "Hành động", "Thế giới mở"],
        previewImages: ["img/list/game6.jpg", "img/list/game6.jpg", "img/list/game6.jpg"]
    },
    {
        imgSrc: "img/list/game7.jpg", tenGame: "Elden Ring", icon: "img/icon/windows.png", theLoai: "Hành động, Soul-like",
        category: "banchay", // Thêm thuộc tính category
        title: "Elden Ring", description: "Một game nhập vai hành động giả tưởng được phát triển bởi FromSoftware.",
        genreTags: ["Hành động", "Soul-like", "Khó"],
        previewImages: ["img/list/game7_preview1.jpg", "img/list/game7_preview2.jpg", "img/list/game7_preview3.jpg"]
    },
    {
        imgSrc: "img/list/game5.jpg", tenGame: "The Witcher 3", icon: "img/icon/windows.png", theLoai: "Thế giới mở, Nhập vai",
        category: "noibat",
        title: "The Witcher 3: Wild Hunt", description: "Vào vai Geralt xứ Rivia, một thợ săn quái vật chuyên nghiệp.",
        genreTags: ["Thế giới mở", "Nhập vai", "Phiêu lưu"],
        previewImages: ["img/list/game5_preview1.jpg", "img/list/game5_preview2.jpg", "img/list/game5_preview3.jpg"]
    },

    // --- MỤC MỚI: Ưu đãi ---
    {
        imgSrc: "img/list/game_offer1.jpg", tenGame: "Stardew Valley", icon: "img/icon/windows.png", theLoai: "Giả lập, Indie",
        category: "uudai",
        title: "Ưu đãi Stardew Valley", description: "Một trò chơi mô phỏng nông trại với đồ họa pixel art quyến rũ.",
        genreTags: ["Giả lập", "Indie", "Thư giãn"],
        previewImages: ["img/list/offer1_preview1.jpg", "img/list/offer1_preview2.jpg", "img/list/offer1_preview3.jpg"]
    },
    {
        imgSrc: "img/list/game_offer1.jpg", tenGame: "Stardew Valley", icon: "img/icon/windows.png", theLoai: "Giả lập, Indie",
        category: "uudai",
        title: "Ưu đãi Stardew Valley", description: "Một trò chơi mô phỏng nông trại với đồ họa pixel art quyến rũ.",
        genreTags: ["Giả lập", "Indie", "Thư giãn"],
        previewImages: ["img/list/offer1_preview1.jpg", "img/list/offer1_preview2.jpg", "img/list/offer1_preview3.jpg"]
    },
    // --- MỤC MỚI: Phổ biến ---
    {
        imgSrc: "img/list/game_popular1.jpg", tenGame: "Among Us", icon: "img/icon/windows.png", theLoai: "Social, Party",
        category: "phobien",
        title: "Phổ biến: Among Us", description: "Tìm ra kẻ giả mạo trong phi hành đoàn của bạn trong trò chơi suy luận xã hội này.",
        genreTags: ["Social", "Party", "Vui nhộn"],
        previewImages: ["img/list/popular1_preview1.jpg", "img/list/popular1_preview2.jpg", "img/list/popular1_preview3.jpg"]
    },
    {
        imgSrc: "img/list/game_popular1.jpg", tenGame: "Among Us", icon: "img/icon/windows.png", theLoai: "Social, Party",
        category: "phobien",
        title: "Phổ biến: Among Us", description: "Tìm ra kẻ giả mạo trong phi hành đoàn của bạn trong trò chơi suy luận xã hội này.",
        genreTags: ["Social", "Party", "Vui nhộn"],
        previewImages: ["img/list/popular1_preview1.jpg", "img/list/popular1_preview2.jpg", "img/list/popular1_preview3.jpg"]
    },

    // --- Thêm một game nữa cho Bán chạy ---
    {
        imgSrc: "img/list/game_bestseller2.jpg", tenGame: "Baldur's Gate 3", icon: "img/icon/windows.png", theLoai: "Nhập vai, Chiến thuật",
        category: "banchay",
        title: "Bán chạy: Baldur's Gate 3", description: "Một game RPG thế hệ mới lấy bối cảnh trong thế giới Dungeons and Dragons.",
        genreTags: ["CRPG", "Chiến thuật", "Theo lượt"],
        previewImages: ["img/list/bestseller2_preview1.jpg", "img/list/bestseller2_preview2.jpg", "img/list/bestseller2_preview3.jpg"]
    }
];