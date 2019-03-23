package com.ascent.service;

import com.ascent.bean.Usr;
import com.ascent.bean.UsrExample;
import com.ascent.dao.UsrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author bruce
 * @date 19-3-18
 */

@Service
public class UserService {

    @Autowired
    UsrMapper usrMapper;

    public void getAll(){
        usrMapper.selectByExample(null);
    }

    public Usr userLogin(String username,String password){
        UsrExample example = new UsrExample();
        UsrExample.Criteria  criteria = example.createCriteria();
        criteria.andNameEqualTo(username);
        List<Usr> usrs = usrMapper.selectByExample(example);
        if(usrs.size()!=0){
            // 因为只有一个元素
            for(Usr usr : usrs){
                if(usr.getPassword().equals(password)){
                    return usr;
                }
            }
        }

        return null;
    }
}
