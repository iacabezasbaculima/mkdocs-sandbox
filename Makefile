dev:
	poetry install --no-root
	pre-commit install

docs-local:
	poetry run mkdocs serve

release-docs:
	@echo "Updating website docs"
	poetry run mike deploy --push --update-aliases ${VERSION} ${ALIAS}
