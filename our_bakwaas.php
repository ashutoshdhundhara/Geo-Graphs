<html>
    <head>
        <script src="js/jquery.min.js"></script>
        <script src="js/cytoscape.min.js"></script>
        <script src="js/course1.js"></script>
        <link href="css/reset.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/absolution.css" rel="stylesheet" />
    </head>
    <body>
        <div>
            <table>
                <tr>
                    <td>Search by Topic : &nbsp;&nbsp;</td>
                    <td><input type="text" id="topic">&nbsp;&nbsp;</td>
                    <td><button id="search_btn">Search</button></td>
                </tr>
            </table>
        </div>
        <div id="cy"></div>
    </body>
    <script>
        var cy = cytoscape({
            container: document.getElementById('cy'),

            style: cytoscape.stylesheet()
            .selector('node')
              .css({
                'content': 'data(title)',
                'background-color': '#6272A3',
				'color': '#A3567E'
              })
            .selector('edge')
              .css({
                'target-arrow-shape': 'triangle',
                'width': 5,
                'line-color': '#A3567E',
                'target-arrow-color': '#A3567E'
              })
            .selector('.highlighted')
              .css({
                'background-color': '#61bffc',
                'line-color': '#61bffc',
                'target-arrow-color': '#61bffc',
                'transition-property': 'background-color, line-color, target-arrow-color',
                'transition-duration': '0.5s'
              })
              .selector('node#course')
                .css({
                    'width': 76,
                    'height': 76
                }),

            elements: {
          nodes: [



<?php

error_reporting(E_ERROR|E_PARSE);

$source = $_GET['source'];
$type = $_GET['type'];

$connect=mysql_connect("localhost","root","root");
$select=mysql_select_db("Geo-Graphs",$connect);

//$source = 'a';

$query="SELECT destination FROM edge_list WHERE lower(source) = " . '\''.$source.'\'' . "AND type = '" . $type . "'";

$vertex_list=mysql_query($query);

$string = "";

$string .= "{ data: { id: '". $source. "', title: '". $source . "' } },";

//{ data: { id: 'course', title: 'Engineering Mathematics' } },

while($rows=mysql_fetch_array($vertex_list))
{
	//echo $rows['destination']."<br>";
	$node = $rows['destination'];
	$line = "{ data: { id: '". $node. "', title: '". $node . "' } },";
	$string .= $line;
}

echo $string;
?>


], 

edges: [



<?php

$query="SELECT source,destination FROM edge_list WHERE lower(source) = " . '\''.$source.'\''. "AND type = '" . $type . "'";

$vertex_list=mysql_query($query);

$string = "";

//{ data: { id: 'ae', weight: 2, source: 'a', target: 'e' } },

while($rows=mysql_fetch_array($vertex_list))
{
	//echo $rows['destination']."<br>";
	$source = $rows['source'];
	$destination = $rows['destination'];
	$line = "{ data: { id: '". $source . $destination . "', weight: 2, source: '". $source . "', target: '". $destination . "' } },";
	$string .= $line;
}

echo $string;

?>

          ]
        },
      
      layout: {
        name: 'concentric',
        directed: true,
        roots: '#<?php echo $source; ?>',
        padding: 10,
      }
        });
        
        function highlight_path() {
            var edge_list = [
                'coursea',
                'courseb',
                'bi',
                'ih',
                'hr',
                'ar'
            ];
            var node_list = [
                'course',
                'a',
                'b',
                'i',
                'r',
                'h'
            ];

            for (var i=0; i<edge_list.length; i++) {
                cy.elements('edge#' + edge_list[i]).addClass('highlighted');
            }
            for (var i=0; i<node_list.length; i++) {
                cy.elements('node#' + node_list[i]).addClass('highlighted');
            }
        }
        $('#search_btn').click(function (event) {
            event.preventDefault();
            if ($('#topic').val() != 'Linear Algebra') {
                highlight_path();
            }
        });
    </script>
</html>