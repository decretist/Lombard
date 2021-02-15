" Paul Evans (paul.evans@aya.yale.edu
" 11-15 February 2012
"
" remove comments:
:g/<!--.\{-}-->/s///g
:w
" remove column break tags:
:g/<cb.\{-}\/>/s///g
:w
" remove line break tags:
:g/<lb.\{-}\/>/s///g
:w
" remove page break tags:
:g/<pb.\{-}\/>/s///g
:w
" remove name tags (simple case):
" <name>Augustinus</name> => Augustinus
" :g/<name>\(.\{-}\)<\/name>/s//\1/g
" remove name tags (general case):
" <name ref="#Augustine">Augustinus</name> => Augustinus
:g/<name.\{-}>\(.\{-}\)<\/name>/s//\1/g
:w
" remove title tags:
:g/<title>\(.\{-}\)<\/title>/s//\1/g
" removes tags from title in title statement in TEI header at line 5:
" <title>http://scta.info/resoure/lombardsententia/critical/transcription</title>
" restore by hand
:w
" remove empty <bibl/> tags:
:g/<bibl\/>/s///g
:w
" remove <bibl> tags and contents:
:g/<bibl>\_.\{-}<\/bibl>/s///g
:w
