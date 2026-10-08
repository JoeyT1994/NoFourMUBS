# One complete phase-root replay, with physical refinement still pending

The Lean kernel checked the Std-only witness tape for the complete phase root
2241383, together with exact erasure to the pinned 385-byte supplier fixture.
It checks 373 arithmetic leaves and all 32 children at each of 12 splits. The
compositional check took 72.96 seconds and peaked at 1,174,372,352 bytes RSS.

This is **one phase root out of 2,476,099**. It is not a physical supplier box.
This packet closes **zero of the 36 physical boxes** and does not establish the
global no-four-MUBs theorem. The exact refinement from these pure integer
definitions to the physical checker, and complete finite-forest acceptance,
remain outside this packet. Included independent reviews cover all 410 selected
declarations and the source/receipt collection. These reviews establish the
stated one-root scope; preserve it when reusing the packet.

The six-file source closure imports only Std. Its 410 printed declarations are
387 internal pilot steps and 23 helper/control results, all with standard axioms;
they are not 410 independent physical results. No native decision oracle, research
axiom, failed source, compiled object, full forest payload, or host configuration
is included. Successful checks used the pinned Lean/Std object cache; no clean
rebuild of that library or of this relocated packet is claimed.

Run `python3 verify_inventory.py` to verify file pins and source closure. Run
`python3 tools/reproduce_fixture.py --output /tmp/pure-root385-proposal` to
regenerate the exact pilot source from the small fixture and integer arrays.
This generator is untrusted: Lean acceptance supplies the proof.

`lean-toolchain` and `lakefile.toml` describe the source build. For controlled
replay, `tools/replay.py` prints a six-step plan by default. Supply a reviewed
standalone Lean guard and a runtime configuration using the pinned toolchain;
add `--run` only to execute the serialized plan. Each step retains the original
180-second, 2304-MiB heap, 2816-MiB RSS and 2-GiB disk-reserve limits. The wrapper
does not implement or weaken the supplied guard. Avoid an unbounded parallel
`lake build` when reproducing the resource measurements.

The manifest and narrow receipts bind successful frozen sources, dependency
objects, original result/log hashes and exported axiom lines. Native counts,
hashes and generator agreement are provenance checks, not substitutes for the
acceptance theorem or complete root coverage.
