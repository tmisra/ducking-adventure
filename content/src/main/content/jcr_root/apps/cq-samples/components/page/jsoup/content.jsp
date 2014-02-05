<%@page session="false"%>
<%--
  Copyright 1997-2009 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default content script.

  Draws the HTML content.

  ==============================================================================

--%>
<%@include file="/libs/foundation/global.jsp" %>
<%@ page import="org.apache.sling.commons.json.io.*,com.misra.cq.samples.*" %>
      
<h1>AEM Custom HTML Parser service</h1>                     
<h2>This page will parse HTML</h2>
<%  
com.misra.cq.samples.HTMLService customHTMLService = sling.getService(com.misra.cq.samples.HTMLService.class); 
%>
  
<h2>The AEM Custom HTML Parser service parses this HTML: <code><div><p>Hello JSoup - this is now a CQ service.</p></div></code></h2>
<h3><%= "Value of the P tag is: " +customHTMLService.processHTML("<div><p>Hello JSoup - this is now a CQ service.</p></div>")%></h3>
<cq:include path="par" resourceType="foundation/components/parsys"/>

