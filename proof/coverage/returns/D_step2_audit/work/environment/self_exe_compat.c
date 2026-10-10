#define _GNU_SOURCE
#include <dlfcn.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
/* Lean 4.33's appPath uses /proc/<own-pid>/exe. The host exposes the
   equivalent /proc/self/exe. Redirect only that exact self-lookup. */
ssize_t readlink(const char *path, char *buf, size_t bufsiz) {
    static ssize_t (*real_readlink)(const char*, char*, size_t) = NULL;
    if (!real_readlink) real_readlink = dlsym(RTLD_NEXT, "readlink");
    char own_exe[64];
    snprintf(own_exe, sizeof own_exe, "/proc/%ld/exe", (long)getpid());
    return real_readlink(strcmp(path, own_exe) == 0 ? "/proc/self/exe" : path,
                         buf, bufsiz);
}
