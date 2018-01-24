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
	public Map CrimeTotalData(String c_gu){
		return cm.CrimeTotalData(c_gu);
	}
	
}
