curl "http://www.studierendenwerk-vorderpfalz.de/Worms-Mensa-Wochenplan-akt.171.0.html?&L=0" |sed -Ee 's/^ //g'|tr '[:space:]' ' ' |\
sed -Ee 's/ {1,}/ /g' -e 's/> </></g' \
-e 's/ \/>/\/>/g' -e 's/" >/">/g' | \
ssed -R -e 's/.*<\/thead><tbody>//g' \
-e 's/<\/table><\/div>.*/\n/g' \
-e 's/<tr/\n<tr/g' \
-e 's/<\/tr>/<\/tr>\n/g' \
-e 's/<td/\n<td/g' \
-e 's/<td[^>]*>//g' \
-e 's/ ?<\/td>//g' \
-e 's/<tr><\!-- Tageszeilen -->//g' \
\
-e 's/<div[^>]*>Row: [01234]<\/div>/Datum:/g' \
-e 's/<div[^>]*>Row: [01234], Col: 0<\/div>/Ausgabe 1:<br\/>/g' \
-e 's/<div[^>]*>Row: [01234], Col: 1<\/div>/Ausgabe 2:<br\/>/g' \
-e 's/<div[^>]*>Row: [01234], Col: 2<\/div>/Sonderstand:<br\/>/g' \
-e 's/<div[^>]*>Row: [01234], Col: 3<\/div>/Abendmensa:<br\/>/g' \
-e "s/<br\/>(?=[0123])/, /g" \
-e "s/> />/g" \
-e "s/ </</g" \
-e "s/<\/?b>//g" \
-e "s/(<br\/>)+/\n\t/g" \
-e 's/<h3>Guten Appetit!<\/h3>//g' \
-e "s/<\/?tr>//g" \
-e 's/<\/tbody.*//g' \
-e "s/<\/?p>/\n/g" \
-e "s/<\/?h4>//g" \
-e "s/\&[^;]*;//g"
