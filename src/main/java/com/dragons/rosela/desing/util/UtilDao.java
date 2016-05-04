package com.dragons.rosela.desing.util;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;

public class UtilDao {

	private JdbcTemplate jdbcTemplate;
	private Properties querys;

	public void setDataSource(DataSource ds) {
		jdbcTemplate = new JdbcTemplate(ds);
	}

	public DataSource getDataSource() {
		return jdbcTemplate.getDataSource();
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Autowired
	@Qualifier("querys")
	public void setQuerys(Properties querys) {
		this.querys = querys;
	}

	public String getQuery(String key) {
		return (String) querys.get(key);
	}

}
