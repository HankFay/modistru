lparameters tcSearch, tcDir
local laTables[1,1]

if empty(tcSearch)
	tcSearch = "*.dbf"
else
	tcSearch = defaultext(tcSearch,".DBF")
endif

tcDir = addbs(psp_paramval(tcDir,"lianja.datadir"))

lnTables = adir(latables,tcDir + tcSearch)

lcList = ""

for ln = 1 to lnTables
	lcList = lcList + "," + laTables[ln,1]
endfor

lcList = substr(lcList,2)

return lcList