package com.ascent.dao;

import com.ascent.bean.Authorization;
import com.ascent.bean.AuthorizationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AuthorizationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    long countByExample(AuthorizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int deleteByExample(AuthorizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int insert(Authorization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int insertSelective(Authorization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    List<Authorization> selectByExample(AuthorizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    Authorization selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") Authorization record, @Param("example") AuthorizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") Authorization record, @Param("example") AuthorizationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(Authorization record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table authorization
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Authorization record);
}