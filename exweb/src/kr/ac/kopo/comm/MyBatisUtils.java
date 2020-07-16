package kr.ac.kopo.comm;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisUtils {
	private static  SqlSessionFactory sqlSessionFactory;
	
	static{
		try {
			// 지정한 위치의 마이바티스 설정파일을 읽어서 SqlSessionFactory를 생성
			String resource = "/batis/mybatis-config.xml"; // 마이바티스 설정 파일을 변수에 담고 resource에 선언
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getsSessionFactory() {
		return sqlSessionFactory;
		
	}

}
