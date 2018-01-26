package com.sist.photo;

import org.apache.ibatis.annotations.Select;
import java.util.*;
public interface PhotoMapper {
	@Select("SELECT gu FROM kang WHERE hankang=#{hankang}")
	public List<AddressVO> kangcheck(String hankang);

}
