<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['�⵵', '����', '�߶��', '��'],
          ['2018', 30, 50, 20],
          ['2019', 40, 55, 5],
          ['2020', 60, 20, 10],
        ]);

        var options = {
          chart: {
            title: '���� �뷡 ����',
            subtitle: '���� �뷡 ����: 2018-2020�������..',
          },
          bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="barchart_material" style="width: 900px; height: 500px;"></div>
  </body>
</html>
