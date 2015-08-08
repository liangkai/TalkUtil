package com.gowild.talk.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TalkController {
	/**
	 * 登录页面路径
	 * @return
	 */
	@RequestMapping("/login")
	public String toLogin(){
		System.out.println("login");
		return "login";
	}
	/**
	 * 登录
	 * @return
	 */
	@RequestMapping("/loginaction")
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password,Model model,HttpSession httpSession){
		System.out.println("username = "+username+"-password = "+password);
//		model.addAttribute("username",username);
		httpSession.setAttribute("username", username);
		return "person";
	}
	/**
	 * 新增nomsolo语料页面
	 * @return
	 */
	@RequestMapping("/nomsolo")
	public String nomsolo(){
		return "nomsolo";
	}
	@RequestMapping("/rule")
	public String rule(){
		return "rule";
	}
	@RequestMapping("/person")
	public String person(){
		return "person";
	}
	@RequestMapping("/nom_session")
	public String nom_session(){
		return "nom_session";
	}
	/**
	 * 提交
	 * @return
	 */
	@RequestMapping("/lastSubmit")
	public String submit(@RequestParam("username") String username,
			@RequestParam("user") String user,
			@RequestParam("selector") String selector,
			@RequestParam("content") String content,
			@RequestParam("question") String question,
			HttpServletRequest req,HttpServletResponse response){
		System.out.println("username:"+username);
		System.out.println("1 user:"+user+"-selector:"+selector+"-content:"+content+"-question:"+question);
		System.out.println("2 user:"+req.getAttribute("user")+"-selector:"+req.getAttribute("selector")+
				"-content:"+req.getAttribute("content")+"-question:"+req.getAttribute("question"));
		return "person";
	}
}
