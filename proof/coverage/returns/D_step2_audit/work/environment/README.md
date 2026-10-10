# Build-environment note

The stock Lean 4.33.0-rc2 release executable was used. Its startup code asks
`readlink` for `/proc/<own-pid>/exe`. This execution host does not expose
that numeric process link, but does expose `/proc/self/exe` for the same
process. `self_exe_compat.c` redirects precisely that path lookup and passes
every other `readlink` call through unchanged.

On this host the compatibility library was built with:

```bash
gcc -shared -fPIC self_exe_compat.c -o self_exe_compat.so -ldl
```

Lean and Lake were run with `LD_PRELOAD` set to the absolute path of that
library and the stock toolchain's `bin` directory on `PATH`. No Lean source,
logical kernel code, theorem statement, axiom declaration, or proof
certificate was changed by this workaround. It is unnecessary on a normal
Linux installation and is not enabled by the delivered `build.sh`.

`nofourmubs_bundled_dependency.patch` records the separate Lake
configuration edit requested in the handoff. It changes the dependency to
the bundled relative path. `certificates/source_integrity.json` confirms
that all original Lean source bytes still match the input ZIP.

The initial parallel build exhausted the host's 8 GiB memory limit while
several large upstream resultant identities were elaborated concurrently.
Each of the three affected modules subsequently passed when built alone;
the source itself documents a roughly 5 GiB peak for these certificates.
This is the reason for sequential building in the delivered script.
