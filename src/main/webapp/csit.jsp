<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String sem=request.getParameter("name");


%>
<%=sem %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* CSS for styling the card grid */
        .card-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 4 columns */
            gap: 20px;
            margin: 35px; /* Gap between cards */
        }

        .card {
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .card a {
            text-decoration: none;
            color: #333;
        }

        .card:hover {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
    <!-- HTML for the card grid -->
    <div class="card-container">
        <div class="card">
            <a href="./">
                <h2>Semester 1</h2>
                <p>This is card 1. Click to visit example.com.</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.org">
                <h2>Semester 2</h2>
                <p>This is card 2. Click to visit example.org.</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.net">
                <h2>Semester 3</h2>
                <p>This is card 3. Click to visit example.net.</p>
            </a>
        </div>
        <div class="card">
            <a href=>
                <h2>Semester 4</h2>
                <p>This is card 4. Click to visit example.info.</p>
            </a>
        </div>
        <div class="card">
            <a href="./csit_5.jsp">
                <h2>Semester 5</h2>
                <p>This is card 5. Click to visit example.edu.</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.gov">
                <h2>Semester 6</h2>
                <p>This is card 6. Click to visit example.gov.</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.biz">
                <h2>Semester 7</h2>
                <p>This is card 7. Click to visit example.biz.</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.co">
                <h2>Semester 8</h2>
                <p>This is card 8. Click to visit example.co.</p>
            </a>
        </div>
    </div>
    <jsp:include page="footer.html"></jsp:include>
</body>
</html>
