import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafico extends StatefulWidget {
  const Grafico({super.key});

  @override
  State<Grafico> createState() => _GraficoState();
}

class _GraficoState extends State<Grafico> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('John', 10),
      ChartData('Parker', 11),
      ChartData('David', 9),
      ChartData('Peter', 10),
      ChartData('Brit', 10),
      ChartData('ind', 30),
      ChartData('knj', 41),
      ChartData('uhj', 3),
      ChartData('eokj', 50),
      ChartData('ughij', 40)
    ];
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    title: ChartTitle(
                      text: "Dividas",
                    ),
                    onDataLabelRender: (dataLabelArgs) => dataLabelArgs.color,
                    onAxisLabelTapped: (axisLabelTapArgs) =>
                        axisLabelTapArgs.text,
                    selectionGesture: ActivationMode.singleTap,
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries<ChartData, String>>[
          // Renders column chart
          ColumnSeries<ChartData, String>(
            yAxisName: r"R$",
            xAxisName: "Dividas",
            // pointColorMapper: (datum, index) => ,
            // trackColor: Colors.red,
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.nomeDaDivida,
            yValueMapper: (ChartData data, _) => data.valorDaDivida,
            width: 0.3,
            spacing: 0,
          )
        ]))));
  }
}

class ChartData {
  ChartData(this.nomeDaDivida, this.valorDaDivida);
  final String nomeDaDivida;
  final double valorDaDivida;
}
