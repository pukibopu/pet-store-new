package com.example.entity;

import com.example.dao.PetDao;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
    private List<CartItem> cartItemList;

    public ShoppingCart() {
        this.cartItemList = new ArrayList<CartItem>();
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }



    public double getTotalMoney(){
        double money = 0;
        List<CartItem> list=this.getCartItemList();
        for(CartItem item: list){
            money+=item.getQuantity()*1.0* item.getPrice();
        }
        return  money;
    }


    public void add(int id,int quantity){
        PetDao petDao = new PetDao();
        Pet pet = petDao.getById(id);
        CartItem cartItem = new CartItem(id,pet.getTitle(),pet.getPrice(),quantity,pet.getPhoto());

        boolean foundFlag = false;
        for (CartItem item:
                this.cartItemList) {
            if (item.getId() == id){
                item.setQuantity(item.getQuantity() + quantity);
                foundFlag = true;
                break;
            }
        }
        if(foundFlag == false){
            this.cartItemList.add(cartItem);
        }
    }

    public void remove(int id){

    }
}
