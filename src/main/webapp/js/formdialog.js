const showDialogLink = document.getElementById('showDialogLink');
const dialogOverlay = document.getElementById('dialogOverlay');
const closeBtn = document.getElementById('closeBtn');

  // Ẩn form dialog ban đầu
  dialogOverlay.style.display = 'none';



  closeBtn.addEventListener('click', function() {
    dialogOverlay.style.display = 'none';
  });

// Kiểm tra vi phạm
const hutrang = document.getElementById('hutrang');
const trehang = document.getElementById('trehang');
// Checkbox
const enableInputCheckbox = document.getElementById('enableInput');
const enableInputCheckbox2 = document.getElementById('enableInput2');

enableInputCheckbox.addEventListener('change', function() {
    // Nếu checkbox được chọn, vô hiệu hóa các input
    if (this.checked) {
      hutrang.disabled = false;
    } else {
      // Ngược lại, vô hiệu hóa các input
      hutrang.disabled = true;
      hutrang.value = "";
    }
  });
enableInputCheckbox2.addEventListener('change', function() {
    // Nếu checkbox được chọn, vô hiệu hóa các input
    if (this.checked) {
      trehang.disabled = false;
    } else {
      // Ngược lại, vô hiệu hóa các input
      trehang.disabled = true;
      trehang.value = "";
    }
  });
  
//Validate dữ liệu
 hutrang.addEventListener('input', function() {
    // Kiểm tra giá trị nhập vào input email
    const enteredValue = parseFloat(this.value);

    // Nếu giá trị nhập vào là số âm, đặt giá trị của input email về trống
    if (enteredValue < 1) {
      this.value = ''; // Xóa giá trị số âm
      alert('Vui lòng nhập số không âm.'); // Thông báo lỗi
    }
  });
trehang.addEventListener('input', function() {
    // Kiểm tra giá trị nhập vào input email
    const enteredValue = parseFloat(this.value);

    // Nếu giá trị nhập vào là số âm, đặt giá trị của input email về trống
    if (enteredValue < 0) {
      this.value = ''; // Xóa giá trị số âm
      alert('Vui lòng nhập số không âm.'); // Thông báo lỗi
    }
  });
  
  // lấy dữ liệu truyền.
  
  showDialogLink.addEventListener('click', function(e) {
    e.preventDefault();
    dialogOverlay.style.display = 'block';

    // Lấy thông tin sách từ hàng đã được chọn trong danh sách sách và cập nhật vào dialog
    const selectedRow = this.closest("tr");
    const bookTitle = selectedRow.querySelector("td:nth-child(3)").textContent;
    const bookImageSrc = selectedRow.querySelector("td:nth-child(2) img").src;

    // Hiển thị thông tin sách trong dialog
    document.querySelector('.dialog-image').src = bookImageSrc;
    document.querySelector('.book-title').textContent = bookTitle;

    // Các bước cập nhật thông tin sách khác tại đây nếu cần
  });
