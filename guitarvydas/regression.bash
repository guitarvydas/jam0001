#!/bin/bash
emit__topological () {
 c17
 }
topological__sort () {
 c18
 }
c2 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./senders.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
receivers () {
 c3
 }
c3 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./receivers.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
c4 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./designRuleCheckEdges.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
bounding__boxes () {
 c5
 }
c5 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./bb.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
check__bounding__boxes () {
 c7
 }
c7 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./designRuleCheckBoundingBoxes.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
contains1 () {
 c8
 }
c8 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./contains1.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
rectangles__must__not__intersect () {
 c9
 }
c9 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./designRule1.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
deepcontains () {
 c10
 }
c10 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./deepcontains.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
directcontains () {
 c11
 }
c11 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./directcontains.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
port__contains () {
 c13
 }
c13 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./portcontains.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
port__directions () {
 c14
 }
c14 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./portdirections.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
assign__names () {
 c15
 }
c15 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./assignnames.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
assign__code () {
 c16
 }
c16 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./assigncode.bash&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
c17 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;node emittopological.js &amp;gt; topo1.txt&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
c18 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;tsort topo1.txt &amp;gt;topo.txt&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
c19 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;echo&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
convert__to__fb () {
 c25
 }
convert__to__JSON () {
 c20
 }
c20 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./tojson.bash &amp;gt;out.json&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
sequencing () {
 c21
 }
c21 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;echo&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
details () {
 c22
 }
c22 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;echo&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
fixups () {
 c23
 }
c23 () {
./fixup.bash &amp;lt;outd.json &amp;gt; details.json 
  }
create__sequence__JSON () {
 c24
 }
c24 () {
cp out.json details.json 
  }
c25 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;node sequence.js &amp;gt;sequence.pl&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt; 
  }
convert__to__JSON__details () {
 c26
 }
c26 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;./tojson.bash &amp;gt;outd.json&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
create__functions () {
 c27
 }
create__final__script () {
 c28
 }
c27 () {
node emitfunctions.js &amp;gt;functions.txt 
  }
c28 () {
&lt;div&gt;cat header.txt functions.txt topo.txt trailer.txt | ./deleteBlankLines.bash &amp;gt;final.bash&lt;/div&gt; 
  }
parse__details__diagram () {
 c29
 }
c29 () {
&lt;div&gt;&lt;div&gt;&lt;div&gt;node details.js &amp;gt;details.pl&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; 
  }
top__level () {
 c19
 }
make__rects () {
 c1
 }
check__edges () {
 c4
 }
senders () {
 c2
 }
convert__to__fb
parse__details__diagram
make__rects
senders
receivers
check__edges
bounding__boxes
check__bounding__boxes
contains1
deepcontains
directcontains
rectangles__must__not__intersect
port__contains
port__directions
assign__names
assign__code
convert__to__JSON
create__sequence__JSON
convert__to__JSON__details
emit__topological
fixups
topological__sort
create__functions
create__final__script
