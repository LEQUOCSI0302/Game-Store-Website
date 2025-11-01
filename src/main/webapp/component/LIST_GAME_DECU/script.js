document.addEventListener('DOMContentLoaded', () => {
    
    // 1. CHÈN DỮ LIỆU GAME VÀO HTML
    const gameListContainer = document.getElementById('game_list_container');
    
    // Tạo HTML bằng Array.map và join để tối ưu hiệu suất
    const htmlContent = GAME_DATA.map(game => `
        <div class="store_main_capsule" data-appid="${game.id}">
            <div class="capsule main_capsule">
                <img src="${game.image}" alt="${game.name} Image"> 
            </div>
            
            <div class="info_overlay">
                <video class="info_video" muted loop preload="auto">
                    <source src="${game.video}" type="video/mp4">
                    Trình duyệt của bạn không hỗ trợ video.
                </video>
                <div class="info_content">
                    <div class="app_name">${game.name}</div>
                    <div class="discount_final_price">${game.price}</div>
                    <div class="platforms">${game.platforms}</div>
                    <div class="details_button" onclick="window.open('${game.link}', '_blank')">Chi tiết</div>
                </div>
            </div>
        </div>
    `).join('');

    gameListContainer.innerHTML = htmlContent;

    // Dừng việc khởi tạo carousel nếu không có dữ liệu
    if (GAME_DATA.length === 0) return; 

    // -----------------------------------------------------------------
    
    // 2. LOGIC CAROUSEL
    
    // Lấy các phần tử DOM sau khi chèn HTML
    const container = document.getElementById('home_maincap_v7');
    const items = container.querySelector('.carousel_items');
    const capsules = container.querySelectorAll('.store_main_capsule'); 
    const wrapper = document.querySelector('.carousel_wrapper');
    const leftArrow = wrapper.querySelector('.arrow.left');
    const rightArrow = wrapper.querySelector('.arrow.right');

    let currentIndex = 0;
    const totalItems = GAME_DATA.length; 
    
    // SỬA LỖI: Xóa biến 'slides' và hàm 'updateCarousel' bị trùng và sai logic

    /**
     * Tính toán các biến carousel dựa trên kích thước màn hình (Responsive).
     * @returns {object} {itemWidth, maxIndex}
     */
    function calculateCarouselVariables() {
        // Cần đảm bảo có ít nhất một item để không bị lỗi
        if (capsules.length === 0) {
            return { itemWidth: 0, maxIndex: 0 };
        }
        const itemWidth = capsules[0].offsetWidth; 
        const visibleSlides = Math.floor(container.offsetWidth / itemWidth);
        // maxIndex là slide cuối cùng có thể cuộn tới
        const maxIndex = Math.max(0, totalItems - visibleSlides);

        return { itemWidth, maxIndex };
    }

    /**
     * Cập nhật vị trí cuộn của carousel.
     */
    function updateCarouselPosition() { // Đổi tên để tránh nhầm lẫn
        const { itemWidth, maxIndex } = calculateCarouselVariables();

        // Đảm bảo currentIndex không vượt quá giới hạn sau khi resize
        if (currentIndex > maxIndex) {
            currentIndex = maxIndex;
        }

        const offset = -currentIndex * itemWidth;
        items.style.transform = `translateX(${offset}px)`;

        // Điều chỉnh hiển thị của các mũi tên (làm mờ khi đạt giới hạn)
        const isMin = currentIndex === 0;
        const isMax = currentIndex === maxIndex;
        
        leftArrow.style.opacity = isMin ? 0.4 : 1;
        rightArrow.style.opacity = isMax ? 0.4 : 1;
        rightArrow.style.pointerEvents = isMax ? 'none' : 'auto';
        leftArrow.style.pointerEvents = isMin ? 'none' : 'auto';
    }

    /**
     * Xử lý cuộn carousel theo hướng (dừng ở hai đầu).
     * @param {string} direction - 'left' hoặc 'right'
     */
    const moveCarousel = (direction) => {
        const { maxIndex } = calculateCarouselVariables();
        
        if (direction === 'right') {
            // SỬA LỖI: Dừng lại ở cuối, không quay về đầu
            currentIndex = Math.min(currentIndex + 1, maxIndex);
        } else if (direction === 'left') {
            // SỬA LỖI: Dừng lại ở đầu
            currentIndex = Math.max(currentIndex - 1, 0);
        }

        updateCarouselPosition();
    };

    /**
     * Quay về slide ban đầu (currentIndex = 0).
     */
    const resetCarousel = () => {
        if (currentIndex !== 0) {
            currentIndex = 0;
            updateCarouselPosition();
        }
    };

    // Thiết lập sự kiện cuộn
    rightArrow.addEventListener('click', () => moveCarousel('right'));
    leftArrow.addEventListener('click', () => moveCarousel('left'));
    
    // Thiết lập sự kiện quay về slide 0 khi nhấp đúp (Double-click)
    container.addEventListener('dblclick', resetCarousel);
    
    // Xử lý sự kiện resize và Khởi tạo carousel
    window.addEventListener('resize', updateCarouselPosition);
    updateCarouselPosition(); // Gọi lần đầu để khởi tạo

    // -----------------------------------------------------------------

    // 3. LOGIC VIDEO TỰ ĐỘNG PHÁT KHI HOVER
    capsules.forEach(capsule => {
        const video = capsule.querySelector('.info_video');
        
        if (video) {
            capsule.addEventListener('mouseenter', () => {
                video.currentTime = 0; // Đảm bảo video bắt đầu từ đầu
                video.play().catch(e => {
                    // Bỏ qua lỗi tự động phát nếu trình duyệt chặn
                });
            });
            
            capsule.addEventListener('mouseleave', () => {
                video.pause();
            });
        }
    });
});