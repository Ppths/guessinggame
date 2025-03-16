README = README.md

LINES = $(shell wc -l < guessinggame.sh)

all: $(README)

$(README): guessinggame.sh
	echo "# Juego de Adivinanza de Archivos" > $(README)
	echo "" >> $(README)
	echo "Este proyecto es un juego en Bash donde el usuario intenta adivinar cuántos archivos hay en el directorio actual." >> $(README)
	echo "" >> $(README)
	echo "**Fecha y hora de ejecución:** $$(date)" >> $(README)
	echo "" >> $(README)
	echo "**Número de líneas en guessinggame.sh:** $(LINES)" >> $(README)
	echo "" >> $(README)
	echo "## Cómo ejecutar el programa" >> $(README)
	echo "" >> $(README)
	echo "Ejecuta el siguiente comando en la terminal:" >> $(README)
	echo "" >> $(README)
	echo "    bash guessinggame.sh" >> $(README)
	echo "" >> $(README)

clean:
	rm -f $(README)
