package com.example.entity;

public class CartItem {
    private int id;
    private String title;
    private Double price;
    private int quantity;
    private String photo;

    public CartItem(int id, String title, Double price, int quantity, String photo) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.quantity = quantity;
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", photo='" + photo + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
