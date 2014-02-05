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
<%@ page import="org.apache.jackrabbit.api.security.user.UserManager,
      			 org.apache.jackrabbit.api.security.user.Authorizable,
				 org.apache.jackrabbit.api.security.user.Group,
                     com.day.cq.tagging.Tag,
                     com.day.cq.wcm.api.WCMMode,
                     com.day.cq.wcm.core.stats.PageViewStatistics,
                     com.day.text.Text,
                     org.apache.sling.commons.json.JSONException,
                     org.apache.sling.commons.json.io.JSONWriter,
                     java.io.StringWriter, java.util.*" %>

<cq:include path="par" resourceType="foundation/components/parsys"/>