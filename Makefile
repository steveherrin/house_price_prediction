all: data

data:
	$(MAKE) -C data all

clean:
	$(MAKE) -C data clean

.PHONY: clean data
