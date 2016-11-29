#!/bin/bash bash autoindex.sh > index.html
INDEX=`du -h * --exclude "index.html" | awk '{print "<tr><td><a href=\"" $2"\">"$2"</a></td><td>"$1"</td></tr>"}'`
     
    
echo "
    <html>
            <head>
            <STYLE type='text/css'>
            body {background-color:#b0c4de;}
            margin:0px;padding:0px;
            width:100%;
            box-shadow: 10px 10px 5px #888888;
            border:1px solid #000000;
            -moz-border-radius-bottomleft:0px;
            -webkit-border-bottom-left-radius:0px;
            border-bottom-left-radius:0px;
     
            -moz-border-radius-bottomright:0px;
            -webkit-border-bottom-right-radius:0px;
            border-bottom-right-radius:0px;
     
            -moz-border-radius-topright:0px;
            -webkit-border-top-right-radius:0px;
            border-top-right-radius:0px;
     
            -moz-border-radius-topleft:0px;
            -webkit-border-top-left-radius:0px;
            border-top-left-radius:0px;
    }.CSSTableGenerator table{
         border-collapse: collapse;
            border-spacing: 0;
            width:100%;
            height:100%;
            margin:0px;padding:0px;
    }.CSSTableGenerator tr:last-child td:last-child {
            -moz-border-radius-bottomright:0px;
            -webkit-border-bottom-right-radius:0px;
            border-bottom-right-radius:0px;
    }
    .CSSTableGenerator table tr:first-child td:first-child {
            -moz-border-radius-topleft:0px;
            -webkit-border-top-left-radius:0px;
            border-top-left-radius:0px;
    }
    .CSSTableGenerator table tr:first-child td:last-child {
            -moz-border-radius-topright:0px;
            -webkit-border-top-right-radius:0px;
            border-top-right-radius:0px;
    }.CSSTableGenerator tr:last-child td:first-child{
            -moz-border-radius-bottomleft:0px;
            -webkit-border-bottom-left-radius:0px;
            border-bottom-left-radius:0px;
    }.CSSTableGenerator tr:hover td{
     
    }
    .CSSTableGenerator tr:nth-child(odd){ background-color:#e5e5e5; }
    .CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
            vertical-align:middle;
     
     
            border:1px solid #000000;
            border-width:0px 1px 1px 0px;
            text-align:left;
            padding:7px;
            font-size:14px;
            font-family:Arial;
            font-weight:normal;
            color:#000000;
    }.CSSTableGenerator tr:last-child td{
            border-width:0px 1px 0px 0px;
    }.CSSTableGenerator tr td:last-child{
            border-width:0px 0px 1px 0px;
    }.CSSTableGenerator tr:last-child td:last-child{
            border-width:0px 0px 0px 0px;
    }
    .CSSTableGenerator tr:first-child td{
            background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);
    		background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
            background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#4c4c4c', endColorstr='#000000');
    		background: -o-linear-gradient(top,#4c4c4c,000000);
     
            background-color:#4c4c4c;
            border:0px solid #000000;
            text-align:center;
            border-width:0px 0px 1px 1px;
            font-size:16px;
            font-family:Arial;
            font-weight:bold;
            color:#ffffff;
    }
    .CSSTableGenerator tr:first-child:hover td{
            background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);
            background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
            background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#4c4c4c', endColorstr='#000000');
    		background: -o-linear-gradient(top,#4c4c4c,000000);
     
            background-color:#4c4c4c;
    }
    .CSSTableGenerator tr:first-child td:first-child{
            border-width:0px 0px 1px 0px;
    }
    .CSSTableGenerator tr:first-child td:last-child{
            border-width:0px 0px 1px 1px;
    }
     </STYLE>
            </head>
     
            <body>
    <div class='CSSTableGenerator' style='width:600px;height:150px;'>
                            <table>
    <tr>
            <td>Fichero</td> <td >  Tamaño  </td>
    </tr>
     
    $INDEX
     
    </table>
                    </div>
            </body>
    </html>"
