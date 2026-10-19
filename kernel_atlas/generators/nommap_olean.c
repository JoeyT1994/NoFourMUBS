/* LD_PRELOAD shim for the final module (final_run.py --no-olean-mmap): refuse Lean's per-file `.olean` mappings.

   Lean maps every imported .olean at a fixed base address, one memory mapping per file.  The final module imports
   about 360k .oleans, more than the kernel's per-process limit vm.max_map_count (262,144 on rusty), and the import
   fails with "failed to read file".  Refused, Lean falls back to reading the file into a malloc'ed buffer; with
   MALLOC_MMAP_THRESHOLD_ above the largest .olean those buffers come from glibc's heaps, not from new mappings.
   Only Lean's olean pattern is refused (src/library/module.cpp, v4.33: a private writable mapping of a file at the
   header's base address with MAP_FIXED_NOREPLACE). */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>

#ifndef MAP_FIXED_NOREPLACE
#define MAP_FIXED_NOREPLACE 0x100000
#endif

static void *(*real_mmap)(void *, size_t, int, int, int, off_t);
static unsigned long refused;

void *mmap(void *addr, size_t len, int prot, int flags, int fd, off_t off) {
    if (!real_mmap)
        real_mmap = (void *(*)(void *, size_t, int, int, int, off_t))dlsym(RTLD_NEXT, "mmap");
    if (addr != NULL && fd >= 0 && prot == (PROT_READ | PROT_WRITE) &&
        flags == (MAP_PRIVATE | MAP_FIXED_NOREPLACE)) {
        refused++;
        return MAP_FAILED;
    }
    return real_mmap(addr, len, prot, flags, fd, off);
}

__attribute__((destructor)) static void report(void) {
    if (getenv("NOMMAP_REPORT"))
        fprintf(stderr, "nommap_olean: %lu olean mappings refused\n", refused);
}
