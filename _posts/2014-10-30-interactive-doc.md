---
layout: post
title: "ggvis in an interactive document"
---



A scatter plot with tooltips


{% highlight r %}
# Given data item, return tooltip text
all_values <- function(x) {
  if(is.null(x)) return(NULL)
  paste0(names(x), ": ", format(x), collapse = "<br />")
}

cocaine %>%
  ggvis(x = ~weight, y = ~price) %>%
  layer_points(size = ~potency, opacity := 0.2) %>%
  add_tooltip(all_values, "hover")
{% endhighlight %}



{% highlight text %}
## Warning: Can't output dynamic/interactive ggvis plots in a knitr document.
## Generating a static (non-dynamic, non-interactive) version of the plot.
{% endhighlight %}

<div id="plot_id702921086-container" class="ggvis-output-container">
<div id="plot_id702921086" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id702921086_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id702921086" data-renderer="svg">SVG</a>
 | 
<a id="plot_id702921086_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id702921086" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id702921086_download" class="ggvis-download" data-plot-id="plot_id702921086">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id702921086_spec = {
    "data": [
        {
            "name": "cocaine0",
            "format": {
                "type": "csv",
                "parse": {
                    "weight": "number",
                    "price": "number",
                    "potency": "number"
                }
            },
            "values": "\"weight\",\"price\",\"potency\"\n99,2500,33\n2,200,71\n1,50,83\n5,300,56\n4,300,19\n39,1000,28\n2,300,47\n1,100,37\n150,3000,12\n9,400,87\n7,500,93\n28,1200,55\n2,500,83\n3,160,67\n1,160,78\n23,1000,66\n3,230,56\n2,300,83\n3,300,90\n6,650,77\n7,250,31\n3,250,93\n2,100,56\n24,350,43\n1,40,94\n29,900,77\n2,200,84\n1,100,47\n60,1700,44\n14,450,32\n1,150,91\n49,1400,55\n23,550,72\n125,3200,30\n3,100,63\n1,100,75\n50,1300,82\n6,200,55\n2,200,45\n26,1100,69\n54,1500,37\n19,560,54\n1,40,84\n10,300,44\n59,2400,41\n3,300,74\n140,2800,58\n2,300,70\n1,200,40\n41,1200,52\n4,200,78\n3,150,66\n50,1500,55\n1,80,84\n1,100,64\n39,1600,44\n53,1500,57\n22,350,41\n1,60,83\n2,100,80\n1,200,67\n1,40,89\n6,450,61\n27,950,68\n62,1500,42\n84,2500,43\n56,1000,57\n6,500,72\n1,100,66\n8,220,42\n10,700,71\n10,300,37\n4,150,90\n81,2400,67\n1,100,31\n28,900,55\n53,1800,52\n27,780,52\n1,100,82\n61,1800,74\n86,1800,79\n28,950,46\n5,320,77\n30,960,76\n14,920,68\n27,1100,46\n1,150,44\n8,800,55\n2,150,48\n139,3000,6\n3,150,73\n1,100,78\n12,400,65\n52,1200,75\n24,770,37\n9,500,57\n61,2400,37\n39,1800,34\n6,400,60\n54,1500,30\n8,550,85\n15,700,70\n5,350,89\n10,250,81\n6,500,81\n44,1500,82\n1,100,91\n81,1500,76\n52,1600,49\n1,200,73\n13,500,54\n1,80,81\n13,800,84\n6,300,40\n21,800,40\n7,250,72\n1,75,30\n38,1200,59\n41,1000,74\n4,350,53\n1,50,61\n2,200,92\n53,1500,43\n57,2100,56\n124,2600,44\n4,500,38\n3,130,81\n1,160,79\n1,60,65\n27,700,33\n3,200,83\n2,100,88\n29,1100,50\n27,1100,85\n45,2000,59\n4,450,80\n1,400,64\n32,900,47\n5,250,59\n12,900,78\n10,500,69\n185,4600,76\n1,650,84\n55,1600,34\n1,150,60\n16,600,52\n56,1400,37\n13,800,77\n13,250,73\n1,80,26\n22,350,40\n3,130,34\n1,60,80\n13,500,79\n48,1300,58\n4,280,42\n29,1000,71\n1,180,90\n5,550,66\n124,2600,61\n14,450,91\n1,50,88\n21,1000,49\n2,300,77\n12,500,76\n60,1700,71\n2,80,44\n7,350,63\n14,650,45\n13,450,39\n4,600,69\n10,300,33\n30,1100,55\n37,1200,31\n12,270,80\n3,160,70\n63,1400,63\n15,500,21\n2,100,79\n27,580,68\n14,520,36\n23,850,39\n87,3000,49\n3,120,44\n40,1500,48\n7,290,20\n6,800,83\n30,1000,39\n25,640,81\n75,5100,60\n27,800,46\n21,550,68\n1,200,75\n1,160,84\n10,550,47\n1,100,89\n103,3800,64\n61,1400,43\n41,750,56\n7,230,57\n1,120,86\n22,1200,39\n55,1500,72\n59,1700,77\n4,400,82\n11,1000,74\n60,2000,64\n12,350,77\n56,1500,45\n123,4000,40\n14,450,50\n7,230,80\n13,500,37\n1,60,87\n1,100,88\n2,300,87\n10,650,66\n4,200,72\n1,60,76\n1,140,88\n240,4400,46\n12,600,42\n8,230,53\n1,80,87\n27,980,48\n27,800,36\n3,150,57\n60,2000,56\n6,200,48\n1,100,69\n1,300,73\n55,1600,49\n93,1900,53\n54,2200,69\n12,2500,81\n1,50,90\n1,50,87\n2,50,87\n1,180,55\n28,560,56\n50,1600,40\n2,100,70\n56,1700,50\n27,1100,30\n1,80,83\n49,1300,71\n3,300,64\n5,240,62\n27,800,70\n19,600,66\n6,300,37\n13,500,63\n3,200,86\n3,300,65\n1,200,80\n1,100,46\n26,750,46\n1,100,93\n62,1300,21\n13,550,54\n3,200,56\n1,60,90\n43,2300,28\n7,300,70\n27,1100,72\n58,1900,41\n21,710,77\n3,800,89\n2,200,88\n13,500,59\n6,300,80\n1,100,75\n61,2100,46\n20,1000,90\n2,200,37\n27,800,63\n4,350,75\n3,200,85\n111,3400,39\n7,600,77\n10,550,74\n1,80,64\n11,600,39\n1,100,75\n1,250,85\n11,450,67\n50,1100,46\n2,200,50\n55,1500,58\n3,240,67\n26,1100,47\n56,1700,30\n3,300,69\n66,2100,29\n41,1200,22\n8,700,61\n55,1700,59\n62,1500,60\n3,190,80\n7,430,78\n13,450,58\n6,500,84\n1,150,59\n18,500,41\n21,580,78\n10,400,71\n27,1000,73\n22,500,46\n46,1200,54\n12,400,67\n107,2800,66\n28,800,61\n28,800,58\n27,900,54\n2,150,65\n37,1100,64\n6,300,61\n36,1400,54\n2,270,85\n14,450,44\n3,250,47\n23,600,70\n13,650,43\n1,250,74\n1,80,90\n3,500,64\n124,2800,71\n1,120,46\n52,2200,31\n15,300,38\n1,60,64\n17,500,32\n2,200,73\n1,40,76\n27,830,13\n14,800,76\n25,900,57\n7,380,70\n4,280,57\n62,1900,43\n69,1800,68\n17,1200,58\n118,2900,66\n56,1100,75\n55,2400,38\n9,500,72\n2,160,56\n56,1200,61\n3,120,61\n4,300,61\n5,400,73\n85,2100,49\n4,430,56\n83,2000,71\n28,1400,57\n55,1700,47\n1,200,77\n27,1800,60\n6,300,27\n27,1000,62\n1,100,30\n19,750,42\n121,3600,43\n14,550,56\n20,700,61\n12,450,62\n2,400,47\n20,1000,83\n3,300,75\n34,1200,55\n48,1400,70\n3,290,82\n87,1900,3\n29,900,65\n25,900,45\n27,1000,65\n6,200,57\n24,800,73\n217,5000,77\n8,1000,53\n81,2400,53\n8,650,89\n74,2300,37\n12,500,58\n10,320,48\n20,350,44\n62,1100,61\n1,60,87\n6,300,16\n1,40,72\n13,380,55\n3,130,80\n5,100,22\n8,300,37\n39,2300,60\n26,900,53\n51,900,69\n19,970,46\n6,500,56\n14,500,36\n1,120,62\n24,530,85\n1,80,91\n11,400,80\n4,400,51\n3,200,67\n18,700,66\n18,900,56\n1,50,54\n3,120,38\n27,1000,38\n10,650,69\n42,1100,46\n27,1000,46\n3,200,75\n24,1000,54\n1,150,64\n55,1900,61\n3,250,54\n1,100,59\n13,280,78\n12,400,76\n1,60,59\n3,200,89\n28,900,44\n34,1400,51\n1,40,75\n3,130,52\n22,700,43\n1,180,92\n26,900,49\n19,620,60\n1,100,79\n12,500,81\n2,200,69\n1,50,62\n8,360,78\n61,1500,33\n18,500,36\n6,500,61\n83,2300,56\n5,500,55\n1,50,83\n1,40,81\n1,100,72\n14,1700,58\n10,250,49\n27,800,66\n1,150,93\n1,130,59\n53,2000,80\n54,1500,62\n18,850,32\n20,900,66\n55,1500,63\n11,800,59\n11,500,37\n25,1300,48\n19,760,64\n26,800,66\n3,80,79\n17,500,73\n55,1200,39\n13,520,67\n1,40,72\n66,2100,64\n1,80,75\n65,1400,72\n18,450,59\n55,900,75\n32,1300,68\n13,400,39\n8,200,36\n2,260,73\n25,600,45\n10,300,80\n3,200,76\n61,2200,52\n5,300,60\n2,60,79\n123,4000,3\n3,250,37\n27,750,82\n9,300,66\n3,230,81\n2,170,58\n51,1800,37\n24,850,93\n1,100,48\n26,600,61\n1,60,77\n24,1200,37\n1,40,77\n1,160,54\n55,3000,42\n12,500,80\n1,100,84\n14,500,70\n2,150,50\n54,1200,69"
        },
        {
            "name": "scale/size",
            "format": {
                "type": "csv",
                "parse": {
                    "domain": "number"
                }
            },
            "values": "\"domain\"\n3\n94"
        },
        {
            "name": "scale/x",
            "format": {
                "type": "csv",
                "parse": {
                    "domain": "number"
                }
            },
            "values": "\"domain\"\n-10.95\n251.95"
        },
        {
            "name": "scale/y",
            "format": {
                "type": "csv",
                "parse": {
                    "domain": "number"
                }
            },
            "values": "\"domain\"\n-213\n5353"
        }
    ],
    "scales": [
        {
            "name": "size",
            "domain": {
                "data": "scale/size",
                "field": "data.domain"
            },
            "zero": false,
            "nice": false,
            "clamp": false,
            "range": [
                20,
                100
            ]
        },
        {
            "name": "x",
            "domain": {
                "data": "scale/x",
                "field": "data.domain"
            },
            "zero": false,
            "nice": false,
            "clamp": false,
            "range": "width"
        },
        {
            "name": "y",
            "domain": {
                "data": "scale/y",
                "field": "data.domain"
            },
            "zero": false,
            "nice": false,
            "clamp": false,
            "range": "height"
        }
    ],
    "marks": [
        {
            "type": "symbol",
            "properties": {
                "update": {
                    "fill": {
                        "value": "#000000"
                    },
                    "x": {
                        "scale": "x",
                        "field": "data.weight"
                    },
                    "y": {
                        "scale": "y",
                        "field": "data.price"
                    },
                    "size": {
                        "scale": "size",
                        "field": "data.potency"
                    },
                    "opacity": {
                        "value": 0.2
                    }
                },
                "ggvis": {
                    "data": {
                        "value": "cocaine0"
                    }
                }
            },
            "from": {
                "data": "cocaine0"
            }
        }
    ],
    "width": 360,
    "height": 288,
    "legends": [
        {
            "orient": "right",
            "size": "size",
            "title": "potency"
        }
    ],
    "axes": [
        {
            "type": "x",
            "scale": "x",
            "orient": "bottom",
            "layer": "back",
            "grid": true,
            "title": "weight"
        },
        {
            "type": "y",
            "scale": "y",
            "orient": "left",
            "layer": "back",
            "grid": true,
            "title": "price"
        }
    ],
    "padding": null,
    "ggvis_opts": {
        "keep_aspect": false,
        "resizable": true,
        "padding": {

        },
        "duration": 250,
        "renderer": "svg",
        "hover_duration": 0,
        "width": 360,
        "height": 288
    },
    "handlers": null
}
;
ggvis.getPlot("plot_id702921086").parseSpec(plot_id702921086_spec);
</script><!--/html_preserve-->


An interactive plot:


{% highlight r %}
faithful %>%
  ggvis(x = ~waiting) %>%
  layer_histograms(fill := "#999999", binwidth = input_slider(min=1, max=20, value=11))
{% endhighlight %}



{% highlight text %}
## Warning: 'binwidth' is deprecated. Please use 'width' instead. (Last used
## in version 0.3.0)
{% endhighlight %}



{% highlight text %}
## Warning: Can't output dynamic/interactive ggvis plots in a knitr document.
## Generating a static (non-dynamic, non-interactive) version of the plot.
{% endhighlight %}

<!--html_preserve--><div id="plot_id965999562-container" class="ggvis-output-container">
<div id="plot_id965999562" class="ggvis-output"></div>
<div class="plot-gear-icon">
<nav class="ggvis-control">
<a class="ggvis-dropdown-toggle" title="Controls" onclick="return false;"></a>
<ul class="ggvis-dropdown">
<li>
Renderer: 
<a id="plot_id965999562_renderer_svg" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id965999562" data-renderer="svg">SVG</a>
 | 
<a id="plot_id965999562_renderer_canvas" class="ggvis-renderer-button" onclick="return false;" data-plot-id="plot_id965999562" data-renderer="canvas">Canvas</a>
</li>
<li>
<a id="plot_id965999562_download" class="ggvis-download" data-plot-id="plot_id965999562">Download</a>
</li>
</ul>
</nav>
</div>
</div>
<script type="text/javascript">
var plot_id965999562_spec = {
    "data": [
        {
            "name": "faithful0/bin1/stack2",
            "format": {
                "type": "csv",
                "parse": {
                    "xmin_": "number",
                    "xmax_": "number",
                    "stack_upr_": "number",
                    "stack_lwr_": "number"
                }
            },
            "values": "\"xmin_\",\"xmax_\",\"stack_upr_\",\"stack_lwr_\"\n38.5,49.5,21,0\n49.5,60.5,62,0\n60.5,71.5,29,0\n71.5,82.5,101,0\n82.5,93.5,57,0\n93.5,104.5,2,0"
        },
        {
            "name": "scale/x",
            "format": {
                "type": "csv",
                "parse": {
                    "domain": "number"
                }
            },
            "values": "\"domain\"\n35.2\n107.8"
        },
        {
            "name": "scale/y",
            "format": {
                "type": "csv",
                "parse": {
                    "domain": "number"
                }
            },
            "values": "\"domain\"\n0\n106.05"
        }
    ],
    "scales": [
        {
            "name": "x",
            "domain": {
                "data": "scale/x",
                "field": "data.domain"
            },
            "zero": false,
            "nice": false,
            "clamp": false,
            "range": "width"
        },
        {
            "name": "y",
            "domain": {
                "data": "scale/y",
                "field": "data.domain"
            },
            "zero": false,
            "nice": false,
            "clamp": false,
            "range": "height"
        }
    ],
    "marks": [
        {
            "type": "rect",
            "properties": {
                "update": {
                    "stroke": {
                        "value": "#000000"
                    },
                    "fill": {
                        "value": "#999999"
                    },
                    "x": {
                        "scale": "x",
                        "field": "data.xmin_"
                    },
                    "x2": {
                        "scale": "x",
                        "field": "data.xmax_"
                    },
                    "y": {
                        "scale": "y",
                        "field": "data.stack_upr_"
                    },
                    "y2": {
                        "scale": "y",
                        "field": "data.stack_lwr_"
                    }
                },
                "ggvis": {
                    "data": {
                        "value": "faithful0/bin1/stack2"
                    }
                }
            },
            "from": {
                "data": "faithful0/bin1/stack2"
            }
        }
    ],
    "width": 432,
    "height": 288,
    "legends": [

    ],
    "axes": [
        {
            "type": "x",
            "scale": "x",
            "orient": "bottom",
            "layer": "back",
            "grid": true,
            "title": "waiting"
        },
        {
            "type": "y",
            "scale": "y",
            "orient": "left",
            "layer": "back",
            "grid": true,
            "title": "count"
        }
    ],
    "padding": null,
    "ggvis_opts": {
        "keep_aspect": false,
        "resizable": true,
        "padding": {

        },
        "duration": 250,
        "renderer": "svg",
        "hover_duration": 0,
        "width": 432,
        "height": 288
    },
    "handlers": null
}
;
ggvis.getPlot("plot_id965999562").parseSpec(plot_id965999562_spec);
</script><!--/html_preserve-->
