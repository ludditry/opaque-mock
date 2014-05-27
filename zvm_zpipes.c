#include <stdio.h>
#include <stdlib.h>

#include "zvm_zpipes.h"

ZVMPIPE zvm_pipe_open(const char *descriptor) {
    return NULL;
}

int zvm_pipe_close(ZVMPIPE pipe) {
    return 0;
}

int zvm_zpipe_read(ZVMPIPE pipe, void *buf, size_t count) {
    return (ssize_t)count;
}

int zvm_zpipe_write(ZVMPIPE pipe, void *buf, size_t count) {
    return (ssize_t)count;
}

