import SeedPhaseTape

/- Exact already-checked ordinal batch [68,100), compressed to one exported
statement. Every unchanged arithmetic test and the raw-tag erasure are again
kernel-evaluated. This candidate imports no previous pilot proof object. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.CompactOrdinalBatch68Count32

theorem checked_and_erased :
    let pending : List CellCode := (List.range' 68 32).map ordinalCellCode
    let tags : List WitnessTag := [
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .endpoint 0 227309055,
      .endpoint 1 226609057,
      .endpoint 1 223034746,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0,
      .midpoint 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.CompactOrdinalBatch68Count32
