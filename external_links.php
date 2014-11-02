<?php
/**
 * Default script.
 */

/**
 * Get all required libraries.
 */
require_once 'libraries/common.inc.php';

$response = GG_Response::getInstance();
$header = $response->getHeader();
$header->setTitle('Home');
$html_output = '';

$html_output .= '<div id="cy">';

$place = $_GET['source'];
$file=file_get_contents("http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=select+%3Flink+where+%0D%0A{%0D%0A+%3Chttp%3A%2F%2Fdbpedia.org%2Fresource%2F".$place."%3E+%0D%0A+%3Chttp%3A%2F%2Fdbpedia.org%2Fontology%2FwikiPageExternalLink%3E+%0D%0A+%3Flink%0D%0A}+LIMIT+100&format=text%2Fxml&timeout=30000&debug=on");

$xml = explode('<uri>',$file);

$html_output .= "<div style = 'margin : 0 auto; width : 40%;  padding-top: 2em; color: crimson;'>External Links : </div><ul style = 'margin : 0 auto; width : 40%;'>";

for($i=0;$i<=10;$i++)
{
	$url=explode('</uri>',$xml[$i]);
	$html_output .=  "<li><a style='font-family: Existence; color: white;' href = '" . $url[0] . "'>" . $url[0] . "</a></li>" ;
}

$html_output .= "</ul>";		
$html_output .= "</div>";

$response->addHTML($html_output);
$response->response();
?>