import com.atguigu.mybatis.bean.Employee;
import com.atguigu.mybatis.dao.EmployeeMapper;
import com.atguigu.mybatis.dao.EmployeeMapperAnnotation;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;


/**
 * 1. 接口式编程
 * 原生： Dao ====> DaoImpl
 * mbatis: Mapper ===> xxMapper.xml
 *
 * 2. SqlSession代表和数据库的一次对话.用完必须关闭;
 * 3. SqlSession 和connection一样他是非线程安全.每次使用都应该去获取新的对象.
 * 4. mapper接口没有实现类,但是mybatis会为这个接口生成一个代理对象
 *      (将接口和xml进行绑定)
 *      sqlSession.getMapper(EmployeeMapper.class)
 * 5. 两个重要的配置文件:
 *      mabatis的全局配置文件:包含数据库连接池信息,事务管理器信息
 *      sql映射文件:保存了每一个sql语句的映射信息:
 *              将sql抽取出来
 *
 */

public class MyBatisTest {

    /**
     * 1. 根据xml配置文件(全局配置文件)创建一个SqlSessionFactory对象
     *      有数据源一些运行环境信息
     * 2. sql映射文件,配置了每一个sql,以及sql的封装规则等
     * 3. 将sql映射文件注册在全局配置文件中
     * 4. 写代码:
     *      1). 根据全局配置文件得到sqlSeesionFactory;
     *      2). 使用sqlSessionFactory,获取sqlSession对象使用他来执行sql语句
     *          一个sqlsession就是代表和数据库的一次会话,用完关闭
     *      3). 使用sql唯一标识来告诉Mybatis执行那个sql,sql都是保存在每一个映射文件中.
     *
     * @throws IOException
     */

    public SqlSessionFactory getSessionFactory() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        return new SqlSessionFactoryBuilder().build(inputStream);

    }
    @Test
    public void test() throws IOException {

        /**
         * Retrieve a single row mapped from the statement key and parameter.
         * @param <T> the returned object type
         * @param statement Unique identifier matching the statement to use.
         * @param parameter A parameter object to pass to the statement.
         * @return Mapped object
         */
        SqlSessionFactory sqlSessionFactory = getSessionFactory();
        SqlSession openSession = sqlSessionFactory.openSession();

       try {
           Employee employee = openSession.selectOne("com.atguigu.mybatis.bean.Employee.selectEmp", 1);
           System.out.println(employee);
       }finally {
           openSession.close();
       }

    }

    @Test
    public void test01() throws IOException {
        // 1. 获取sqlSessionFactory对象
        SqlSessionFactory sqlSessionFactory = getSessionFactory();

        // 2. 获取sqlSession对象
        SqlSession openSession = sqlSessionFactory.openSession();

        try {
            // 3. 获取接口的实现类对象
            // 会为接口自动的创建一个代理对象,代理对象去执行增删改查.
            EmployeeMapper mapper = openSession.getMapper(EmployeeMapper.class);

            Employee employee = mapper.getEmpById(1);
            System.out.println(mapper.getClass());
            System.out.println(employee);
        }finally {
            openSession.close();
        }


    }

    @Test
    public void test02() throws IOException {
        SqlSessionFactory sessionFactory = getSessionFactory();
        SqlSession openSession = sessionFactory.openSession();
        try {
            EmployeeMapperAnnotation mapper = openSession.getMapper(EmployeeMapperAnnotation.class);
            Employee empById = mapper.getEmpById(2);
            System.out.println(empById);
        }finally {
            openSession.close();
        }
    }

    /**
     * * 测试增删改
	 * 1、mybatis允许增删改直接定义以下类型返回值
	 * 		Integer、Long、Boolean、void
	 * 2、我们需要手动提交数据
	 * 		sqlSessionFactory.openSession();===》手动提交
	 * 		sqlSessionFactory.openSession(true);===》自动提交
	 * @throws IOException
	 */
    @Test
    public void test03() throws IOException {
        SqlSessionFactory sessionFactory = getSessionFactory();
        // 1. 获取的sqlsession 不会自动提交数据
        SqlSession openSession = sessionFactory.openSession();
        
        try{
            //测试添加
            EmployeeMapper mapper = openSession.getMapper(EmployeeMapper.class);
            Employee employee= new Employee(null,"jerry","jerry@atguigu.com","1");
            mapper.addEmp(employee);
//            employee.getEmail();
            System.out.println(employee.getId());

            //测试修改
//
//            Employee employee= new Employee(2,"tom","jerry@atguigu.com","0");
//            boolean b = mapper.updateEmp(employee);
//            System.out.println(b);

            // 测试删除
//            mapper.deleteEmpById(3);
            //2.手动提交
            openSession.commit();

        }finally {
            openSession.close();
        }
    }

    @Test
    public void test04() throws IOException {
        SqlSessionFactory sessionFactory = getSessionFactory();
        // 1. 获取的sqlsession 不会自动提交数据
        SqlSession openSession = sessionFactory.openSession();

        try{
            //测试添加
            EmployeeMapper mapper = openSession.getMapper(EmployeeMapper.class);
//            Employee employee = mapper.getEmpByIdAndLastName(1, "tom");
            Map<String,Object> map =  new HashMap<String, Object>();
            map.put("id",1);
            map.put("lastName","tom");
            map.put("tableName","table_name");
            Employee employee = mapper.getEmpByMap(map);
//            mapper.get
            System.out.println(employee);


            //2.手动提交
            openSession.commit();

        }finally {
            openSession.close();
        }
    }
}
