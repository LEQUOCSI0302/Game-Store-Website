document.addEventListener('DOMContentLoaded', () => {
    // === Lấy các phần tử DOM ===
    const listContainer = document.querySelector('.list');
    const listABC = document.querySelector('.list_ABC');
    const tabLinks = document.querySelectorAll('.tab-link');
    const gameTitleElement = document.getElementById('game-title');
    const gameDescriptionElement = document.getElementById('game-description');
    const gameTagsContainer = document.getElementById('game-tags');
    const gamePreviewImagesContainer = document.getElementById('game-preview-images');
    
    let activeItem = null;
    const activeBackground = window.getComputedStyle(listABC).background;

    // === Hàm cập nhật cột phải (giữ nguyên) ===
    function updateRightPanel(gameData) {
        gameTitleElement.textContent = gameData.title;
        gameDescriptionElement.textContent = gameData.description;

        gameTagsContainer.innerHTML = '';
        gameData.genreTags.forEach(tag => {
            const li = document.createElement('li');
            li.textContent = tag;
            gameTagsContainer.appendChild(li);
        });

        gamePreviewImagesContainer.innerHTML = '';
        gameData.previewImages.forEach(imgSrc => {
            const img = document.createElement('img');
            img.src = imgSrc;
            img.alt = `${gameData.tenGame} preview`;
            gamePreviewImagesContainer.appendChild(img);
        });
    }

    // === HÀM CHÍNH: Render danh sách game theo category ===
    function renderList(category) {
        // --- THAY ĐỔI QUAN TRỌNG NHẤT LÀ Ở ĐÂY ---
        // Dùng .filter() để lọc ra các game có category trùng khớp
        const gamesToRender = gameDatabase.filter(game => game.category === category);
        const itemsToDisplay = gamesToRender.slice(0, 5); // Vẫn giới hạn 5 mục

        // Xóa danh sách cũ và tạo HTML cho danh sách mới
        listContainer.innerHTML = '';
        let generatedHTML = '';
        itemsToDisplay.forEach((game, index) => {
            generatedHTML += `
                <div class="list_noidung" data-index="${index}">
                    <img src="${game.imgSrc}" alt="${game.tenGame}" />
                    <div class="list_">
                        <h1>${game.tenGame}</h1>
                        <img src="${game.icon}" height="10px" width="10px" alt="icon" />
                        <h2>${game.theLoai}</h2>
                    </div>
                </div>
            `;
        });
        generatedHTML += `
            <div class="list_noidung">
                <a id="moiphathanh" href="#">Mới phát Hành</a>
            </div>
        `;
        listContainer.innerHTML = generatedHTML;

        // Gắn lại sự kiện cho các mục game vừa được tạo
        const gameItems = listContainer.querySelectorAll('.list_noidung[data-index]');
        activeItem = null;

        gameItems.forEach(item => {
            item.addEventListener('mouseenter', () => {
                const index = item.getAttribute('data-index');
                const selectedGameData = itemsToDisplay[index]; // Lấy dữ liệu từ danh sách đã lọc
                updateRightPanel(selectedGameData);
                if (activeItem) activeItem.style.background = '';
                item.style.background = activeBackground;
                activeItem = item;
            });
        });

        // Cập nhật cột phải và tô màu mục đầu tiên
        if (itemsToDisplay.length > 0) {
            updateRightPanel(itemsToDisplay[0]);
            activeItem = gameItems[0];
            activeItem.style.background = activeBackground;
        } else {
            // Xử lý khi danh mục trống
            gameTitleElement.textContent = "Không có sản phẩm";
            gameDescriptionElement.textContent = "Vui lòng chọn danh mục khác.";
            gameTagsContainer.innerHTML = '';
            gamePreviewImagesContainer.innerHTML = '';
        }
    }

    // === Xử lý sự kiện CLICK VÀO TAB (giữ nguyên) ===
    tabLinks.forEach(tab => {
        tab.addEventListener('click', (event) => {
            event.preventDefault();
            document.querySelector('.tab-link.active-tab').classList.remove('active-tab');
            tab.classList.add('active-tab');
            const category = tab.dataset.category;
            renderList(category);
        });
    });

    // === Tải danh sách mặc định khi vào trang ===
    renderList('noibat');
});