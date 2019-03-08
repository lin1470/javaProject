package com.atguigu.springbootwebcrud.controller;

import com.atguigu.springbootwebcrud.dao.DepartmentDao;
import com.atguigu.springbootwebcrud.dao.EmployeeDao;
import com.atguigu.springbootwebcrud.entities.Department;
import com.atguigu.springbootwebcrud.entities.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Collection;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeDao employeeDao;
    @Autowired
    DepartmentDao departmentDao;
    // 查询所有员工返回页面
    @GetMapping("/emps")
    public String list(Model model){
        /**
         * 这里请求域返回的可以是Model类也可以是Map类,更可以是ModelMap类的变量
         *
         */

        Collection<Employee> employees = employeeDao.getAll();
        //放在请求域中.
        model.addAttribute("emps",employees);
        // thymeleaf 默认就会拼串
        // classpath:/templates/xxx.html
        return "emp/list";
    }

    //来到员工添加页面
    @GetMapping("/emp")
    public String toAddPage(Model model){
        //来到添加页面,查出所有的部门,在页面中显示
        Collection<Department> departments = departmentDao.getDepartments();
        model.addAttribute("depts",departments);
        return "emp/add";
    }
}
