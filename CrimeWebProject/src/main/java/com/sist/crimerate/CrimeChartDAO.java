package com.sist.crimerate;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.*;

public class CrimeChartDAO extends SqlSessionDaoSupport{
	public List<CrimeRateVO> chartAvgData(Map map){
		return getSqlSession().selectList("chartAvgData",map);
	}
	public List<CrimeRateVO> chartUpdateData(Map map){
		return getSqlSession().selectList("chartUpdateData",map);
	}
}
