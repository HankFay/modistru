lParameters tcxcTablename
local lcptablename

lcptablename = "p" + lower(substr(tcxcTableName,3))

if !tableexists("xctables",lcptablename)
	sele 0
	use (tcxctablename)
	copy stru extended to (lcpTableName)
endif

if !used(lcptablename)
	sele 0
	use (lcptablename)
endif

loGrid = lianja.get("strugrid")
loGrid.table = juststem(lcpTableName)
loGrid.refresh()