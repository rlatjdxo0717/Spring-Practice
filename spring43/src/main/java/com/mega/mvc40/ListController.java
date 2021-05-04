package com.mega.mvc40;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {
   //Plain Old Java Object: POJO파일
   //평범한 옛날부터 쓰던 자바 객체
   
   @RequestMapping("fruit")
   public void fruit(Model model) {
      ArrayList<String> fruit = new ArrayList<String>();
      fruit.add("사과");
      fruit.add("바나나");
      fruit.add("메론");
      fruit.add("딸기");
      fruit.add("참외");
      model.addAttribute("fruit", fruit);
   }
   
   @RequestMapping("tour")
   public void tour(Model model) {
      ArrayList<String> tour = new ArrayList<String>();
      tour.add("제주도");
      tour.add("미국 동부");
      tour.add("미국 서부");
      tour.add("홍콩");
      tour.add("평창");
      model.addAttribute("tour", tour);
   }
}
