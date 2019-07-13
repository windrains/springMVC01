package cn.bdqn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {


	/*@RequestMapping(value="/hello")      //请求的url为/hello，会进入此方法。
	public String hello(@RequestParam(value="username",required=false) String username){
						//用@RequestParam可以获得url传来的参数，不用此参数也可获得。required为false，url中可以没有username，不报错。required为true，url中不能没有username，否则报400错误。默认为true。
		System.out.println("hello，"+username);
		
		return "welcome";     //welcome将在welcome-servlet.xml中被视图解析器解析。
	}*/
	
	
	
	@RequestMapping(value="/hello")      //请求的url为/hello，会进入此方法。
	public String hello( String username,Model model){
							//username接收的参数，只有Model是要传出的参数,用EL表达式接收
		System.out.println("hello，"+username);
		
		model.addAttribute("username", username);       //Model即Map，作用域相当于request。
		return "welcome";     //welcome将在welcome-servlet.xml中被视图解析器解析。
	}
	
	
	
	//用ModelAndView传参
	@RequestMapping(value="/hello2")      //请求的url为/hello2，会进入此方法。
	public ModelAndView hello(String username){
							
		System.out.println("hello2，"+username);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("welcome");
		modelAndView.addObject("username", username);
		return modelAndView;     //welcome将在welcome-servlet.xml中被视图解析器解析。
	}
	
	
}
