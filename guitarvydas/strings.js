var strtable = [];

var transpiler = require ('./transpiler.js');

var factstr = transpiler.transpile ('_factbase-details.pl', 'emitCollectValueStrings.ohm', 'emitCollectValueStrings.glue', 'collect value strings');

console.log (factstr);
