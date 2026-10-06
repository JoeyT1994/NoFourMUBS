# Full-ring boxes strictly outside radius 0.03

This directory contains a bounded read-only compactor for the historical
`full_ring_original_id` ledger. It independently verifies the frozen exact
geometry, the complete main packet chain, category bindings, and the 1,857
supplemental own-box replays before emitting a compact status vector and
human-readable range stream.

Status `0` means the exact whole closed box is not proved strictly outside
`3/100` from its own seed. Statuses `1` and `2` are own-box fresh numerical
replays. Status `8` is an own-box replay imported byte-for-byte from the pinned
prior-replay ledger. Statuses `3` and `9` are their respective exact conjugation
transports. Statuses `4` and `5` retain accepted external-handoff provenance.
Statuses `6` and `7` remain unresolved. No category receives Lean or physical
theorem credit.

The live export2 outside-0.1 campaign uses a different ID namespace and is not
folded into this old full-ring vector. Its fresh replay ledger must be combined
separately. The failed survivor-v2 continuation is also omitted until its
per-parent receipts receive an independent normalized audit.
