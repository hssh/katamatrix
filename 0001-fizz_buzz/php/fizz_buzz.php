#!/usr/bin/env php
<?php

foreach (range(1, 100) as $i) {
  if ($i % 15 == 0) echo 'FizzBuzz';
  elseif ($i % 3 == 0) echo 'Fizz';
  elseif ($i % 5 == 0) echo 'Buzz';
  else echo $i;
  echo ' ';
}
