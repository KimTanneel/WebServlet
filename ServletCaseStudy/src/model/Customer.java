package model;

public class Customer {
    private String id;
    private String type_id;
    private String name;
    private String birthday;
    private String gender;
    private String id_card;
    private String phone;
    private String email;
    private String address;

    public Customer() {
    }

    public Customer(String id, String type_id, String name, String birthday, String gender, String id_card, String phone, String email, String address) {
        this.id = id;
        this.type_id = type_id;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.id_card = id_card;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "{Student} : "+
                " id: "+this.id+
                " type:id: "+this.type_id+
                " name: "+this.name+
                " birthday: "+this.birthday+
                " gender "+this.gender+
                " idcard "+this.id_card+
                " phone "+this.phone+
                " email "+this.email+
                " address "+this.address;
    }
}
