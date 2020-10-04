package btl.spring.mvc.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class TaiKhoanInfo {

	@NotNull(message = "Không được bỏ trống.")
	@Size(min = 5,max = 25,message = "Từ 5 đến 25 ký tự.")
	private String username;
	
	private String password;
	private boolean trangThai;
	private String loaiTaiKhoan;

	public TaiKhoanInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TaiKhoanInfo(String username, String password, boolean trangThai, String loaiTaiKhoan) {
		super();
		this.username = username;
		this.password = password;
		this.trangThai = trangThai;
		this.loaiTaiKhoan = loaiTaiKhoan;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isTrangThai() {
		return trangThai;
	}

	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}

	public String getLoaiTaiKhoan() {
		return loaiTaiKhoan;
	}

	public void setLoaiTaiKhoan(String loaiTaiKhoan) {
		this.loaiTaiKhoan = loaiTaiKhoan;
	}

	@Override
	public String toString() {
		return "TaiKhoanInfo [username=" + username + ", password=" + password + ", trangThai=" + trangThai
				+ ", loaiTaiKhoan=" + loaiTaiKhoan + "]";
	}

}
