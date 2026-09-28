$out_dir = '.';
$aux_dir = 'build';
$ENV{'TEXINPUTS'} = '../template/tex//:../template/assets//:' . ($ENV{'TEXINPUTS'} // '');
