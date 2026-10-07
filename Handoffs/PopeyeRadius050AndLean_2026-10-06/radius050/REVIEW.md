# Radius-1/20 incoming replay review

## Verdict

The guard-repaired derivative passes a fresh full native replay. It reports `PASS_UNIFORM_BALL` after rebuilding the exact pinned sources, checking all exact and outward-arithmetic components, passing all 104 local contraction rows, and freshly accepting all 38,421 global terminals with zero unresolved records. The fresh receipt SHA-256 is `bdfd436a00302dd965700fbc592289edb57c3a5497c241b6b4e1dff97fed02ec`.

This verdict applies to the guard-repaired derivative, not to a new replay claim for the unmodified ZIP. The ZIP itself is preserved and byte-verified at SHA-256 `6f3c8040ffdaa81ab5655ddbefa519cb641060c161e457747e0ff3afe1b95d64`. Its inherited subnormal startup guard fails open under ARM flush-to-zero mode. The derivative replaces only that guard with the previously reviewed raw-bit check; `interval_model.hpp` changes from `dbdf8d6d81b388388b4a91b5af9d78aaaddd136e1fb6a21de065c33649aef124` to `5cff261ebf1e307d4fd769594ce339e7806dab18ac017d0544f212a3b18a10ff`, and `MANIFEST.sha256` records the new identity. Every other package file is byte-identical. The exact repair diff has SHA-256 `e4fb33c15dbeda1aa91d7c900e4773e2375724598023974443d716d23052d111`.

## Fresh evidence

The replay verified 38,421 weighted degree-12 terminals covering 324 initial cells through 102 symmetry representatives. Both ordinary degree-six and weighted degree-12 arithmetic controls passed. All 104 local rows over 63 covered references passed; the largest exact score was `6989400537360665/9007199254740992` (about 0.775979340), below one. The verifier took 1024.823 seconds. Its bounded supervisor recorded 264388608 bytes peak process-tree RSS, 6316982272 bytes minimum free space, no resource halt, and no monitor error.

An independently coded structural pass reconstructed all 38,421 leaves, 38,319 internal nodes, and 153,684 exact leaf-coordinate comparisons. Exact boundary controls accepted 32 closed outer-boundary cases across both seeds and all coordinates, rejected 16 epsilon-outside cases, and rejected 18 seed-touching cases. Four additional interface controls failed closed, and a separately compiled weighted backend rejected use as a local radial contraction engine.

The membership component is bound by receipt hash to the fresh full pass. It accepted all 2,354 supplied pilot records and all eight positive examples, with zero nonaccepted records. This membership component is not a standalone uniform certificate.

## Mathematical scope

The native theorem excludes a physical order-six complex Hadamard whose selected corner has positive `R` and is maximal among all 400 positional corners, including ties, at positive circular sup-distance at most `1/20` from either stationary seed `(2,4,4,2)pi/3` or `(4,2,2,4)pi/3`. The closed outer boundary is included; the center is handled separately by `R = 0`. The result does not exclude arbitrary nonmaximal corners and does not complete the no-four-MUBs theorem.

## Formal status

No Lean compilation was performed in this replay, and there are zero physical Lean admissions. Under the project Lean policy, this native certificate and its analytic argument remain research inputs until the soundness bridge, physical implications, and dependencies are kernel checked. The replay therefore receives no Lean proof credit.
