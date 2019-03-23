package com.atguigu.crud.controller;
import com.atguigu.crud.bean.Employee;
import com.atguigu.crud.bean.Msg;
import com.atguigu.crud.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.List;


/**
 * 处理员工的CRUD请求
 */


/**
 * spring 提供给我们这个虚拟请求的方法,这个我们有时候要用的.
 *
 */
@Controller
public class EmployeeController {



    @Autowired
    EmployeeService employeeService;

    /**
     * 查询员工数据(分页查询)
     * @return
     */
//    @RequestMapping("/emps")
    public String list(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                       Model model){

        //这不是一个分页查询
        // 引入PageHelper的分页插件.
        // 在查询之前,只需要调用,传入页码,以及每页的大小
        PageHelper.startPage(pn,5);
        //startPage后面紧跟的这个查询就是一个分页查询.
        List<Employee> emps = employeeService.getAll();
        // 用pageinfo来包装查询后的结果.只需要将pageInfo交给页面就可以了.
        // 封装了详细的分页信息,包括有我们查询出来的数据,传入连续显示的页数.
        PageInfo page = new PageInfo(emps,5);
        model.addAttribute("pageInfo",page);
        //我们添加打印看看查询出来的数据是什么样子的.
        System.out.println("查询出来的分页的信息是什么样子的:"+page);

        //这个就可以获取我们每页显示的连续页码.
//        page.getNavigatepageNums();

        return "list";
    }

    /**
     * 导入jackson包。
     * @param pn
     * @return
     */
    @RequestMapping("/emps")
    @ResponseBody
    public Msg getEmpsWithJson(
            @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 这不是一个分页查询
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 5);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Employee> emps = employeeService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(emps, 5);
        return Msg.success().add("pageInfo", page);
//        return page;
    }
}
