/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.httn.service;

import com.httn.pojo.Cart;
import com.httn.pojo.User;
import java.util.Map;

/**
 *
 * @author HP
 */
public interface WeddingService {
    boolean addWedding(Map<String, Cart> cart , User customer);
}
