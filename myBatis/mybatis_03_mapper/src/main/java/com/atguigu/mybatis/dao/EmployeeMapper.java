package com.atguigu.mybatis.dao;

import com.atguigu.mybatis.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface EmployeeMapper {

    public Employee getEmpByMap(Map<String,Object> map);

    public Employee getEmpByIdAndLastName(@Param("id")Integer id,@Param("lastName") String lastName);

    public Employee getEmpById(Integer id);
    // 如果要想有返回值直接在这里写就可以了.不用在xml里面再写返回值类型
    public Long addEmp(Employee employee);

    public boolean updateEmp(Employee employee );

    public void deleteEmpById(Integer id);
}
