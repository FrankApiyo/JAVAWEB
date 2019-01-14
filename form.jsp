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
        </style>
    </head>
    <body>
        <h1>Fill in details</h1>
        <div class="bord">
            <form action="submit.html" method="POST">
                <table border="0" width="5" cellspacing="5" cellpadding="5">
                    <tr>
                        <td align="right" style="width:200px">Enter amount of feed used for all cows</td>
                        <td ><input type="text" name="feeds"/></td>
                    </tr>
                    <tr>
                        <td align="right">Enter cows on heat</td>
                        <td><input type="text" name="heat"/></td>
                    </tr>
                    <tr>
                        <td align="right">Enter cows with mastitis</td>
                        <td><input type="text" name="mastitis"/></td>
                    </tr>
                    <tr>
                        <td align="right">Enter litres of milk discarded due to mastitis</td>
                        <td><input type="text" name="feeds"/></td>
                    </tr>
                    <tr>
                        <td align="right">Enter litres of milk produced</td>
                        <td><input type="text" name="dis_milk"/></td>
                    </tr>
                    <tr>
                        <td align="right">Remarks</td>
                        <td><input type="text" name="remarks"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </table>

            </form>
        </div>
    </body>
</html>
