package com.infy.employeeapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.infy.employeeapp.bean.EmployeeBean;
import com.infy.employeeapp.dao.EmployeeDao;
import com.infy.employeeapp.dto.EmployeeDto;
import com.infy.employeeapp.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/home")
	public ModelAndView getIndexPage(ModelAndView modelAndView) {
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	@GetMapping("add-employee-form")
	public ModelAndView getEmployeeForm(ModelAndView modelAndView) {
		//modelAndView.setViewName("add-employee");
		modelAndView.setViewName("try");

		return modelAndView;
	}
	
	@PostMapping("add-employee-details")
	public ModelAndView addEmployeeData(ModelAndView modelAndView,Model model,EmployeeBean employeeBean) {
		EmployeeDto addedEmployee=employeeService.addEmployee(employeeBean);
		if(addedEmployee!=null) {
			//return "redirect:/home";
			modelAndView.setViewName("redirect:/home");
		} else {
			//return "redirect:/add-employee-form";
			modelAndView.setViewName("redirect:/add-employee-form");
		}
		return modelAndView;
	}
	
	@GetMapping("/display-all")
	public ModelAndView getAllEmployeeDetails(ModelAndView modelAndView,Model model) {
		List<EmployeeDto> allEmployee=employeeService.getAllEmployee();
		if(allEmployee.isEmpty()) {
			model.addAttribute("msg", "No Records");
		} else {
			model.addAttribute("msg", allEmployee);
		}
		modelAndView.setViewName("display-all-employee");
		return modelAndView;
		
	}
	
	@GetMapping("/edit/{empId}")
	public ModelAndView getEditForm(ModelAndView modelAndView,@PathVariable("empId") int employeeId,Model model) {
		EmployeeDto serachedEmployee=employeeService.serachEmployee(employeeId);
		if(serachedEmployee!=null) {
			model.addAttribute("employee", serachedEmployee);
			//modelAndView.setViewName("edit-form");
			modelAndView.setViewName("try-edit");

		}
		else {
			model.addAttribute("employee", "No Record Found");
			modelAndView.setViewName("edit-form");
		}
		return modelAndView;	
	}
	@PostMapping("/update-employee")
	public ModelAndView updateEmployee(EmployeeBean employeeBean, @RequestParam("employeeId") int empId,ModelAndView modelAndView,Model model) {
		EmployeeDto updatedEmployee=employeeService.updateEmployeeDetails(employeeBean,empId);
		if(updatedEmployee!=null)
			modelAndView.setViewName("redirect:/display-all");
		else {
			model.addAttribute("msg", "Record Not updated");
			modelAndView.setViewName("display-all-employee");
		}
		return modelAndView;
	}
	
	@GetMapping("/delete/{employeeId}")
	public ModelAndView deleteEmployee(ModelAndView modelAndView,Model model,@PathVariable("employeeId") int empId) {
		EmployeeDto deletedEmployee=employeeService.deleteEmployeeDetails(empId);
		if(deletedEmployee!=null)
			modelAndView.setViewName("redirect:/display-all");
		else {
			model.addAttribute("msg", "Record Not updated");
			modelAndView.setViewName("display-all-employee");
		}
		return modelAndView;
	}
}
