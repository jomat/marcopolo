#!/bin/sh
sed -i 's|^ *||g' $1
cat $1|awk '{if ($0=="</body>") ready=0; if (ready==1)print $0;if ($0=="<font color=C0C0C0 face=\"Courier New\" style=\"font-size: 8pt\">") ready=1;}' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<font color=00CCFF>(.*?)</font>|<span class="hellblau">\1</span>|g' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<font color=FFCC00>(.*?)</font>|<span class="gelb">\1</span>|g' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<font color=FF9900>(.*?)</font>|<span class="orange">\1</span>|g' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<font color=9900CC>(.*?)</font>|<span class="violett">\1</span>|g' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<font color=red>(.*?)</font>|<span class="rot">\1</span>|g' >$1.tmp
mv $1.tmp $1
cat $1|perl -pe 's|<A TITLE="(.*?)" HREF="(.*?).html">(.*?)</A>|[[\3\|\2]]|g' >$1.tmp
echo '<span class="map">' > $1
cat $1.tmp >>$1
echo '</span>' >>$1
sed -i '/^$/d' $1
rm $1.tmp
sed -i 's|</FONT></TD>$||' $1
sed -i 's|^</TR>$|</span>\n\n<span class="legend">|' $1
sed -i '/^<\/TABLE>$/d' $1
sed -i '/^<\/CENTER>$/d' $1
sed -i '/^<\/DIV>$/d' $1
sed -i '/^<br>$/d' $1
sed -i '/^<font color=C0C0C0 face="Courier New" style="font-size: 8pt">$/d' $1
sed -i '/.*zur Weltkarte.*/d' $1
sed -i 's/A-Praktikum/Anfängerpraktikum/g' $1