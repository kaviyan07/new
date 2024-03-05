package com.ecs.aua.xsd.support;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Uidata")
@XmlAccessorType(XmlAccessType.FIELD)
public class Uidata {
  @XmlAttribute(name = "lang")
  private String lang;
  
  @XmlAttribute(name = "name")
  private String name;
  
  @XmlAttribute(name = "co")
  private String co;
  
  @XmlAttribute(name = "house")
  private String house;
  
  @XmlAttribute(name = "street")
  private String street;
  
  @XmlAttribute(name = "lm")
  private String lm;
  
  @XmlAttribute(name = "loc")
  private String loc;
  
  @XmlAttribute(name = "vtc")
  private String vtc;
  
  @XmlAttribute(name = "subdist")
  private String subDist;
  
  @XmlAttribute(name = "dist")
  private String dist;
  
  @XmlAttribute(name = "state")
  private String state;
  
  @XmlAttribute(name = "pc")
  private String pc;
  
  @XmlAttribute(name = "po")
  private String po;
  
  @XmlAttribute(name = "country")
  private String country;
  
  public static boolean b;
  
  public String getLang() {
    return this.lang;
  }
  
  public void setLang(String paramString) {
    this.lang = paramString;
  }
  
  public String getName() {
    return this.name;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
  
  public String getCo() {
    return this.co;
  }
  
  public void setCo(String paramString) {
    this.co = paramString;
  }
  
  public String getHouse() {
    return this.house;
  }
  
  public void setHouse(String paramString) {
    this.house = paramString;
  }
  
  public String getStreet() {
    return this.street;
  }
  
  public void setStreet(String paramString) {
    this.street = paramString;
  }
  
  public String getLm() {
    return this.lm;
  }
  
  public void setLm(String paramString) {
    this.lm = paramString;
  }
  
  public String getLoc() {
    return this.loc;
  }
  
  public void setLoc(String paramString) {
    this.loc = paramString;
  }
  
  public String getVtc() {
    return this.vtc;
  }
  
  public void setVtc(String paramString) {
    this.vtc = paramString;
  }
  
  public String getSubDist() {
    return this.subDist;
  }
  
  public void setSubDist(String paramString) {
    this.subDist = paramString;
  }
  
  public String getDist() {
    return this.dist;
  }
  
  public void setDist(String paramString) {
    this.dist = paramString;
  }
  
  public String getState() {
    return this.state;
  }
  
  public void setState(String paramString) {
    this.state = paramString;
  }
  
  public String getPc() {
    return this.pc;
  }
  
  public void setPc(String paramString) {
    this.pc = paramString;
  }
  
  public String getPo() {
    return this.po;
  }
  
  public void setPo(String paramString) {
    this.po = paramString;
  }
  
  public String getCountry() {
    return this.country;
  }
  
  public void setCountry(String paramString) {
    this.country = paramString;
  }
}
