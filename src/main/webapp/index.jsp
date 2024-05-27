<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Question with Checkboxes</title>
</head>
<body>
    <h2>Choose Your Preferences</h2>
    <form action="question.jsp" method="post">
        <p>What is your favorite color?</p>
        <input type="checkbox" name="color" value="Red"> Red<br>
        <input type="checkbox" name="color" value="Blue"> Blue<br>
        <input type="submit" value="Submit">
    </form>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String[] colors = request.getParameterValues("color");
            if (colors != null) {
                out.println("<h2>Your Selected Preferences</h2>");
                for (String color : colors) {
                    out.println("<p>You selected: " + color + "</p>");
                }
            } else {
                out.println("<p>No color selected.</p>");
            }
        }
    %>
</body>
</html>
