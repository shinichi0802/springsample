package com.virtium.sample.controller;



import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Random;
import java.util.ArrayList;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.virtium.sample.model.Product;

/**
 * 
 * @author TuanAnh
 *
 */

@Controller
public class SpringAjaxQuery {
	
	@RequestMapping(value = "/yui3")
	public String dataTableWithYUI3(Model model){
		return "datatable_yui3";
	}
	
	@RequestMapping(value = "/ajaxtest",method = RequestMethod.GET)
	public @ResponseBody String getTime(){
		Random rand = new Random();
		float r = rand.nextFloat() * 100;
		return "<br>Next Random # is <b>" + r + "</b>. Generated on <b>" + new Date().toString() + "</b>";		
	}
	
	@RequestMapping(value = "/jsoncall",method = RequestMethod.GET)
	public @ResponseBody String jsoncall() throws IOException {
		ArrayList<Product> lsPro = new ArrayList<Product>();
		lsPro.add(new Product("1", "gadget", "$6.99"));
		lsPro.add(new Product("2", "sprocket", "$3.75"));
		lsPro.add(new Product("3", "widget", "$4.25"));
		
		ObjectMapper mapper = new ObjectMapper();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		
		mapper.writeValue(out, lsPro);
		byte[] data = out.toByteArray();
		
		String result = new String(data); 
		return result;		
	}
	
}
