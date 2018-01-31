package com.sist.datatable;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface DataTableMapper {
	
	@Select("SELECT a.c_year, a.c_gu,"
			+ "a.c_name as gangdo, a.c_count as gangdo_c, f.c_count as g_gangdo_c, "
			+ "b.c_name as ganggan, b.c_count as ganggan_c, g.c_count as g_ganggan_c, "
			+ "c.c_name as salin, c.c_count as salin_c, h.c_count as g_salin_c, "
			+ "d.c_name as juldo, d.c_count as juldo_c, i.c_count as g_juldo_c, "
			+ "e.c_name as pok, e.c_count as pok_c, j.c_count as g_pok_c, "
			+ "cc.c_cam "
			+ "FROM crimerate a, crimerate b, crimerate c, crimerate d, crimerate e, crimerate f, crimerate g, crimerate h, crimerate i, crimerate j, cctv cc "
			+ "WHERE a.c_year = #{c_year} "
			+ "AND a.c_type = '발생' "
			+ "AND a.c_name = '강도' "
			+ "AND b.c_name = '강간' "
			+ "AND c.c_name = '살인' "
			+ "AND d.c_name = '절도' "
			+ "AND e.c_name = '폭력' "
			+ "AND f.c_type = '검거' "
			+ "AND f.c_name = '강도' "
			+ "AND g.c_name = '강간' "
			+ "AND h.c_name = '살인' "
			+ "AND i.c_name = '절도' "
			+ "AND j.c_name = '폭력' "
			+ "AND a.c_year = b.c_year "
			+ "AND b.c_year = c.c_year "
			+ "AND c.c_year = d.c_year "
			+ "AND d.c_year = e.c_year "
			+ "AND e.c_year = f.c_year "
			+ "AND f.c_year = g.c_year "
			+ "AND g.c_year = h.c_year "
			+ "AND h.c_year = i.c_year "
			+ "AND i.c_year = j.c_year "
			+ "AND a.c_gu=cc.c_gu "
			+ "AND a.c_gu = b.c_gu "
			+ "AND b.c_gu = c.c_gu "
			+ "AND c.c_gu = d.c_gu "
			+ "AND d.c_gu = e.c_gu "
			+ "AND e.c_gu = f.c_gu "
			+ "AND f.c_gu = g.c_gu "
			+ "AND g.c_gu = h.c_gu "
			+ "AND h.c_gu = i.c_gu "
			+ "AND i.c_gu = j.c_gu "
			+ "AND a.c_type = b.c_type "
			+ "AND b.c_type = c.c_type "
			+ "AND c.c_type = d.c_type "
			+ "AND d.c_type = e.c_type "
			+ "AND f.c_type = g.c_type "
			+ "AND g.c_type = h.c_type "
			+ "AND h.c_type = i.c_type "
			+ "AND i.c_type = j.c_type "
			+ "ORDER BY a.c_year, a.c_gu")
	public List<DataTableVO> databoardlist(int c_year);
}
