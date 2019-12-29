<?php
/*
Plugin Name: Hello World
Plugin URI: https://pedanticorderliness.com
description: >-
    a hello world plugin
Version: 0.1
Author: Ryan Olds
Author URI: https://pedanticorderliness.com
License: MIT
*/

add_action( 'the_content', 'my_thank_you_text' );

function my_thank_you_text ( $content ) {
    return $content .= '<p>Thank you for reading!</p>';
}
?>
