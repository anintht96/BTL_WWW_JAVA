<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<div class="row mt-4">
		<div class="col-sm" align="center">
			<h1>Danh Sách Đơn Hàng</h1>
		</div>
	</div>

		<table class="table table-dark table-striped">
			<tr>
				<th>ID</th>
				<th>Địa Chỉ</th>
				<th>Thời Gian</th>
				<th>Tổng Tiền</th>
				<th>Tên Khách Hàng</th>
				<th>Kiểu Thanh Toán</th>
				<th>Chi Tiết </th>
			</tr>
			<c:forEach items="${ds }" var="item">
				<form action="${pageContext.request.contextPath }/admin-chiTietDH" method="Post">
					<tr>
						<td>
							${item.idDonHang }
							<input type="hidden" value="${item.idDonHang }" name="idDonHang">
						</td>
						<td>${item.diaChiGiao }</td>
						<td>${item.thoiGian }</td>
						<td>${item.tongTien }</td>
						<td>${item.khachHang.nameKhachHang }</td>
						<td>${item.thanhToan.hinhThucTT }</td>
						<td>
							<button type="submit" name="action" value="detail" class="btn btn-primary">Chi tiết</button>
						</td>
					</tr>
				</form>
			</c:forEach>
		</table>
	

	<c:if test="${not empty dsDH}">
		<div class="row mt-4">
		<div class="col-sm" align="center">
			<h1>Chi Tiết Đơn Hàng</h1>
		</div>
		
		<table class="table table-dark table-striped col-11 mx-auto">
			<tr>
				<th>ID Đơn Hàng</th>
				<th>Tên Sản Phẩm</th>
				<th>Đơn Giá</th>
				<th>Số Lượng</th>
				<th>Thành Tiền</th>
			</tr>
			<c:forEach items="${dsDH }" var="item">
				<tr>
					<td>${item.donHang.idDonHang }</td>
					<td>${item.sanPham.tenSanPham }</td>
					<td>${item.donGia }</td>
					<td>${item.soLuong }</td>
					<td>${item.thanhTien }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	</c:if>

</body>
</html>