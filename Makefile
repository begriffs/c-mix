HC = ghc
HFLAGS = -dynamic
OBJS = hello.o
PKGS = -package directory
CFLAGS = -pgmc cc -optc -std=c99 -optc -Wall

.SUFFIXES :
.SUFFIXES : .o .hs .hi

hello : main.c $(OBJS)
	$(HC) -no-hs-main $(HFLAGS) $(CFLAGS) -o $@ main.c $(OBJS) $(PKGS)

clean :
	rm $(OBJS) hello

.hs.o:
	$(HC) -ohi /dev/null $(HFLAGS) -c $<
