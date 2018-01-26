package com.sist.photo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
@Repository
public class PhotoDAO {
	@Autowired
	private PhotoMapper pm;
	
	public List<AddressVO> kangcheck(String hankang){
		System.out.println(hankang);
		return pm.kangcheck(hankang);
		
	}

}
