<%@page import="com.hostel.mgt.controller.HostelCtl"%>
<%@page import="com.hostel.mgt.util.HTMLUtility"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.hostel.mgt.util.ServletUtility"%>
<%@page import="com.hostel.mgt.util.DataUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hostel</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<br>
 <nav
		aria-label="breadcrumb" role="navigation">
	<ol class="breadcrumb">
		
		<li class="breadcrumb-item active" aria-current="page">Add Hostel</li>
	</ol>
	</nav>

<div col-md-5 img-thumbnail">
           <div id="feedback"> <div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form" action="<%=HMSView.HOSTEL_CTL%>" method="post" >
        
       <jsp:useBean id="bean" class="com.hostel.mgt.bean.HostelBean"
         					   scope="request"></jsp:useBean>
         					   
         					   <input type="hidden" name="id" value="<%=bean.getId()%>">
              <input type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
              <input type="hidden" name="modifiedBy" value="<%=bean.getModifiedBy()%>">
              <input type="hidden" name="createdDatetime" value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
              <input type="hidden" name="modifiedDatetime" value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
			
        <br style="clear:both">
                    <h3 style="margin-bottom: 15px; text-align: left: ;">Add Hostel</h3>
                    <b><font color="red"> <%=ServletUtility.getErrorMessage(request)%>
                </font></b>
                
              <b><font color="Green"> <%=ServletUtility.getSuccessMessage(request)%>
                </font></b>
                
                		
							<div class="form-group">
								<input type="text" class="form-control"  name="name"
									placeholder="Name " value="<%=DataUtility.getStringData(bean.getName())%>" > 
									<font  color="red"><%=ServletUtility.getErrorMessage("name", request)%></font>
							</div>
							
							<%
						
							HashMap map = new HashMap();
							map.put("Boys", "Boys");
							map.put("Girls", "Girls");
							%>
							
							<div class="form-group">
								<%=HTMLUtility.getList("type",String.valueOf(bean.getType()), map)%> 
									<font  color="red"><%=ServletUtility.getErrorMessage("type", request)%></font>
							</div>
							
							
							<div class="form-group">
								<input type="text" class="form-control"  name="contact"
									placeholder="Contact No." value="<%=DataUtility.getStringData(bean.getContact())%>" > 
									<font  color="red"><%=ServletUtility.getErrorMessage("contact", request)%></font>
							</div>
							
							<div class="form-group">
								<input type="text" class="form-control"  name="fee"
									placeholder="Fee" value="<%=DataUtility.getStringData(bean.getFee())%>" > 
									<font  color="red"><%=ServletUtility.getErrorMessage("fee", request)%></font>
							</div>
							
							
							
							<div class="form-group">
                   				 <textarea class="form-control" type="textarea" name="address" placeholder="Address"  rows="3"><%=DataUtility.getStringData(bean.getAddress())%></textarea>
                                           <font  color="red"><%=ServletUtility.getErrorMessage("address", request)%></font>
                  			  </div>
                  			  	<div class="form-group">
                   				 <textarea class="form-control" type="textarea" name="description" placeholder="Description"  rows="3"><%=DataUtility.getStringData(bean.getDescription())%></textarea>
                                           <font  color="red"><%=ServletUtility.getErrorMessage("description", request)%></font>
                  			  </div>
                  			  
							
        					<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="<%=HostelCtl.OP_SAVE	%>">&nbsp;or&nbsp;
								<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="<%=HostelCtl.OP_RESET%>">
        </form>
    </div>
</div>
</div> </div> <!--feedback-->
<br>

		<%@ include file="Footer.jsp"%>
</body>
</html>