package model;

public class DocGia {
	private int id_dg;
	private Integer id_sv;
	private String email;
	private String password;
	
	public int getId_dg() {
		return id_dg;
	}
	public void setId_dg(int id_dg) {
		this.id_dg = id_dg;
	}
	public Integer getId_sv() {
		return id_sv;
	}
	public void setId_sv(Integer id_sv) {
		this.id_sv = id_sv;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public DocGia() {
		super();
	}
	
	public DocGia(int id_dg, Integer id_sv, String email, String password) {
		super();
		this.id_dg = id_dg;
		this.id_sv = id_sv;
		this.email = email;
		this.password = password;
	}
}
