package com.sist.crimerate;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.*;

public class CrimeChartDAO extends SqlSessionDaoSupport{
	public List<CrimeRateVO> totalChartData(Map map){
		return getSqlSession().selectList("totalChartData",map);
	}
}
