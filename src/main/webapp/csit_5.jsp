<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* CSS for styling the link cards and container */
       

        .card-container {
            display: flex;
            flex-wrap: wrap;
            width: 80%;/* 80% of the screen width */
            justify-content: space-between;
            margin: 20px;
            margin-left: 120px;
        }

        .card {
            flex: 0 0 calc(40% - 20px); /* Two cards in a row with spacing, 40% width */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            height: 100px;
        }

        .card a {
            text-decoration: none;
            color: #333;
        }

        .card:hover {
            background-color: #f4f4f4;
        }
        p{
        font-size: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="header.html"/>
    <!-- HTML for the link cards -->
    <div class="card-container">
        <div class="card">
            <a href="./csit_5_DAA.jsp?name=DAA">
           
                <h2>Data Analysis and Algorithm</h2>
               <p>Click Here!</p>
            </a>
        </div>
        <div class="card">
            <a href="./csit_5_DAA.jsp?name=Java">
            
                <h2>System Analysis and Design</h2>
                <p>Click Here!</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.net">
                <h2>Image Processing</h2>
                <p>Click Here!</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.info">
                <h2>Cryptography</h2>
               <p>Click Here!</p>
            </a>
        </div>
        <div class="card">
            <a href="https://example.edu">
                <h2>Web Technology</h2>
               <p>Click Here!</p>
            </a>
        </div>
         <div class="card">
            <a href="https://example.edu">
                <h2>Simulation and Modeling</h2>
               <p>Click Here!</p>
            </a>
        </div>
    </div>
    <jsp:include page="footer.html"/>
</body>
</html>
