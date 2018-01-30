package com.sist.datatable;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface DataTableMapper {
	
	@Select("SELECT a.c_year, a.c_gu, "
			+ "a.c_name as gangdo, a.c_count as gangdo_c, "
			+ "b.c_name as ganggan, b.c_count as ganggan_c, "
			+ "c.c_name as salin, c.c_count as salin_c, "
			+ "d.c_name as juldo, d.c_count as juldo_c, "
			+ "e.c_name as pok, e.c_count as pok_c, "
			+ "cc.c_cam "
			+ "FROM crimerate a, crimerate b, crimerate c, crimerate d, crimerate e, cctv cc "
			+ "WHERE a.c_year =#{c_year} "
			+ "AND a.c_type = '발생' "
			+ "AND a.c_name = '강도' "
			+ "AND b.c_name = '강간' "
			+ "AND c.c_name = '살인' "
			+ "AND d.c_name = '절도' "
			+ "AND e.c_name = '폭력' "
			+ "AND a.c_year = b.c_year "
			+ "AND b.c_year = c.c_year "
			+ "AND c.c_year = d.c_year "
			+ "AND d.c_year = e.c_year "
			+ "AND a.c_gu=cc.c_gu "
			+ "AND a.c_gu = b.c_gu "
			+ "AND b.c_gu = c.c_gu "
			+ "AND c.c_gu = d.c_gu "
			+ "AND d.c_gu = e.c_gu "
			+ "AND a.c_type = b.c_type "
			+ "AND b.c_type = c.c_type "
			+ "AND c.c_type = d.c_type "
			+ "AND d.c_type = e.c_type "
			+ "ORDER BY a.c_year, a.c_gu")
	public List<DataTableVO> databoardlist(int c_year);
}
