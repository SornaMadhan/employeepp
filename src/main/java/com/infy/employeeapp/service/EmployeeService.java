package com.infy.employeeapp.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infy.employeeapp.bean.EmployeeBean;
import com.infy.employeeapp.dao.EmployeeDao;
import com.infy.employeeapp.dto.EmployeeDto;
@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao employeeDao;

	public EmployeeDto addEmployee(EmployeeBean employeeBean) {
		EmployeeDto employeeDto=new EmployeeDto();
		employeeDto.setEmployeeName(employeeBean.getEmployeeName());
		employeeDto.setEmailId(employeeBean.getEmailId());
		LocalDate dob=LocalDate.parse(employeeBean.getDateOfBirth());
		employeeDto.setDateOfBirth(dob);
		int age=LocalDate.now().getYear()-dob.getYear();
		employeeDto.setAge(age);
		employeeDto.setSalary(employeeBean.getSalary());
		employeeDto.setEmployeeStatus(employeeBean.getEmployeeStatus());
		return employeeDao.insertEmployee(employeeDto);
	}

	public List<EmployeeDto> getAllEmployee() {
		return employeeDao.getAllEmployee();
	}

	public EmployeeDto serachEmployee(int employeeId) {
		
		return employeeDao.findEmployee(employeeId);
	}

	public EmployeeDto updateEmployeeDetails(EmployeeBean employeeBean, int empId) {
		EmployeeDto employeeDto=new EmployeeDto();
		employeeDto.setEmployeeId(empId);
		System.out.println(empId);
		employeeDto.setEmployeeName(employeeBean.getEmployeeName());
		employeeDto.setEmailId(employeeBean.getEmailId());
		LocalDate dob=LocalDate.parse(employeeBean.getDateOfBirth());
		employeeDto.setDateOfBirth(dob);
		int age=LocalDate.now().getYear()-dob.getYear();
		employeeDto.setAge(age);
		employeeDto.setSalary(employeeBean.getSalary());
		employeeDto.setEmployeeStatus(employeeBean.getEmployeeStatus());
		return employeeDao.updateEmployee(employeeDto);
		
	}

	public EmployeeDto deleteEmployeeDetails(int empId) {
		EmployeeDto employeeDto= employeeDao.findEmployee(empId);
		return employeeDao.remove(employeeDto);
	}
}
