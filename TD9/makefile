MAKEFLAGS += --silent

all:
	-@chcp 65001 > .CYPT
	echo vous avez fpc le process va ce faire
	fpc TD9.pas -v0  > .CYPT

	
	echo Process Terminé avec succés	
	echo Nétoyage des fichiers résiduel en cours
 
	make clean
clean:	
	-@rm -rf *.o || true
	-@rm -rf *.ppu|| true
	echo Nétoyage des fichiers terminé
	-@chcp 850 > .CYPT
	-@rm -rf .CYPT || true