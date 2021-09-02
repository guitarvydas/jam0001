//require ('./support');
var atob = require ('atob'); // npm install atob
var pako = require ('pako'); // npm install pako
exports.decodeMxDiagram = (encoded) => {
    var data = atob (encoded);
    var inf = pako.inflateRaw (
	Uint8Array.from (data, c=>c.charCodeAt (0)), {to: 'string'})
    var str = decodeURIComponent (inf);
    return str;
}

exports.expandStyle = (s) => {
    var sx = s
	.replace(/"/g,'')
	.replace (/([^=]+)=([^;]+);/g, '$1="$2" ')
	.replace (/([^;]+);/g,'$1="1" ')
    return sx;
}
exports.strMangle = (s) => {
    // remove HTML junk added by drawio
    return s
    .replace(/&lt;div&gt;/g,'')
    .replace(/&lt;\/div&gt;/g,`\n`)
    .replace(/&amp;nbsp;/g,'')
    .replace(/&amp;gt;/g,'>')
    .replace(/&amp;lt;/g,'<')
    .replace(/&lt;br&gt;/g,`\n`)
    .replace(/&gt;/g,'>')
    .replace(/&lt;/g,'<')
    // convert names to be acceptable to SWIPL
    .replace (/-/g, '__')
    .replace (/ __g /g, ' -g ')
    .replace (/__q/g, '-q');
}

var _scope;
exports.init = (scope) => {
    _scope = scope;
}

function scopeModify (key, val) {
  return _scope.scopeModify (key, val);
}

function scopeAdd (key, val) {
  return _scope.scopeAdd (key, val);
}

function scopeGet (key) {
  return _scope.scopeGet (key);
}


var nameIndexTable = [];
var counter = 1;

exports.resetNames = () => {
    nameIndexTable = [];
    counter = 1;
}

/// generic
function lID (quoteds) {
    var s = stripQuotes (quoteds);
    return s;
}
// exports.longID = (quoteds) => {
//     var s = lID (quoteds);
//     return s;
// }
    
function newID (name, quoteds) {
    var s = lID (quoteds);
    scopeModify (name, s);
    nameIndexTable[s] = counter;
    counter += 1;
    return '';
}

function pushID (name, s) {
    scopeModify (name, lID (s));
    return '';
}

function getID (name) {
    var s = scopeGet (name);
    return refID (s);
}


/// cells
exports.newCellID = (s) => {
    return newID ('cellid', s);
}

exports.pushCellID = (s) => {
    return pushID ('cellid', s);
}

exports.getCellID = () => {
    return getID ('cellid');
}

exports.refCellID = (s) => {
    return refID (s);
}

/// diagrams
exports.newDiagramID = (s) => {
    return newID ('diagramid', s);
}

exports.pushDiagramID = (s) => {
    return pushID ('diagramid', s);
}

exports.getDiagramID = () => {
    return getID ('diagramid');
}



function refID (s) {
    // use refIDTiny to produce smaller ID's (useful for debugging workbench)
    var n = nameIndexTable[s];
    if (n) {
	return "id" + n.toString();
    } else {
	return s;
    }
}    


exports.stripQuotes = (s) => {
    return s;
}

function reallyStripQuotes (s) {
    return s.replace (/"/g,"");
}


function setDiagram () {
    var diagramID = getID ();
    scopeAdd ('diagram', diagramID);
}


//////// details transpiler //////////

exports.namify = (s) => {
    return s
	.trim ()
	.replace (/"/g,'')
	.replace (/ /g,'__')
	.replace (/%20/g,'__')
}

function stripQuotes (s) {
    return s
	.replace (/"/g,'');
}

function stripQuotesAddNewlines (s) {
    var str = stripQuotes (s);
    if (s === '') {
	return s;
    } else {
	return '\n' + stripQuotes (s) + '\n';
    }
}

////////
function connectionsNotExpected () {
    throw "connections not expected in details";
}

exports.encodeString = (s) => {
    return encodeURIComponent (s);
}
