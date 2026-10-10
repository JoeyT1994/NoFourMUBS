#!/usr/bin/env bash
# Run from any directory after placing this output folder in Step2LeanHandoff/.
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/lean"

# Serial jobs avoid concurrent large resultant certificates exhausting RAM.
export LEAN_NUM_THREADS=1
lake update
lake exe cache get
for n in 4 6 8 10; do
  lake build "Hadamard6.KarlssonWitnessResultant${n}"
done
lake build Step2Statements
lake env lean TopologyCoreAxioms.lean
