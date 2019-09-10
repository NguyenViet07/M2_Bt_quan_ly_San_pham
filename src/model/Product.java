package model;

public class Product {
    private int id ;
    private String name;
    private  int price;
    private  String photo;
    private String producer;

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public Product(int id, String name, int price, String photo, String producer) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.photo = photo;
        this.producer = producer;
    }
}
