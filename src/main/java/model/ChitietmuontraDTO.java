package model;

import java.sql.Date;

public class ChitietmuontraDTO {
	private Integer id_ctmuon;
	private int id_muon;
    private int id_tailieu;
    private Date ngaytra;
    private int tinhtrangtra;
    private String hinh;
    private String tentailieu;
    
	public Integer getId_ctmuon() {
		return id_ctmuon;
	}
	public void setId_ctmuon(Integer id_ctmuon) {
		this.id_ctmuon = id_ctmuon;
	}
	public int getId_muon() {
		return id_muon;
	}
	public void setId_muon(int id_muon) {
		this.id_muon = id_muon;
	}
	public int getId_tailieu() {
		return id_tailieu;
	}
	public void setId_tailieu(int id_tailieu) {
		this.id_tailieu = id_tailieu;
	}
	public Date getNgaytra() {
		return ngaytra;
	}
	public void setNgaytra(Date ngaytra) {
		this.ngaytra = ngaytra;
	}
	public int getTinhtrangtra() {
		return tinhtrangtra;
	}
	public void setTinhtrangtra(int tinhtrangtra) {
		this.tinhtrangtra = tinhtrangtra;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getTentailieu() {
		return tentailieu;
	}
	public void setTentailieu(String tentailieu) {
		this.tentailieu = tentailieu;
	}
	public ChitietmuontraDTO(Integer id_ctmuon, int id_muon, int id_tailieu, Date ngaytra, int tinhtrangtra,
			String hinh, String tentailieu) {
		super();
		this.id_ctmuon = id_ctmuon;
		this.id_muon = id_muon;
		this.id_tailieu = id_tailieu;
		this.ngaytra = ngaytra;
		this.tinhtrangtra = tinhtrangtra;
		this.hinh = hinh;
		this.tentailieu = tentailieu;
	}
	public ChitietmuontraDTO() {
		super();
	}
	
    
}
