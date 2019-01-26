HC = ghc
HFLAGS = -dynamic
OBJS = hello.o
PKGS = -package directory

.SUFFIXES :
.SUFFIXES : .o .hs .hi

hello : main.c hello_stub.h $(OBJS)
	$(HC) -no-hs-main $(HFLAGS) -o $@ main.c $(OBJS) $(PKGS)

clean :
	rm $(OBJS) hello

.hs.o:
	$(HC) -ohi /dev/null $(HFLAGS) -c $<
