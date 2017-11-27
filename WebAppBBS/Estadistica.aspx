<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estadistica.aspx.cs" Inherits="WebAppBBS.Estadistica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta http-equiv="refresh" content="120" />
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>

    <script src="https://code.highcharts.com/modules/series-label.js"></script>

    <!-- Additional files for the Highslide popup effect -->
    <script src="https://www.highcharts.com/media/com_demo/js/highslide-full.min.js"></script>
    <br />
    <br />
    <br />
    <div class="container">
        <h2><strong>Estadisticas</strong></h2>
        <div class="row">
            <div class="col-md-6">
                <div id="obs"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('obs', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Nombre del observador',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Observador.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
            <div class="col-md-6">
                <div id="colaborador" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('colaborador', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Nombre del Colaborador comprometido',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Colaborador.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
        </div>
        <%--<div class="row">
            <div class="col-md-6">
                <div id="obsPuesto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('obsPuesto', {
                        colors: ['#f45b5b', '#8085e9', '#8d4654', '#7798BF', '#aaeeee',
                                '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Puesto Observador',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                { name: 'IE', y: 56.33 },
                                {
                                    name: 'Chrome',
                                    y: 24.03,
                                    sliced: true,
                                    selected: true
                                },
                                { name: 'Firefox', y: 10.38 },
                                { name: 'Safari', y: 4.77 },
                                { name: 'Opera', y: 0.91 },
                                { name: 'Other', y: 0.2 }
                            ]
                        }]
                    });
                </script>
            </div>
            <div class="col-md-6">
                <div id="colaboradorPuesto" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('colaboradorPuesto', {
                        colors: ['#f45b5b', '#8085e9', '#8d4654', '#7798BF', '#aaeeee',
                                '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Puesto Colaborador',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                { name: 'IE', y: 56.33 },
                                {
                                    name: 'Chrome',
                                    y: 24.03,
                                    sliced: true,
                                    selected: true
                                },
                                { name: 'Firefox', y: 10.38 },
                                { name: 'Safari', y: 4.77 },
                                { name: 'Opera', y: 0.91 },
                                { name: 'Other', y: 0.2 }
                            ]
                        }]
                    });
                </script>
            </div>
        </div>--%>
        <hr style="border-color:black;" />
        <br />
        <div class="row">
            <div class="col-md-6">
                <div id="cargoTurno" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('cargoTurno', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Responsable a cargo del turno',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Responsable.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
            <div class="col-md-6">
                <div id="Acto" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('Acto', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Acto Inseguro',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Acto.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
        </div>
        <hr style="border-color:black;" />
        <br />
        <div class="row">
            <div class="col-md-6">
                <div id="acto1" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('acto1', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'MHE',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Regla1.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
            <div class="col-md-6">
                <div id="acto2" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('acto2', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Manejo de Materiales',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Regla4.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
        </div>
        <hr style="border-color:black;" />
        <br />
        <div class="row">
            <div class="col-md-6">
                <div id="acto3" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('acto3', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'EPP',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Regla3.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
            <div class="col-md-6">
                <div id="acto4" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                <script type="text/javascript">
                    // Radialize the colors
                    Highcharts.setOptions({
                        colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                            return {
                                radialGradient: {
                                    cx: 0.5,
                                    cy: 0.3,
                                    r: 0.7
                                },
                                stops: [
                                    [0, color],
                                    [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                                ]
                            };
                        })
                    });

                    // Build the chart
                    Highcharts.chart('acto4', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: 'Enrampe Seguro',
                            style: {
                                color: 'black',
                                fontSize: '16px',
                                fontWeight: 'bold'
                            }
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                    style: {
                                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                    },
                                    connectorColor: 'silver'
                                }
                            }
                        },
                        // Highstock specific
                        navigator: {
                            xAxis: {
                                gridLineColor: '#D0D0D8'
                            }
                        },
                        rangeSelector: {
                            buttonTheme: {
                                fill: 'white',
                                stroke: '#C0C0C8',
                                'stroke-width': 1,
                                states: {
                                    select: {
                                        fill: '#D0D0D8'
                                    }
                                }
                            }
                        },
                        scrollbar: {
                            trackBorderColor: '#C0C0C8'
                        },
                        series: [{
                            name: 'Brands',
                            data: [
                                <% Response.Write(LogicaNegocio.variables.Regla2.ToString()); %>
                            ]
                        }]
                    });
                </script>
            </div>
        </div>
        <hr style="border-color:black;" />
        <br />
    </div>


</asp:Content>
