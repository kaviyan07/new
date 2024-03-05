package com.ecs.utils;

import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.stream.StreamSource;


public class XMLUtils {
	
	public static <T> String serialize(T object) throws JAXBException
	{
        StringWriter stringWriter = new StringWriter();
        JAXBContext context = JAXBContext.newInstance(object.getClass());
        Marshaller marshaller = context.createMarshaller();
        //marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.FALSE);
        marshaller.marshal(object, stringWriter);
        return stringWriter.toString();
    }
	
	public static <T> String serializeWithoutHeader(T object) throws JAXBException
	{
        StringWriter stringWriter = new StringWriter();
        JAXBContext context = JAXBContext.newInstance(object.getClass());
        Marshaller marshaller = context.createMarshaller();
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.FALSE);
        marshaller.setProperty(Marshaller.JAXB_FRAGMENT, Boolean.TRUE);
        marshaller.marshal(object, stringWriter);
        return stringWriter.toString();
    }
	public static <T> String serializeWithoutSpaces(T object) throws JAXBException
	{
        StringWriter stringWriter = new StringWriter();
        JAXBContext context = JAXBContext.newInstance(object.getClass());
        Marshaller marshaller = context.createMarshaller();
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.FALSE);
        marshaller.marshal(object, stringWriter);
        return stringWriter.toString();
    }
	
	
	public static <T> T  deserialize(Class <T> clazz, String xml) throws JAXBException, XMLStreamException
	{
        JAXBContext context = JAXBContext.newInstance(clazz);
        Unmarshaller um = context.createUnmarshaller();
        return (T) um.unmarshal(new StringReader(xml));
    }
	
	/*public static <T> T  deserialize(Class <T> clazz, String xml) throws JAXBException, XMLStreamException
	{
        JAXBContext context = JAXBContext.newInstance(clazz);

        XMLInputFactory xif = XMLInputFactory.newFactory();
        xif.setProperty(XMLInputFactory.IS_NAMESPACE_AWARE, false); // this is the magic line
        StreamSource source = new StreamSource(new StringReader(xml));
        XMLStreamReader xsr = xif.createXMLStreamReader(source);
        
        Unmarshaller um = context.createUnmarshaller();
        return (T) um.unmarshal(xsr);
    }*/
	
	
	
}
