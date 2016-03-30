package com.excilys.formation.computerdb.mapper.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.excilys.formation.computerdb.model.Company;
import com.excilys.formation.computerdb.model.Computer;

public class ComputerMapper {

	public static Computer map(ResultSet rs, Company company) throws SQLException {
		long id 	 = rs.getLong("id");
		String name  = rs.getString("name");
		String intro = rs.getString("introduced");
		String outro = rs.getString("discontinued");

		return new Computer.Builder()
			.id(id)
			.name(name)
			.intro(intro)
			.outro(outro)
			.company(company)
			.build();
	}
}
