package com.sist.crimerate;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.sist.freeboard.BoardVO;

public interface CrimeRateMapper {
@Select("select c_gu,c_name,c_type,c_count from crimerate "
		+"where c_gu=#{c_gu} and c_type='발생' and c_year=2016")
public List<CrimeRateVO> CrimeContentData(String c_gu);

@Select("select SUM(c_count) total ,ROUND(SUM(c_count)/3,2) average from crimerate "
		+ "where c_gu=#{c_gu} and c_type='발생' and c_year=2016")
public CrimeRateVO CrimeTotalData(String c_gu);
}