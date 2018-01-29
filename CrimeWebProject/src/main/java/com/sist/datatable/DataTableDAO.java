package com.sist.datatable;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DataTableDAO {
	@Autowired
	DataTableMapper mapper;
	public List<DataTableVO> databoardlist(int c_year){
		return mapper.databoardlist(c_year);
	}
}
