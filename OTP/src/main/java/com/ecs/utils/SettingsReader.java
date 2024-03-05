package com.ecs.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;

public class SettingsReader 
{
	private Properties prop = null;
	
	public SettingsReader(InputStream stream) throws Exception
	{
		try
		{
			prop = new Properties();
			prop.load(stream);
			stream.close();
		}catch(IOException ex)
		{
			prop = null;
			throw ex;
		}
	}
	
	public String getProperty(String propertyName)
	{
		return prop.getProperty(propertyName.trim());
	}
	
	
}
