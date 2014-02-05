package com.misra.cq.samples.impl;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.*;
 
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Reference;
import org.osgi.service.component.ComponentContext; 
import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Service;  
 
  
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.misra.cq.samples.HTMLService;
  
 
//This is a component so it can provide or consume services
@Component
   
@Service
public class HTMLServiceImpl implements HTMLService {
 
    /** Default log. */
    protected final Logger log = LoggerFactory.getLogger(this.getClass());
     
    @Override
    public String processHTML(String html) {
         
        String myPara="" ; 
        try
        {
            Document doc = Jsoup.parseBodyFragment(html);
            Element body = doc.body();
 
            //Get the value of the P tag and return it    
            Elements links = body.getElementsByTag("p");
            for (Element link : links) {
                myPara = link.text();
               }
            return myPara ; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return null; 
         
        }
 
}