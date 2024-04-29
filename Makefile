dev:
	poetry install --no-root
	pre-commit install

docs-local:
	poetry run mkdocs serve

release-docs:
	@echo "Updating website docs"
	poetry run mike deploy --push --update-aliases ${VERSION} ${ALIAS}

push-tag:
	@echo "Pushing new tag"
	git tag ${TAG}
	git push origin ${TAG}

delete-tag:
	@echo "Deleting tag"
	git tag --delete ${TAG}
	git push origin --delete ${TAG}
