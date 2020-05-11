CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g -std=c++17 -Wall -Weffc++ -Wextra -Wsign-conversion -pedantic-errors $(shell root-config --cflags)
LDFLAGS=-g $(shell root-config --ldflags)
LDLIBS=$(shell root-config --libs)

SRCS=test.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: test

test: $(OBJS)
	$(CXX) $(LDFLAGS) -o test $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) *~ .depend

include .depend
