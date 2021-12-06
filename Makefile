PAS := fpc
PASFLAGS := -g

SRC := $(wildcard *.pas)
OBJS := $(patsubst %.pas, %.o, $(SRC))
EXES := $(basename $(OBJS))

all: $(EXES)

$(EXES): %: %.pas
	$(PAS) $(PASFLAGS) $<

.PHONY: clean
clean:
	rm -f $(OBJS) $(EXES)