dev:
	poetry install
	pre-commit install

docs-local:
	poetry run mkdocs serve
