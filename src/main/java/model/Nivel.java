package model;

public class Nivel {
	private String level;
	private String des_level;
	
	@Override
	public String toString() {
		return "Nivel [level=" + level + ", des_level=" + des_level + "]";
	}	
	
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getDes_level() {
		return des_level;
	}
	public void setDes_level(String des_level) {
		this.des_level = des_level;
	}

}
