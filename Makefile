compile:
	./HelperShellScripts/mdsToPdf.sh clases/clase_ resumen

toPNG:
	./HelperShellScripts/pngify.sh resumen.pdf resumen-en-pngs/resumen.png

readme: toPNG
	./HelperShellScripts/pngsToReadme.sh resumen-en-pngs resumen.pdf

all: compile readme
