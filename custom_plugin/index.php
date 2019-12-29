<?php
/*
Plugin Name: Custom Plugin
Plugin URI: https://pedanticorderliness.com
description: A custom plugin
Version: 0.1
Author: Ryan Olds
Author URI: https://pedanticorderliness.com
License: MIT
*/

add_action( 'the_content', 'my_thank_you_text' );

function my_thank_you_text ( $content ) {
    return $content .= '<p>Thank you for reading!!!!1</p>';
}
?>
