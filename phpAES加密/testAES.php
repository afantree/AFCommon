<?php
/**
 * 
 * @authors Your Name you@example.org
 * @date    2015-07-29 15:28:12
 * @version $Id$
 */

$content = "中华人民共和国万岁";
$srcdata = $content;
$block_size = mcrypt_get_block_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC); 
echo '$block_size = '.$block_size."\n";
$padding_char = $block_size - (strlen($content) % $block_size); 

$srcdata .= str_repeat(chr($padding_char),$padding_char); 
$data = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, "1234567890123456", $srcdata, MCRYPT_MODE_CBC, "0102030405060708");
echo base64_encode($data);
echo "\n";
