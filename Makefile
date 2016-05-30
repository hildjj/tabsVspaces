all: spaces tabs
spaces: spaces.c
tabs: tabs.c

.PHONY: clean debug

# look ma, no tabs:
clean: ; $(RM) tabs spaces

# Another way:
.RECIPEPREFIX = >
debug: spaces.c
> $(CC) -g -o spaces spaces.c