#!/usr/bin/env php
<?php

function gce($n, $m) {
    if ($n == 0) {
      return $m;
    } elseif ($n > $m) {
      return gce($m, $n);
    } else {
      return gce($m % $n, $n);
    }
}

if (count($argv) < 3 || !ctype_digit($argv[1]) || !ctype_digit($argv[2])) {
    echo "Usage: ${argv[0]} num1 num2", PHP_EOL;
    return 1;
}

echo gce($argv[1], $argv[2]), PHP_EOL;
