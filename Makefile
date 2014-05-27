TARGET=libzvm_zpipes.so
SOURCES=zvm_zpipes.c
OBJECTS=$(SOURCES:.c=.o)
CFLAGS=-fPIC -shared

prefix=/usr/local
libdir=$(prefix)/lib

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) $(CFLAGS) -o $(TARGET) $(OBJECTS)

.PHONY: clean install

install: $(TARGET)
	install -d $(DESTDIR)$(libdir)
	install -m 0755 $(TARGET) $(DESTDIR)$(libdir)/$(TARGET)

clean:
	rm -f $(TARGET) *.o
