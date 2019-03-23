package com.atguigu.crud.test;

import java.util.List;
import java.util.UUID;

import com.atguigu.crud.bean.Department;
import com.atguigu.crud.service.EmployeeService;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import com.atguigu.crud.bean.Employee;
import com.atguigu.crud.dao.DepartmentMapper;
import com.atguigu.crud.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 测试dao层的工作
 *
 * 推荐Spring的项目就可以使用Spring的单元测试,可以自动注入我们需要的组件.
 * 1. 导入SpringTest的模块
 * 2. @ContextConfiguration 指定Spring配置文件的位置.
 * 3. 直接autowired 要使用的组件即可
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    DepartmentMapper departmentMapper;

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    SqlSession sqlSession;

    @Autowired
    EmployeeService employeeService;

    @Test
    public void testCRUD(){
//        System.out.println("hello");
        // 1. 创建Springioc容器
//        ApplicationContext ioc= new ClassPathXmlApplicationContext("applicationContext.xml");

        // 2. 从容器中获取mapper
//        DepartmentMapper departmentMapper = ioc.getBean(DepartmentMapper.class);

        System.out.println(departmentMapper);
        // 1. 插入几个部门

        departmentMapper.insertSelective(new Department(null,"开发部"));
        departmentMapper.insertSelective(new Department(null,"测试部"));

        // 2. 生成员工数据,测试员工插入.

        employeeMapper.insertSelective(new Employee(null,"jerry","M","jerry@atguigu.com",1));

        List<Employee> employeeList = employeeService.getAll();
        System.out.println("可以使用employeeservice并且有数据"+employeeList);

        // 重新创建这个这个批量操作的mapper比一次性的mapper快得多.
        // 3. 批量插入员工数据,使用可以执行批量操作的sqlSession
//        EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
//        for (int i=0;i<1000;i++){
//            String uid = UUID.randomUUID().toString().substring(0, 5)+ i;
//            mapper.insertSelective(new Employee(null,uid,"M",uid+"@atguigu.com",1));
//        }
//        System.out.println("finish batch operation");
//

    }
}
