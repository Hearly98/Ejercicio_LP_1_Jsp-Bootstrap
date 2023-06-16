package model;

public class Subject {

	private int idsubject;
	private String code;
	private String name;
	private String level;
	private String teacher;
	
	
	//constructor???  ---> constructor vacio o por default
	
	//metodo toString sirve para mostrar lo que estoy ingresando
	@Override
	public String toString() {
		return "Subject [idsubject=" + idsubject + ", code=" + code + ", name=" + name + ", level=" + level
				+ ", teacher=" + teacher + "]";
	}
	public int getIdsubject() {
		return idsubject;
	}
	public void setIdsubject(int idsubject) {
		this.idsubject = idsubject;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
	
}
