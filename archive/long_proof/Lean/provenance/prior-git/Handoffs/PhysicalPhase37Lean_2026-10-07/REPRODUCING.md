# Reproduction boundary

Use Lean 4.33.0-rc2 at commit d8b18978322de05a8f3dba51ef03cf5461676c17 and
mathlib revision 51e6992efd06126df61a496bebf8f49482a4e129. Source files are under
`lean/`. Prepare external package dependencies separately.

The exact serial custom-module order is in `REPLAY_PLAN.json`. It includes both
ordinary imports and the literal `Lean.importModules` edges. A build tool that
only scans `import Lean` will miss the physical proof dependencies. The dynamic
imports use trust level zero and omit extension initialization; declarations
still pass `Lean.addDecl` kernel checking. The closed-domain and batch transfers
explicitly set `debug.skipKernelTC` to false.

Replay each source through a serialized guard with 2304 MiB heap, 2816 MiB process
tree RSS, 180 seconds and a 2 GiB disk reserve. Preserve every failed and passed
source/receipt. Inspect every printed selected axiom set and require only
propext, Classical.choice and Quot.sound. A relocated replay was not performed
while collecting this packet, and cached dependencies have not been cleanly rebuilt.

Do not co-import the older `CoreLabelBridge` with `DirectPhysicalInline`: the
latter intentionally retains the same four reviewed qualified label lemmas.
The explicit source closure contains the chosen inline module only.

Whole-forest completion additionally requires a checked exact ordinal partition
and a final universal physical consumer. Balanced source assembly alone does not
establish that the transitive import closure fits the fixed memory guard.
