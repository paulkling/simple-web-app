<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head><title></title></head>
  <body>
    <h1>Hello from</h1>
    <p>
      <%
            BufferedReader reader = new BufferedReader(new FileReader("/tomcat/conf/settings.properties"));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
            out.println(sb.toString());
        %>

    </p>
  </body>
</html>