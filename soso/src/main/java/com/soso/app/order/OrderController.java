package com.soso.app.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	
	//by혜원, 주문페이지 
	@RequestMapping("/orderInsert")
	public String orderInsert() {
		return "order/orderInsert";
	}
	
	//by혜원, 주문페이지 
	@RequestMapping("/orderInsert2")
	public String orderInsert2() {
		return "order/orderInsert2";
	}

}
