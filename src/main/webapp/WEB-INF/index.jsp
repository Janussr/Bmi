<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Forside
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">


                <h2>Bmi beregner</h2>


                <form method="post" action="${pageContext.request.contextPath}/fc/bmiresult">
                    <div class="form-group">
                        <label for="height"> højde i cm: </label>
                        <input id="height" name="height" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="weight"> vægt i kg: </label>
                        <input id="weight" name="weight" type="text" class="form-control"/><br/>
                    </div>


                    <input type="radio" id="male" name="gender" value="male">
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label><br><br>


                    <label for="sport">Din primær idræt:</label> <br>
                    <select name="sport" id="sport" class="form-control">
                        <option value="1">Fodbold</option>
                        <option value="2">Gymnastik</option>
                        <option value="3">Yoga</option>
                        <option value="4">Badminton</option>
                    </select>
                    <br>

                    <input type="checkbox" id="hobby1" name="hobby" value="1">
                    <label for="hobby1"> Jeg går op i sund kost</label><br>
                    <input type="checkbox" id="hobby2" name="hobby" value="2">
                    <label for="hobby2"> Jeg har et sommerhus</label><br>
                    <input type="checkbox" id="hobby3" name="hobby" value="3">
                    <label for="hobby3"> Jeg har et kæledyr</label><br>

                    <c:if test="${requestScope.error != null}">
                        <p style="color:red;">
                                ${requestScope.error}
                        </p>
                    </c:if>

                    <button type="submit" class="btn btn-primary">Beregn BMI</button>
                </form>


            </div>

            <div class="col-sm-4"></div>
        </div>


        <div>

            <c:if test="${sessionScope.role == 'employee' }">
            <p style="font-size: larger">This is what you can do,
                since your are logged in as an employee</p>
            <p><a href="fc/employeepage">Employee Page</a>
                </c:if>

                <c:if test="${sessionScope.role == 'customer' }">
            <p style="font-size: larger">This is what you can do, since your
                are logged in as a customer</p>
            <p><a href="fc/customerpage">Customer Page</a>
                </c:if>

        </div>

    </jsp:body>
</t:genericpage>