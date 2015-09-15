LessThanStream = require './src/nanocyte-stream-less-than'


lessThan = new LessThanStream { left: 3, right: 5 }

process.stdin.pipe(lessThan).pipe(process.stdout)
