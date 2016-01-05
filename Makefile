CXX = g++
CXXFLAGS = -g -Wall -std=c++11
OBJECTS = main.o
INCFLAGS = -I"../i2pd"
LDFLAGS = -Wl,-rpath,/usr/local/lib 
LIBS = ../i2pd/libi2pd.a -lboost_system -lboost_date_time -lboost_filesystem -lboost_regex -lboost_program_options -lssl -lcrypto -lpthread -lrt -lz -lsqlite3

all: i2pd-reseed

i2pd-reseed: $(OBJECTS)
	$(CXX) -o i2pd-reseed $(OBJECTS) $(LDFLAGS) $(LIBS)

.SUFFIXES:
.SUFFIXES:	.c .cc .C .cpp .o

.cpp.o :
	$(CXX) -o $@ -c $(CXXFLAGS) $< $(INCFLAGS)

count:
	wc *.c *.cc *.C *.cpp *.h *.hpp

clean:
	rm -f *.o i2pd-reseed

.PHONY: all
.PHONY: count
.PHONY: clean
