<?php
/**
 * Default script.
 */

/**
 * Get all required libraries.
 */
require_once 'libraries/common.inc.php';

if (isset($_REQUEST['show_overlay'])) {
    $sql_query = 'SELECT html FROM entity_information WHERE source = \'' . $_REQUEST['src'] . '\' AND destination = \'' . $_REQUEST['dst_node'] . '\'';
    $result = $GLOBALS['dbi']->executeQuery($sql_query, array());
    if ($result->rowCount() == 0) {
        echo '<div>Sorry, no further data available.</div>';
    } else {
        $row = $result->fetch();
        echo $row['html'];
    }
    exit;
}

if (isset($_REQUEST['save_review'])) {
    $sql_query = 'INSERT INTO social(`name`, `source`, `review`) VALUES (:name, :source, :review)';
    $result = $GLOBALS['dbi']->executeQuery($sql_query, array(':name' => $_REQUEST['name'], ':source' => $source, ':review' => $_REQUEST['review']));
    // $connect=mysql_connect("localhost","root","logMein");
    // $select=mysql_select_db("GeoGraphs",$connect);

    // $query="INSERT INTO social(`name`, `source`, `review`) values (kartik,kartik,kartik)";
    // $vertex_list1=mysql_execute($query);
    
}

$response = GG_Response::getInstance();
$header = $response->getHeader();
$header->setTitle('Home');
$html_output = '';

$html_output .= '<div id="cy">';

if (isset($_REQUEST['source']) && isset($_REQUEST['type'])) {
    $html_output .= "<script>
        $(document).ready(function () {
        var cy = cytoscape({
            container: document.getElementById('cy'),

            style: cytoscape.stylesheet()
            .selector('node')
              .css({
                'content': 'data(title)',
                'background-color': '#6272A3',
                'color': '#A3567E',
                'width': 40,
                'height': 40,
                'cursor': 'pointer'
              })
            .selector('edge')
              .css({
                'target-arrow-shape': 'triangle',
                'line-color': '#A3567E',
                'target-arrow-color': '#A3567E',
                'width': 6

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

            elements: { ";
    $source = $_GET['source'];
    $type = $_GET['type'];

    $connect=mysql_connect("localhost","root","root");
    $select=mysql_select_db("GeoGraphs",$connect);

    //$source = 'a';

    $query="SELECT destination FROM edge_list WHERE lower(source) = " . '\''.$source.'\'' . " AND type = '" . $type . "'";
    $vertex_list=mysql_query($query);

    $string = "nodes : [";

    $string .= "{ data: { id: '". $source. "', title: '". $source . "' } },";

    //{ data: { id: 'course', title: 'Engineering Mathematics' } },

    while($rows=mysql_fetch_array($vertex_list))
    {
        //echo $rows['destination']."<br>";
        $node = $rows['destination'];
        $line = "{ data: { id: '". $node. "', title: '". $node . "' } },";
        $string .= $line;
    }
    $string .= '], edges: [';
    $query="SELECT source,destination FROM edge_list WHERE lower(source) = " . '\''.$source.'\''. "AND type = '" . $type . "'";

    $vertex_list=mysql_query($query);

    //{ data: { id: 'ae', weight: 2, source: 'a', target: 'e' } },

    while($rows=mysql_fetch_array($vertex_list))
    {
        //echo $rows['destination']."<br>";
        $source = $rows['source'];
        $destination = $rows['destination'];
        $line = "{ data: { id: '". $source . $destination . "', source: '". $source . "', target: '". $destination . "' } },";
        $string .= $line;
    }
    $string .= "]}, layout: {
        name: 'concentric',
        fit: false,
        directed: true,
        roots: '{$source}',
        padding: 5,
        minNodeSpacing: 80
      }
        }); cy.elements('node').on('tap', function (evt) {
        handle_click(evt);
    }); }); ";
    if ($type == 'information') {
        $string .= ' var show_overlay = true; ';
    } else {
        $string .= ' var show_overlay = false; ';
    }
    $string .= " var source = '{$source}'; var type = '{$type}'; </script>";
    $html_output .= $string;

    $html_output .= '<form class="check_in" method="POST"><input type="hidden" name="save_review" value="1">';

    $sql_query = 'SELECT * FROM social WHERE source = \'' . $source . '\'';
    $result = $GLOBALS['dbi']->executeQuery($sql_query, array());

    $html_output .= '<div><textarea name="review" placeholder="Add a review"></textarea></div>'
        . '<div><input type="text" name="name" placeholder="Enter Your Name"></div>'
        . '<div><button>Submit</button></div>';
    if ($result->rowCount() > 0) {
        $html_output .= '<div style="font-weight: bolder; color: #c0151f">What others are saying about ' . $source . '</div>'
            . '<ul class="reviews" style="font-size: 1.2em;">';
        while ($row = $result->fetch()) {
            $html_output .= '<li><i>' . $row . '</i> says ' .$row['review'] . '</li>';
        }
        $html_output .= '</ul>';
    }

    $html_output .= '<a href="external_links.php?source=' .$source . '">External Links: </a>' . '</form>' ;
} else {
    $html_output .= '<form method="GET" id="search_form">'
        . '<input type="hidden" name="type" value="explore">'
        . '<input type="text" name="source">'
        . '<button>Search</button>'
        . '</form></div>';
}

$response->addHTML($html_output);
$response->response();
?>