PAS := fpc

SRC := $(wildcard *.pas)
OBJS := $(patsubst %.pas, %.o, $(SRC))
EXES := $(basename $(OBJS))

all: $(EXES)

$(EXES): %: %.pas
	$(PAS) $<

.PHONY: clean
clean:
	rm -f $(OBJS) $(EXES)