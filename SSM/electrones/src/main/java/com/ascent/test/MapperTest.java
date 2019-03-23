package com.ascent.test;

/**
 * @author bruce
 * @date 19-3-18
 */

import com.ascent.bean.Department;
import com.ascent.bean.DepartmentExample;
import com.ascent.bean.Usr;
import com.ascent.dao.*;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * 测试dao层的工作
 *推荐Spring的项目就可以使用Spring的单元测试，可以自动注入我们需要的组件
 *1、导入SpringTest模块
 *2、@ContextConfiguration指定Spring配置文件的位置
 *3、直接autowired要使用的组件即可
 * 4. 这个类主要是测试DAO是否能用.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    DepartmentMapper departmentMapper;

    @Autowired
    AuthorizationMapper authorizationMapper;

    @Autowired
    NewsMapper newsMapper;

    @Autowired
    UsrMapper usrMapper;



    @Autowired
    SqlSession sqlSession;

    @Test
    public void testDao(){

        System.out.println("获取到的usr"+usrMapper);
        List<Usr> usrs = usrMapper.selectByExample(null);

        for(Usr user:usrs){
            System.out.println(user);
        }

        DepartmentExample example = new DepartmentExample();
        DepartmentExample.Criteria criteria = example.createCriteria();
        String deptName="研发部";
        criteria.andNameEqualTo(deptName);
        List<Department> list = departmentMapper.selectByExample(example);
        for(Department department : list){
            System.out.println(department);
        }

//        System.out.println(usrs);
    }


}
