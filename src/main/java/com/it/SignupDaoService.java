package com.it;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;


@Service  //  it is creating bean of this class
public class SignupDaoService {
	
	//JdbcTemplate - who created this ->> spring boot
	@Autowired
	private  JdbcTemplate jdbcTemplate;
	

	public  void update(SignupDTO signupDTO) {
		String sql = "update psignup_tbl set username=?,password=?,email=?,mobile=?,address=? where pid = ?";
		Object[] data= {signupDTO.getUsername(), signupDTO.getPassword(), signupDTO.getEmail(), Long.parseLong(signupDTO.getMobile()),signupDTO.getAddress(),signupDTO.getPid()};
		jdbcTemplate.update(sql,data);
	}

	public  SignupDTO findByPid(int pid) {
		String sql = "select pid,username,password,email,mobile,address,doe from psignup_tbl where pid = ?";
		List<SignupDTO> signupDTOs=jdbcTemplate.query(sql,new Object[] {pid}, new BeanPropertyRowMapper(SignupDTO.class));
		return signupDTOs.get(0);
	}

	public  void deleteByPid(int pid) {
		String sql = "delete from psignup_tbl where pid = ?";
		jdbcTemplate.update(sql,new Object[] {pid});
	}

	public  void save(SignupDTO signupDTO) {
			String sql = "insert into psignup_tbl(username,password,email,mobile,address,doe) values(?,?,?,?,?,?)";
			Timestamp doe = new Timestamp(new Date().getTime());
			Object[] data= {signupDTO.getUsername(), signupDTO.getPassword(), signupDTO.getEmail(), Long.parseLong(signupDTO.getMobile()),signupDTO.getAddress(),doe};
			jdbcTemplate.update(sql,data);
	}
	
	
	 List<SignupDTO> searchData(String searchText) {
		String sql = "select pid,username,password,email,mobile,address,doe from psignup_tbl where username like ? OR email like ? OR mobile like ?";
		String input="%" + searchText + "%";
		List<SignupDTO> signupDTOs=jdbcTemplate.query(sql,new Object[] {input,input,input}, new BeanPropertyRowMapper(SignupDTO.class));
		return signupDTOs;
	}

	 List<SignupDTO> findAll() {
		String sql = "select pid,username,password,email,mobile,address,doe from psignup_tbl";
		List<SignupDTO> signupDTOs=jdbcTemplate.query(sql,new BeanPropertyRowMapper(SignupDTO.class));
		return signupDTOs;
	}

}
