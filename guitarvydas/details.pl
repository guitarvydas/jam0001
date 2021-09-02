


















































   -g 'consult(rects).' \
   -g 'consult(sequence).' \
   -g 'halt.' \
   -g 'printRects.' \
   > temp.pl
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
").
# augment the factbase (fb.pl) after every inferencing step
## but does not mark rectangles (the default)
## sequence.drawio file contains vertexes, and marks all edge and ellipse (and text)
## this pass finds the defaults and creates explicit rect(...) facts
cat sequence.pl temp.pl | sort >fb.pl
cell(id10,"").
cell(id11,"").
cell(id12,"").
cell(id13,"").
cell(id14,"").
cell(id15,"").
cell(id16,"").
cell(id17,"").
cell(id18,"").
cell(id19,"").
cell(id2,"").
cell(id20,"").
cell(id21,"").
cell(id22,"").
cell(id23,"").
cell(id24,"").
cell(id25,"").
cell(id26,"").
cell(id27,"").
cell(id28,"").
cell(id29,"").
cell(id3,"").
cell(id30,"").
cell(id31,"").
cell(id32,"").
cell(id33,"").
cell(id34,"").
cell(id35,"").
cell(id36,"").
cell(id37,"").
cell(id38,"").
cell(id39,"").
cell(id4,"").
cell(id40,"").
cell(id41,"").
cell(id42,"").
cell(id43,"").
cell(id44,"").
cell(id45,"").
cell(id46,"").
cell(id47,"").
cell(id48,"").
cell(id49,"").
cell(id5,"").
cell(id50,"").
cell(id51,"").
cell(id52,"").
cell(id53,"").
cell(id54,"").
cell(id55,"").
cell(id56,"").
cell(id57,"").
cell(id6,"").
cell(id7,"").
cell(id8,"").
cell(id9,"").
cp fb.pl _seq_end_fb.pl
diagram(id1, "").
diagramContains(id1, id10).
diagramContains(id1, id11).
diagramContains(id1, id12).
diagramContains(id1, id13).
diagramContains(id1, id14).
diagramContains(id1, id15).
diagramContains(id1, id16).
diagramContains(id1, id17).
diagramContains(id1, id18).
diagramContains(id1, id19).
diagramContains(id1, id2).
diagramContains(id1, id20).
diagramContains(id1, id21).
diagramContains(id1, id22).
diagramContains(id1, id23).
diagramContains(id1, id24).
diagramContains(id1, id25).
diagramContains(id1, id26).
diagramContains(id1, id27).
diagramContains(id1, id28).
diagramContains(id1, id29).
diagramContains(id1, id3).
diagramContains(id1, id30).
diagramContains(id1, id31).
diagramContains(id1, id32).
diagramContains(id1, id33).
diagramContains(id1, id34).
diagramContains(id1, id35).
diagramContains(id1, id36).
diagramContains(id1, id37).
diagramContains(id1, id38).
diagramContains(id1, id39).
diagramContains(id1, id4).
diagramContains(id1, id40).
diagramContains(id1, id41).
diagramContains(id1, id42).
diagramContains(id1, id43).
diagramContains(id1, id44).
diagramContains(id1, id45).
diagramContains(id1, id46).
diagramContains(id1, id47).
diagramContains(id1, id48).
diagramContains(id1, id49).
diagramContains(id1, id5).
diagramContains(id1, id50).
diagramContains(id1, id51).
diagramContains(id1, id52).
diagramContains(id1, id53).
diagramContains(id1, id54).
diagramContains(id1, id55).
diagramContains(id1, id56).
diagramContains(id1, id57).
diagramContains(id1, id6).
diagramContains(id1, id7).
diagramContains(id1, id8).
diagramContains(id1, id9).
fillColor(id12, "red").
fillColor(id13, "red").
fillColor(id15, "red").
fillColor(id16, "red").
fillColor(id18, "red").
fillColor(id20, "red").
fillColor(id22, "red").
fillColor(id24, "red").
fillColor(id26, "red").
fillColor(id28, "red").
fillColor(id30, "red").
fillColor(id32, "red").
fillColor(id34, "red").
fillColor(id36, "red").
fillColor(id37, "red").
fillColor(id38, "red").
fillColor(id39, "red").
fillColor(id41, "red").
fillColor(id43, "red").
fillColor(id45, "red").
fillColor(id47, "red").
fillColor(id49, "red").
fillColor(id5, "red").
fillColor(id51, "red").
fillColor(id54, "red").
fillColor(id55, "red").
fillColor(id57, "red").
height(id10, 70).
height(id11, 70).
height(id12, 237.5).
height(id13, 30).
height(id14, 70).
height(id15, 30).
height(id16, 30).
height(id17, 70).
height(id18, 30).
height(id19, 70).
height(id20, 30).
height(id21, 70).
height(id22, 30).
height(id23, 70).
height(id24, 30).
height(id25, 70).
height(id26, 30).
height(id27, 70).
height(id28, 30).
height(id29, 70).
height(id30, 30).
height(id31, 70).
height(id32, 30).
height(id33, 70).
height(id34, 30).
height(id35, 70).
height(id36, 30).
height(id37, 30).
height(id38, 30).
height(id39, 30).
height(id4, 70).
height(id40, 70).
height(id41, 30).
height(id42, 95).
height(id43, 30).
height(id44, 95).
height(id45, 30).
height(id46, 70).
height(id47, 30).
height(id48, 70).
height(id49, 30).
height(id5, 30).
height(id50, 70).
height(id51, 30).
height(id52, 70).
height(id53, 70).
height(id54, 30).
height(id55, 30).
height(id56, 70).
height(id57, 30).
height(id6, 95).
height(id7, 300).
height(id8, 70).
height(id9, 70).
name(id1, "Details").
swipl -q \
value(id10, "emit topological").
value(id11, "topological sort").
value(id12, "## create rect fact for every vertex that is not an edge/ellipse/text
value(id13, "./senders.bash
value(id14, "receivers").
value(id15, "./receivers.bash
value(id16, "./designRuleCheckEdges.bash
value(id17, "bounding boxes").
value(id18, "./bb.bash
value(id19, "check bounding boxes").
value(id20, "./designRuleCheckBoundingBoxes.bash
value(id21, "contains1").
value(id22, "./contains1.bash
value(id23, "rectangles must not intersect").
value(id24, "./designRule1.bash
value(id25, "deepcontains").
value(id26, "./deepcontains.bash
value(id27, "directcontains").
value(id28, "./directcontains.bash
value(id29, "port contains").
value(id30, "./portcontains.bash
value(id31, "port directions").
value(id32, "./portdirections.bash
value(id33, "assign names").
value(id34, "./assignnames.bash
value(id35, "assign code").
value(id36, "./assigncode.bash
value(id37, "node emittopological.js > topo1.txt
value(id38, "tsort topo1.txt >topo.txt
value(id39, "echo
value(id4, "convert to fb").
value(id40, "convert to JSON").
value(id41, "./tojson.bash >out.json
value(id42, "sequencing").
value(id43, "echo
value(id44, "details").
value(id45, "echo
value(id46, "fixups").
value(id47, "./fixup.bash <outd.json > details.json").
value(id48, "create sequence JSON").
value(id49, "cp out.json details.json").
value(id5, "node sequence.js >sequence.pl
value(id50, "convert to JSON details").
value(id51, "./tojson.bash >outd.json
value(id52, "create functions").
value(id53, "create final script").
value(id54, "node emitfunctions.js >functions.txt").
value(id55, "cat header.txt functions.txt topo.txt trailer.txt | ./deleteBlankLines.bash >final.bash
value(id56, "parse details diagram").
value(id57, "node details.js >details.pl
value(id6, "top level").
value(id7, "make rects").
value(id8, "check edges").
value(id9, "senders").
vertex(id10, "").
vertex(id11, "").
vertex(id12, "").
vertex(id13, "").
vertex(id14, "").
vertex(id15, "").
vertex(id16, "").
vertex(id17, "").
vertex(id18, "").
vertex(id19, "").
vertex(id20, "").
vertex(id21, "").
vertex(id22, "").
vertex(id23, "").
vertex(id24, "").
vertex(id25, "").
vertex(id26, "").
vertex(id27, "").
vertex(id28, "").
vertex(id29, "").
vertex(id30, "").
vertex(id31, "").
vertex(id32, "").
vertex(id33, "").
vertex(id34, "").
vertex(id35, "").
vertex(id36, "").
vertex(id37, "").
vertex(id38, "").
vertex(id39, "").
vertex(id4, "").
vertex(id40, "").
vertex(id41, "").
vertex(id42, "").
vertex(id43, "").
vertex(id44, "").
vertex(id45, "").
vertex(id46, "").
vertex(id47, "").
vertex(id48, "").
vertex(id49, "").
vertex(id5, "").
vertex(id50, "").
vertex(id51, "").
vertex(id52, "").
vertex(id53, "").
vertex(id54, "").
vertex(id55, "").
vertex(id56, "").
vertex(id57, "").
vertex(id6, "").
vertex(id7, "").
vertex(id8, "").
vertex(id9, "").
width(id10, 208.12).
width(id11, 147.5).
width(id12, 370).
width(id13, 95).
width(id14, 115).
width(id15, 95).
width(id16, 175).
width(id17, 115).
width(id18, 95).
width(id19, 250).
width(id20, 225).
width(id21, 115).
width(id22, 95).
width(id23, 190).
width(id24, 115).
width(id25, 130).
width(id26, 110).
width(id27, 135).
width(id28, 115).
width(id29, 140).
width(id30, 120).
width(id31, 140).
width(id32, 120).
width(id33, 140).
width(id34, 120).
width(id35, 140).
width(id36, 120).
width(id37, 190.62).
width(id38, 127.5).
width(id39, 180).
width(id4, 230).
width(id40, 188.75).
width(id41, 168.75).
width(id42, 240).
width(id43, 180).
width(id44, 240).
width(id45, 180).
width(id46, 220).
width(id47, 202.5).
width(id48, 160.62).
width(id49, 133.12).
width(id5, 180).
width(id50, 188.75).
width(id51, 168.75).
width(id52, 219.97).
width(id53, 460.62).
width(id54, 202.5).
width(id55, 443.12).
width(id56, 158.75).
width(id57, 143.75).
width(id6, 240).
width(id7, 410).
width(id8, 200).
width(id9, 115).
x(id10, 201.88).
x(id11, 201.88).
x(id12, 210).
x(id13, 195).
x(id14, 375).
x(id15, 385).
x(id16, 195).
x(id17, 180).
x(id18, 190).
x(id19, 320).
x(id20, 335).
x(id21, 180).
x(id22, 190).
x(id23, 630).
x(id24, 665).
x(id25, 320).
x(id26, 330).
x(id27, 470).
x(id28, 480).
x(id29, 180).
x(id30, 190).
x(id31, 340).
x(id32, 350).
x(id33, 180).
x(id34, 190).
x(id35, 340).
x(id36, 350).
x(id37, 209.38).
x(id38, 209.38).
x(id39, 105).
x(id4, 195).
x(id40, 201.88).
x(id41, 211.88).
x(id42, 320).
x(id43, 355).
x(id44, 570).
x(id45, 605).
x(id46, 172.5).
x(id47, 180).
x(id48, 419.38).
x(id49, 433.13).
x(id5, 220).
x(id50, 181.26).
x(id51, 191.26).
x(id52, 210.03).
x(id53, 209.38).
x(id54, 216.88).
x(id55, 216.88).
x(id56, 441.25).
x(id57, 450).
x(id6, 70).
x(id7, 190).
x(id8, 180).
x(id9, 185).
y(id10, 1280).
y(id11, 1370).
y(id12, 312.5).
y(id13, 640).
y(id14, 610).
y(id15, 640).
y(id16, 740).
y(id17, 810).
y(id18, 840).
y(id19, 810).
y(id20, 840).
y(id21, 910).
y(id22, 940).
y(id23, 910).
y(id24, 940).
y(id25, 910).
y(id26, 940).
y(id27, 910).
y(id28, 940).
y(id29, 1000).
y(id30, 1030).
y(id31, 1000).
y(id32, 1030).
y(id33, 1090).
y(id34, 1120).
y(id35, 1090).
y(id36, 1120).
y(id37, 1310).
y(id38, 1400).
y(id39, 42.5).
y(id4, 130).
y(id40, 1190).
y(id41, 1220).
y(id42, 10).
y(id43, 42.5).
y(id44, 10).
y(id45, 42.5).
y(id46, 1840).
y(id47, 1870).
y(id48, 1190).
y(id49, 1220).
y(id5, 155).
y(id50, 1760).
y(id51, 1790).
y(id52, 1920).
y(id53, 2010).
y(id54, 1950).
y(id55, 2040).
y(id56, 1760).
y(id57, 1790).
y(id6, 10).
y(id7, 280).
y(id8, 710).
y(id9, 610).
