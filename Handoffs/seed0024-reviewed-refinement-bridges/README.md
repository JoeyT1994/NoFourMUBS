# Reviewed refinement bridges for seed 0024

This source handoff preserves three bounded results from the seed 0024 phase
checker development. It contains 57 data/table declarations, 11 generic
typed-tape declarations, and 13 scalar/label identities with existing independent
semantic review. These counts describe selected declarations, not closed
physical cases.

| Component | What the reviewed declarations establish | Premises and limits |
|---|---|---|
| `data-table` | Exact octant and rounded-centre integer data equalities, bounded table lookup equalities, and scoped table accuracy | Accuracy applies only to bounded indices divisible by 120. Rounded-centre equality does not assert exact unit complex centres. |
| `typed-tape` | A generic accepted witness tape refines the existing byte-tape checker with ordered children and complete tape consumption | The three `LeafRefinement` implications remain explicit. Physical coverage also needs target `LeafSound`, accepted actual tapes, and every original root. |
| `scalar-label` | Nine scalar identities and four label identities preserve the exact integer sums, witness tests and square predicates | `TableRepresents` and `CentresRepresent` remain explicit. These identities alone do not provide the physical composition. |

No component in this handoff accepts an actual tape or root, closes a physical
box, establishes the complete finite forest, or proves the no-four-MUBs theorem.
The source library closures overlap; their module counts must not be added as a
count of distinct results.

## Check the portable collection

With Python 3.11 or later, from this directory:

```sh
python3 verify_inventory.py
```

The verifier checks every manifest hash, file size and file list; the exact
custom source closures; selected source/receipt and standard-axiom records;
scope fields; and the pinned Lake configuration. It uses only the Python
standard library and performs no network access, Lean execution or native
certificate evaluation. A successful inventory check is evidence fidelity,
not a new kernel proof.

The `typed-tape` directory also retains its original standalone
`verify_inventory.py`. The unchanged `data-table/audit_data_table.py` is
archival review evidence that requires the original research workspace. Use
the verifier at this handoff's root for portable inventory verification.

## Review provenance and reproduction

`COMPONENTS.json` pins each inner manifest and review. The data/table and
typed-tape packets and their collection reviews are copied unchanged. The
scalar/label source closure contains 70 custom modules. Its selected
semantic review is a declared projection of the preserved original: statement,
premise and admission-limit fields are retained, while machine paths,
execution records and unrun join plans are excluded. Original evidence remains
identified by hash; path-free narrow receipts retain source/object and
successful-receipt pins. The three legacy port bindings and `Mub6.Basic` are
reused from the already reviewed data/table collection.

Each component has a `lean-toolchain`, `lakefile.toml`, and inherited Mathlib
license. The pinned versions are Lean 4.33.0-rc2 and Mathlib
`51e6992efd06126df61a496bebf8f49482a4e129`. A fresh kernel reproduction
requires those external dependencies, then serial compilation of each component's
custom source closure before its Lake root. The inventories give the dependency
order or explicit import graph. The original selected checks used one Lean
thread, a 2304 MiB heap limit, a 2816 MiB process-tree RSS stop, a 180-second wall
limit and a 2 GiB free-disk reserve. Preserve those limits for reproduction;
the inventory command does not perform that rebuild.

The recorded checks reused compiled Lean, Mathlib and custom dependencies.
Matching source, object and receipt hashes do not establish independently
reconstructed caches. No clean source/cache rebuild is claimed.
