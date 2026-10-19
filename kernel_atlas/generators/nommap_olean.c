/* LD_PRELOAD shim for the final module (final_run.py --no-olean-mmap): refuse Lean's per-file `.olean` mappings.

   Lean maps every imported .olean at a fixed base address, one memory mapping per file.  The final module imports
   about 360k .oleans, more than the kernel's per-process limit vm.max_map_count (262,144 on rusty), and the import
   fails with "failed to read file".  Refused, Lean falls back to reading the file into a malloc'ed buffer; with
   MALLOC_MMAP_THRESHOLD_ above the largest .olean those buffers come from glibc's heaps, not from new mappings.
   Only read-only private mappings of a file at a requested address (Lean's olean pattern) are refused. */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>

static void *(*real_mmap)(void *, size_t, int, int, int, off_t);
static unsigned long refused;

void *mmap(void *addr, size_t len, int prot, int flags, int fd, off_t off) {
    if (!real_mmap)
        real_mmap = (void *(*)(void *, size_t, int, int, int, off_t))dlsym(RTLD_NEXT, "mmap");
    if (addr != NULL && fd >= 0 && prot == PROT_READ && flags == MAP_PRIVATE) {
        refused++;
        return MAP_FAILED;
    }
    return real_mmap(addr, len, prot, flags, fd, off);
}

__attribute__((destructor)) static void report(void) {
    if (getenv("NOMMAP_REPORT"))
        fprintf(stderr, "nommap_olean: %lu olean mappings refused\n", refused);
}
