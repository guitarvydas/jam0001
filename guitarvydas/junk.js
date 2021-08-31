var s0 = "&lt;div&gt;&lt;div&gt;&lt;div&gt;## create rect fact for every vertex that is not an edge/ellipse/text&lt;/div&gt;&lt;div&gt;## sequence.drawio file contains vertexes, and marks all edge and ellipse (and text)&lt;/div&gt;&lt;div&gt;## but does not mark rectangles (the default)&lt;/div&gt;&lt;div&gt;## this pass finds the defaults and creates explicit rect(...) facts&lt;/div&gt;&lt;div&gt;swipl -q \&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; -g 'consult(sequence).' \&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; -g 'consult(rects).' \&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; -g 'printRects.' \&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; -g 'halt.' \&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;gt; temp.pl&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;# augment the factbase (fb.pl) after every inferencing step&lt;/div&gt;&lt;div&gt;cat sequence.pl temp.pl | sort &amp;gt;fb.pl&lt;/div&gt;&lt;div&gt;cp fb.pl _seq_end_fb.pl&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;";

// var s2 = s0.replace(/&lt;div&gt;/g,'');
// var s3 = s2.replace(/&lt;\/div&gt;/g,'');
// var s4 = s3.replace(/&amp;nbsp;/g,'');
// var s5 = s4.replace(/&amp;gt;/g,'>');
// var s6 = s5.replace(/&amp;lt;/g,'<');
// var s7 = s6.replace(/&gt;/g,'>');
// var s  = s7.replace(/&lt;/g,'<');

var s = s0
    .replace(/&lt;div&gt;/g,'')
    .replace(/&lt;\/div&gt;/g,`\n`)
    .replace(/&amp;nbsp;/g,'')
    .replace(/&amp;gt;/g,'>')
    .replace(/&amp;lt;/g,'<')
    .replace(/&lt;br&gt;/g,`\n`)
    .replace(/&gt;/g,'>')
    .replace(/&lt;/g,'<');

console.log(s);

