package model;

import java.sql.Date;

public class MuonTra {
	private Integer id_muon;
	private int id_dg;
	private int id_nv;
	private Date ngaymuon;
	private int tinhtrangmuon;
	
	public Integer getId_muon() {
		return id_muon;
	}
	public void setId_muon(Integer id_muon) {
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
	
	public MuonTra(Integer id_muon, int id_dg, int id_nv, Date ngaymuon, int tinhtrangmuon) {
		super();
		this.id_muon = id_muon;
		this.id_dg = id_dg;
		this.id_nv = id_nv;
		this.ngaymuon = ngaymuon;
		this.tinhtrangmuon = tinhtrangmuon;
	}
	public MuonTra() {
		super();
	}
}
