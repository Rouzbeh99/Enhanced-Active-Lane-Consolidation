
PAPI_PATH=../papi-install

CPPFLAGS= -I$(PAPI_PATH)/include
CFLAGS= -O3
LDFLAGS= -L$(PAPI_PATH)/lib -lpapi

test.x: test.c
	$(CC) $(CPPFLAGS) $^ $(CFLAGS) -o $@ $(LDFLAGS)

run:
	LD_LIBRARY_PATH=$(PAPI_PATH)/lib ./test.x

clean:
	$(RM) test.x
