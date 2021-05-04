package com.mega.mvc40;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComputerController {

   @RequestMapping("computer")
   public void computer(ComputerVO vo, Model model) {
      System.out.println("컨트롤러에서 받은 값 " + vo);
      vo.setSum(vo.getPrice() + vo.getPrice2());
      model.addAttribute("vo", vo);
   }
}

