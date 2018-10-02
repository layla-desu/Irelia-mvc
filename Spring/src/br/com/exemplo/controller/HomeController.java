package br.com.exemplo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/olamundo")
	public String index(){
		return "home/index";
	}
	
	@GetMapping("/")
	public String home() {
		return "home/home";
	}

}