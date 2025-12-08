package model.service;

import java.util.List;

import database.DiscountDAO;
import model.beans.Discounts;

public class DiscountsService {
	DiscountDAO discountDAO = new DiscountDAO();
	public List<Discounts> getActiveDeals(){
		return discountDAO.getActiveDeals();
	}
	public Discounts getDiscountsDetailsById(long gameId) {
		return discountDAO.getDiscountsDetailsById(gameId);
	}
}
