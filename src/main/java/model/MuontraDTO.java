package model;

import java.sql.Date;

public class MuontraDTO {
	
	private int id_muon;
    private int id_dg;
    private int id_nv;
    private Date ngaymuon;
    private int tinhtrangmuon;
    private String ten_nv;
    private String email;
    
	public int getId_muon() {
		return id_muon;
	}
	public void setId_muon(int id_muon) {
		this.id_muon = id_muon;
	}
	public int getId_dg() {
		return id_dg;
	}
	public void setId_dg(int id_dg) {
		this.id_dg = id_dg;
	}
	public int getId_nv() {
		return id_nv;
	}
	public void setId_nv(int id_nv) {
		this.id_nv = id_nv;
	}
	public Date getNgaymuon() {
		return ngaymuon;
	}
	public void setNgaymuon(Date ngaymuon) {
		this.ngaymuon = ngaymuon;
	}
	public int getTinhtrangmuon() {
		return tinhtrangmuon;
	}
	public void setTinhtrangmuon(int tinhtrangmuon) {
		this.tinhtrangmuon = tinhtrangmuon;
	}
	public String getTen_nv() {
		return ten_nv;
	}
	public void setTen_nv(String ten_nv) {
		this.ten_nv = ten_nv;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MuontraDTO(int id_muon, int id_dg, int id_nv, Date ngaymuon, int tinhtrangmuon, String ten_nv,
			String email) {
		super();
		this.id_muon = id_muon;
		this.id_dg = id_dg;
		this.id_nv = id_nv;
		this.ngaymuon = ngaymuon;
		this.tinhtrangmuon = tinhtrangmuon;
		this.ten_nv = ten_nv;
		this.email = email;
	}
	public MuontraDTO() {
		super();
	}
    
    
  

}
