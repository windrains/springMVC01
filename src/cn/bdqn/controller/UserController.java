package cn.bdqn.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.bdqn.pojo.User;

@Controller
@RequestMapping(value="/user")
public class UserController {

	private Map<String, User> userList=new HashMap<String, User>();
	
	
	public UserController(){
		userList.put("1", new User("1", "t01", "111", "t01@bdqn.cn"));
		userList.put("2", new User("2", "t02", "222", "t02@bdqn.cn"));
		userList.put("3", new User("3", "t03", "333", "t03@bdqn.cn"));	
	}
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("userList",userList);
		
		return "/user/userlist";
		
	}
	
	
	@RequestMapping(value="/userList",method=RequestMethod.GET)
	public String list(HttpServletRequest request){
		
		ArrayList<User> userList = new ArrayList<User>();
		userList.add(new User("1", "t01", "111", "t01@bdqn.cn"));
		userList.add(new User("2", "t02", "222", "t02@bdqn.cn"));
		userList.add(new User("3", "t03", "333", "t03@bdqn.cn"));
		request.setAttribute("userList", userList);
		
		return "/user/userlist";
	}
	
	
	
	
	@RequestMapping(value="/userMV",method=RequestMethod.GET)
	public ModelAndView list(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/user/userlist");
		mv.addObject("userList",userList);
		return mv;
	}
	
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		model.addAttribute(new User());     // 必须新建一个user对象放到Model里，否则报错，此对象将传到jsp中的modelAttribute中：<fm:form modelAttribute="user" method="post"> 
		return "user/add";
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(User user){
		userList.put(user.getId().toString(), user);
		
		//return "/user/userlist";          //逻辑视图名，服务器端行文，没有更新页面数据，新的数据不显示，不能用此方法。
		return "redirect:/user/list";       //客户端重新发出请求
	}
	
}
