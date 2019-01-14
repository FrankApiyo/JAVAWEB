<%-- 
    Document   : index
    Created on : 14-Jan-2019, 12:00:49
    Author     : brianbett
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tatton Farm</title>
        <style>
            div.bord{border-style: solid;}
            div.bord{box-sizing: border-box;}
            form{
                display: flex;
                justify-content: space-between;
            }
            form > div > div{
                display: flex;
                flex-direction: row;
            }
        </style>
    </head>
    <body>
        <h1>Fill in details</h1>
        <div class="bord">
            <form action="Submit.do" method="POST">
                <div>
                    <div>
                        <p>Enter amount of feed used for all cows</p>
                        <p><input type="text" name="feeds"/></p>
                    </div>
                    <div>
                        <p>Enter the number cows on heat</p>
                        <p><input type="text" name="heat"/></p>
                    </div>
                    <div>
                        <p>Enter number cows with mastitis</p>
                        <p><input type="text" name="mastitis"/></p>
                    </div>
                    <div>
                        <p>Enter litres of milk discarded due to mastitis</p>
                        <p><input type="text" name="dis_milk"/></p>
                    </div>
                    <div>
                        <p>Enter litres of milk produced</p>
                        <p><input type="text" name="milk"/></p>
                    </div>
                    <div>
                        <p>Remarks</p>
                        <p><input type="text" name="remarks"/></p>
                    </div>
                    <div>
                        <p></p>
                        <p><input type="submit" value="Submit" /></p>
                    </div>
                <div>

            </form>
        </div>
    </body>
</html>
