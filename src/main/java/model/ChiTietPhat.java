package model;

public class ChiTietPhat {
	private Integer id_ctphat;
	private Integer id_banggia;
	private Integer id_vipham;
	
	public Integer getId_ctphat() {
		return id_ctphat;
	}
	public void setId_ctphat(Integer id_ctphat) {
		this.id_ctphat = id_ctphat;
	}
	public Integer getId_banggia() {
		return id_banggia;
	}
	public void setId_banggia(Integer id_banggia) {
		this.id_banggia = id_banggia;
	}
	public Integer getId_vipham() {
		return id_vipham;
	}
	public void setId_vipham(Integer id_vipham) {
		this.id_vipham = id_vipham;
	}
	
	public ChiTietPhat(Integer id_ctphat, Integer id_banggia, Integer id_vipham) {
		super();
		this.id_ctphat = id_ctphat;
		this.id_banggia = id_banggia;
		this.id_vipham = id_vipham;
	}
	
	public ChiTietPhat() {
		super();
	}
}
