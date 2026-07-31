.PHONY: help check-quarto render render-all clean test

help:
	@echo "Targets:"
	@echo "  check-quarto                 Check quarto is available"
	@echo "  render FILE=... EXP=... [SEED=123]"
	@echo "  render-all                   Render all .qmd under experiments/ and projects/"
	@echo "  test                         Run testthat tests"
	@echo "  clean                        Remove Quarto cache/output helper dirs"

check-quarto:
	@quarto --version

render:
	@test -n "$(FILE)" && test -n "$(EXP)" || (echo "FILE and EXP are required" && exit 1)
	Rscript scripts/render-report.R $(FILE) $(EXP) $(SEED)

render-all:
	@find experiments projects -type f -name "*.qmd" -print0 | xargs -0 -I{} sh -c 'Rscript scripts/render-report.R "$$1" "$$(dirname "$$1")" 123' _ {}

test:
	Rscript -e "testthat::test_dir('tests/testthat')"

clean:
	find . -type d -name ".quarto" -prune -exec rm -rf {} +
	find . -type d -name "*_files" -prune -exec rm -rf {} +
