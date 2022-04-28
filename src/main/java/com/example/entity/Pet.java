package com.example.entity;

public class Pet {
    private int id;
    private int cId;
    private String title;
    private String tag;
    private String photo;
    private  double price;
    private int stock;
    private String description;

    public void setId(int id) {
        this.id = id;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public int getcId() {
        return cId;
    }

    public String getTitle() {
        return title;
    }

    public String getTag() {
        return tag;
    }

    public String getPhoto() {
        return photo;
    }

    public double getPrice() {
        return price;
    }

    public int getStock() {
        return stock;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "id=" + id +
                ", cId=" + cId +
                ", title='" + title + '\'' +
                ", tag='" + tag + '\'' +
                ", photo='" + photo + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", description='" + description + '\'' +
                '}';
    }
}
