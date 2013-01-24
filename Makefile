#-----------------------------------------------------------------------
#
#                     Generic GSLIB Makefile
#                     **********************
#
progname=snesim
#
#
#-----------------------------------------------------------------------


PROG   = $(progname)
FFLAGS = -O4
SRCS   =  $(progname).f
OBJS   =  $(progname).o
INCS   =  
LIBS   = libgs.a
all:$(PROG) 
$(PROG):$(OBJS)
	f90 -o $@ $(OBJS) $(LIBS)
.f.o:
	f90 -c $(FFLAGS) $<
$(OBJS):$(INCS)
clean:
	/bin/rm -rf $(OBJS) $(PROG)
