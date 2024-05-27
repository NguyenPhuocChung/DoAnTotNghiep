/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
// Phần script JavaScript cho phân trang
var currentPage = 1;
var toursPerPage = 10; // Số tour mỗi trang
var tours = document.querySelectorAll('tbody tr');
var numPages = Math.ceil(tours.length / toursPerPage);
// Ẩn tất cả các tour
function hideTours() {
    tours.forEach(function (tour) {
        tour.style.display = 'none';
    });
}
function displayTours(page) {
    var startIndex = (page - 1) * toursPerPage;
    var endIndex = startIndex + toursPerPage;
    for (var i = startIndex; i < endIndex && i < tours.length; i++) {
        tours[i].style.display = 'table-row';
    }
// Hiển thị số trang
    var pagination = document.getElementById('pagination');
    pagination.innerHTML = '';
    for (var i = 1; i <= numPages; i++) {
        var pageNumber = document.createElement('span');
        pageNumber.textContent = i;
        if (i === page) {
            pageNumber.classList.add('active');
        }
        pageNumber.addEventListener('click', function () {
            hideTours();
            currentPage = parseInt(this.textContent);
            displayTours(currentPage);
        });
        pagination.appendChild(pageNumber);
    }
}

// Hiển thị trang đầu tiên khi trang được load
window.onload = function () {
    hideTours();
    displayTours(currentPage);
};

// Xử lý sự kiện khi bấm vào nút Previous
document.getElementById('prevPage').addEventListener('click', function () {
    if (currentPage > 1) {
        hideTours();
        currentPage--;
        displayTours(currentPage);
    }
});

// Xử lý sự kiện khi bấm vào nút Next
document.getElementById('nextPage').addEventListener('click', function () {
    if (currentPage < numPages) {
        hideTours();
        currentPage++;
        displayTours(currentPage);
    }
});


// Truncate long content strings
document.querySelectorAll('.content').forEach(function (content) {
    if (content.innerText.length > 30) {
        content.innerText = content.innerText.substring(0, 28) + '...';
    }
});


//document.querySelectorAll(".credit").forEach(function (element) {
//    if (element.textContent.trim().toLowerCase() === "credit") {
//        let row = element.closest("tr");
//        let refundCell = row.querySelector(".row-refund");
//        refundCell.innerHTML = '<button class="btn-refund border">Refund</button>';
//    }
//});

