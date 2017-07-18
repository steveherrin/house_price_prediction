QUERY_DIR := ../queries
QUERIES := $(wildcard $(QUERY_DIR)/*.query)
JSON := $(QUERIES:$(QUERY_DIR)/%.query=%.json)

all: $(JSON)

%.raw: $(QUERY_DIR)/%.query
	@echo Downloading $^
	@$(SHELL) $^ > $@

%.json: %.raw
	@sed "s/{}&&//" < $^ > $@

clean:
	rm -f *.raw
	rm -f *.json

.PHONY: clean
