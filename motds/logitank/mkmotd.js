
var color = function(n) {
  return '\033[38;5;' + n + 'm';
}

var fs = require('fs'),
  lines = fs.readFileSync('raw.txt').toString().split('\n'),
  clear = '\033[00m',
  //colors = [ 213, 207, 201, 200, 199, 198, 197, 160, 88, 88 ];
  colors = [ 219, 207, 200, 199, 198, 197, 196, 160, 160, 160 ];

for(var i=0; i<lines.length; i++) {
  var line = lines[i];
  console.log( color(colors[i]) + line + clear );
}

