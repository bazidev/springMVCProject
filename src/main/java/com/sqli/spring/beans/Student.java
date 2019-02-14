package com.sqli.spring.beans;

public class Student {

    private int id;
    private String cne;
    private String name;

    private String dateofbirth;
    private String email;
    private String phone;


    public Student() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Student(int id, String cne, String name, String dateofbirth, String email, String phone) {
        this.id = id;
        this.cne = cne;
        this.name = name;
        this.dateofbirth = dateofbirth;
        this.email = email;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getCne() {
        return cne;
    }

    public void setCne(String cne) {
        this.cne = cne;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
