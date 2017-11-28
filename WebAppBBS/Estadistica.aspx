<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estadistica.aspx.cs" Inherits="WebAppBBS.Estadistica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta http-equiv="refresh" content="120" />
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>

    <script src="https://code.highcharts.com/modules/series-label.js"></script>

                <script src="https://code.highcharts.com/modules/data.js"></script>
                <script src="https://code.highcharts.com/modules/drilldown.js"></script>

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
        <div class="row">
            <div class="col-md-6">
                

                <div id="conta" style="min-width: 310px; max-width: 600px; height: 400px; margin: 0 auto"></div>
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

                    // Create the chart
                    Highcharts.chart('conta', {
                        colors: ['#8B0000', '#F08080', '#DB7093', '#FF8C00', '#FFFF00',
                                '#FFE4B5', '#BDB76B', '#9370DB', '#9400D3', '#483D8B',
                                '#2E8B57', '#32CD32', '#808000', '#008080', '#4682B4',
                                '#B8860B', '#808080', '#2F4F4F'],
                        chart: {
                            type: 'pie'
                        },
                        title: {
                            text: 'Browser market shares. January, 2015 to May, 2015'
                        },
                        subtitle: {
                            text: ''
                        },
                        plotOptions: {
                            series: {
                                dataLabels: {
                                    enabled: true,
                                    format: '{point.name}: {point.y:.1f}%'
                                }
                            }
                        },

                        tooltip: {
                            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
                        },
                        series: [{
                            name: 'Brands',
                            colorByPoint: true,
                            data: [
                                {
                                name: 'IE',
                                y: 56.33,
                                drilldown: 'IE'
                            }, {
                                name: 'Chrome',
                                y: 24.03,
                                drilldown: 'Chrome'
                            }, {
                                name: 'Firefox',
                                y: 10.38,
                                drilldown: 'Firefox'
                            }, {
                                name: 'Safari',
                                y: 4.77,
                                drilldown: 'Safari'
                            }, {
                                name: 'Opera',
                                y: 0.91,
                                drilldown: 'Opera'
                            }, {
                                name: 'Proprietary or Undetectable',
                                y: 0.2,
                                drilldown: null
                            }]
                        }],
                        drilldown: {
                            series: [
                           {
                                name: 'IE',
                                id: 'IE',
                                data: [
                                    ['v11.0', 24.13],
                                    ['v8.0', 17.2],
                                    ['v9.0', 8.11],
                                    ['v10.0', 5.33],
                                    ['v6.0', 1.06],
                                    ['v7.0', 0.5]
                                ]
                            }, {
                                name: 'Chrome',
                                id: 'Chrome',
                                data: [
                                    ['v40.0', 5],
                                    ['v41.0', 4.32],
                                    ['v42.0', 3.68],
                                    ['v39.0', 2.96],
                                    ['v36.0', 2.53],
                                    ['v43.0', 1.45],
                                    ['v31.0', 1.24],
                                    ['v35.0', 0.85],
                                    ['v38.0', 0.6],
                                    ['v32.0', 0.55],
                                    ['v37.0', 0.38],
                                    ['v33.0', 0.19],
                                    ['v34.0', 0.14],
                                    ['v30.0', 0.14]
                                ]
                            }, {
                                name: 'Firefox',
                                id: 'Firefox',
                                data: [
                                    ['v35', 2.76],
                                    ['v36', 2.32],
                                    ['v37', 2.31],
                                    ['v34', 1.27],
                                    ['v38', 1.02],
                                    ['v31', 0.33],
                                    ['v33', 0.22],
                                    ['v32', 0.15]
                                ]
                            }, {
                                name: 'Safari',
                                id: 'Safari',
                                data: [
                                    ['v8.0', 2.56],
                                    ['v7.1', 0.77],
                                    ['v5.1', 0.42],
                                    ['v5.0', 0.3],
                                    ['v6.1', 0.29],
                                    ['v7.0', 0.26],
                                    ['v6.2', 0.17]
                                ]
                            }, {
                                name: 'Opera',
                                id: 'Opera',
                                data: [
                                    ['v12.x', 0.34],
                                    ['v28', 0.24],
                                    ['v27', 0.17],
                                    ['v29', 0.16]
                                ]
                            },]
                        }
                    });
                </script>
            </div>
        </div>
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
