package com.dragons.rosela.desing.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dragons.rosela.desing.dao.PrincipalDao;
import com.dragons.rosela.desing.util.UtilDao;

@Repository
public class PrincipalDaolmpl extends UtilDao implements PrincipalDao {

	@Override
	@Autowired
	@Qualifier("dataSourceRoselaDesing")
	public void setDataSource(DataSource ds) {
		super.setDataSource(ds);
	};

}
