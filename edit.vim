" Paul Evans (paul.evans@aya.yale.edu
" February 2012
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
:g/<title.\{-}>\(\_.\{-}\)<\/title>/s//\1/g
" removes <titleStmt> in TEI header at line 4
" removes </title> in title statement at end of line 5
" restore by hand
:w
" remove empty <bibl/> tags:
:g/<bibl\/>/s///g
:w
" remove <bibl> and </bibl> tags along with contents:
:g/<bibl>\_.\{-}<\/bibl>/s///g
:w
" remove <mentioned> and </mentioned> tags:
" :g/<mentioned>\(.\{-}\)<\/mentioned>/s//\1/g
:g/<mentioned>\(\_.\{-}\)<\/mentioned>/s//\1/g
:w
:g/<mentioned.\{-}>\(\_.\{-}\)<\/mentioned>/s//\1/g
:w
" remove <ref> and </ref> tags:
:g/<ref>\(\_.\{-}\)<\/ref>/s//\1/g
:w
:g/<ref.\{-}>\(\_.\{-}\)<\/ref>/s//\1/g
:w
" remove <seg> and </seg> tags:
:g/<seg>\(\_.\{-}\)<\/seg>/s//\1/g " works
:w
:g/<seg.\{-}>\(.\{-}\)<\/seg>/s//\1/g " works
:w
:g/<seg.\{-}>\(\_.\{-}\)<\/seg>/s//\1/g " works
:w
" remove <sic> and </sic> tags:
:g/<sic>\(.\{-}\)<\/sic>/s//\1/g
:w
" remove <span> and </span> tags:
:g/<span.\{-}>\(.\{-}\)<\/span>/s//\1/g
:w
" remove empty <sup/> tags:
:g/<sup\/>/s///g
:w
" remove <sup> and </sup> tags along with contents:
:g/<sup>.\{-}<\/sup>/s///g
:w
" remove <unclear> and </unclear> tags:
:g/<unclear>\(.\{-}\)<\/unclear>/s//\1/g
:w
