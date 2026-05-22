          
help:
	@echo "Generate HTML from a Bikeshed source document:"
	@echo "  make spec    Generate HTML"
	@echo "  make watch   Generate HTML each time the source changes"

spec:
	pipx run bikeshed

watch:
	pipx run bikeshed watch
	
web:	
	curl https://api.csswg.org/bikeshed/ -F file=@index.bs -F force=1 > index.html


