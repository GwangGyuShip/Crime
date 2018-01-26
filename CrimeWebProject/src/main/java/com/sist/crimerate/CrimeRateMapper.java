package com.sist.crimerate;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.sist.freeboard.BoardVO;

public interface CrimeRateMapper {
@Select("SELECT c_gu,c_name,c_type,c_count FROM crimerate "
		+"WHERE c_gu=#{c_gu} and c_type='발생' and c_year=2016")
public List<CrimeRateVO> CrimeContentData(String c_gu);

@Select("SELECT SUM(c_count) total ,ROUND(SUM(c_count)/3,2) average FROM crimerate "
		+ "WHERE c_gu=#{c_gu} and c_type='발생' and c_year=2016")
public CrimeRateVO CrimeTotalData(String c_gu);

@Select("SELECT c_cam FROM cctv WHERE c_gu=#{c_gu}")
public int CrimeCctvData(String c_gu);

}


