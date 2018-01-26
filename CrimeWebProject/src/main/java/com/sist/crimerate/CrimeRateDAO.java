package com.sist.crimerate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
@Repository
public class CrimeRateDAO {
	@Autowired
	private CrimeRateMapper cm;

	public List<CrimeRateVO> CrimeContentData(String c_gu){
		return cm.CrimeContentData(c_gu);
	}
	public CrimeRateVO CrimeTotalData(String c_gu){
		return cm.CrimeTotalData(c_gu);
	}
	public int CrimeCctvData(String c_gu){
		return cm.CrimeCctvData(c_gu);
	}
	public List<CrimeRateVO> CrimeChartData(String c_gu){
		return cm.CrimeChartData(c_gu);
	}

}
