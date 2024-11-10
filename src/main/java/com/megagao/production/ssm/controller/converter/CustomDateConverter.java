package com.megagao.production.ssm.controller.converter;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 *
 * 自定义日期转换器
 */
public class CustomDateConverter implements Converter<String, Date> {
	@Override
	public Date convert(String source) {
		try {
			//进行日期转换
			return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(source);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
