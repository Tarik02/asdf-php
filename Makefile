SH_SRCFILES = $(shell git ls-files "bin/*" "lib/*")
SHFMT_BASE_FLAGS = -s -i 2 -ci

fmt:
	shfmt -w $(SHFMT_BASE_FLAGS) $(SH_SRCFILES)
.PHONY: fmt

fmt-check:
	shfmt -d $(SHFMT_BASE_FLAGS) $(SH_SRCFILES)
.PHONY: fmt-check

lint:
	shellcheck -x $(SH_SRCFILES)
.PHONY: lint
