#!/bin/sh
sed -i 's|^ *||g' $1
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
mv $1.tmp $1
