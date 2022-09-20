package com.hivershop.controller;

import com.hivershop.model.member.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
public class MemberController {
	@RequestMapping(value="/login.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		return "member/login";
	}

	@RequestMapping(value="/join.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String join(MemberVO memberVO) {
		return "member/join";
	}

	@ResponseBody
	@PostMapping (value="/store.do")
	public void store(Model model, @RequestBody Map<String,String> map) {
		System.out.println(map);
	}
	
}
