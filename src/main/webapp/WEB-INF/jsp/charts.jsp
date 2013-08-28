<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Application Quality Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"  media="screen" />
    <link href="<c:url value="/resources/css/cerulean.bootstrap.min.css" />" rel="stylesheet"  media="screen" />
    <link href="<c:url value="/resources/css/stickyfooter.css" />" rel="stylesheet"  media="screen" />

    <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/highcharts.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/exporting.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/custom-chart.js" />"></script>

    <script type="text/javascript">
        var contextPath = '<c:out value="${pageContext.request.contextPath}"/>';
        $(document).ready(function() {
            getRemoteDataDrawChart(contextPath + '/linechart1', createNewLineChart('chart1-container'));
            getRemoteDataDrawChart(contextPath + '/linechart2', createNewLineChart('chart2-container'));
            getRemoteDataDrawChart(contextPath + '/linechart3', createNewLineChart('chart3-container'));
        });
    </script>
</head>
<body>
<div id="wrap">
<!-- NAVBAR -->
<!-- Docs master nav -->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <a href="<c:url value='/charts'/>" class="navbar-brand"><small>Highcharts</small></a>
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="nav-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav pull-left">
            </ul>
        </div>
    </div>
</div><br/><br/><br/><br/>

<!-- CONTAINER -->
<div class="container">
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 1</h3>
                    </div>
                    <div id="chart1-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 2</h3>
                    </div>
                    <div id="chart2-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Highchart Chart 3</h3>
                    </div>
                    <div id="chart3-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
                </div>
            </div>
        </div>
    </div>
</div>


</div><!--/CONTAINER -->
<div id="push"></div>
</div><!--/WRAP -->


<!-- Footer
=================================-->
<div id="footer">
    <div class="container">
        <div class="row">
            <p class="text-center"><small>Copyright &copy; 2013 <a href="http://some.link.com">SomeLink Inc.</a> All rights reserve.</small></p>
        </div>

    </div>
</div>

<!-- /Footer
=================================-->

</body>
</html>
