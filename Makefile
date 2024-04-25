dev:
	poetry install
	pre-commit install

docs-local:
	poetry run mkdocs serve

release-docs:
	@echo "Updating website docs"
	poetry run mike deploy --push --update-aliases ${VERSION} ${ALIAS}
