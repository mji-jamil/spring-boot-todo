<%@include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <h1>Enter Todo Details: </h1>
    <form:form method="post" modelAttribute="todo">
        <fieldset class="mb-3">
            <form:label path="description">Description: </form:label>
            <form:input type="text" path="description" name="description" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>

        <fieldset>
            <form:label path="targetDate">Target Date: </form:label>
            <form:input type="text" path="targetDate" name="description" required="required"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>
        <form:input path="id" type="hidden"/>
        <form:input path="done" type="hidden"/>
        <input type="submit" class="btn btn-success"/>
    </form:form>
    <%--    <a href="add-todo" class="btn btn-success">Add Todo</a>--%>
</div>

<%@include file="common/footer.jspf"%>
<script type="text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd',
        startDate: '-3d'
    });
</script>
