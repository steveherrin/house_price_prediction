QUERY_DIR := ../queries
QUERIES := $(wildcard $(QUERY_DIR)/*.query)
CSV := $(QUERIES:$(QUERY_DIR)/%.query=%.csv)

all: $(CSV)

%.raw: $(QUERY_DIR)/%.query
	@echo Downloading $^
	@$(SHELL) $^ > $@

%.json: %.raw
	@sed "s/{}&&//" < $^ > $@

%.csv: %.json
	@python ../preprocess_data.py $^ $@

clean:
	rm -f *.raw
	rm -f *.json
	rm -f *.csv

.PHONY: clean

.PRECIOUS: %.json
