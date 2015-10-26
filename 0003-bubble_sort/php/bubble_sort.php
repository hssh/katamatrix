#!/usr/bin/env php
<?php

$array = range(1, 10);
shuffle($array);

var_dump($array);

for ($i = count($array); $i > 1; $i--) {
  for ($j = 0; $j < $i - 1; $j++) {
    if ($array[$j] > $array[$j + 1]) {
        $tmp = $array[$j];
        $array[$j] = $array[$j + 1];
        $array[$j + 1] = $tmp;
    }
  }
}

var_dump($array);
