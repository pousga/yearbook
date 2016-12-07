<%@ include file="/WEB-INF/jsp/jstlPrefix.jsp" %>

<c:url var="showPerson" value="/actions/person/show" />

<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/yearbook.css" />" />
		<title>List Person</title>
	</head>

	<body>
		<jsp:include page="../view_fragments/header.jsp" />
		<jsp:include page="../view_fragments/navigation.jsp" />
		
		<div id="body_">
			<h2>Liste des personnes de l'annuaire.</h2>
		    <table>
			    <c:forEach items="${people}" var="person">
			        <tr>
				        <td>
				        	<a href="${showPerson}/${person.id}">
				        		<c:out value="${person.firstName}"/> 
				        		<b><c:out value="${person.lastName}" /></b>
				            </a>
				        </td>
			        </tr>
			    </c:forEach>
		    </table>
		</div>
		
		<jsp:include page="../view_fragments/footer.jsp" />
	</body>
</html>