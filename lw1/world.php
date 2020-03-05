<?php
  $array = array('Artem', 'Kirill', 'Ginger', 'Ilena');
  foreach($array as &kaka) {
    echo &kaka.' ';
  }
?>

