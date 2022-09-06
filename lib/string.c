#include "string.h"

void* memset(void *dst, int c, uint n) {
  char *cdst = (char *) dst;
  for(int i = 0; i < n; i++){
    cdst[i] = c;
  }
  return dst;
}