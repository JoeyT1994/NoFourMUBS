import SeedPhaseTape

/- A bounded candidate for the actual 33-tag child4 subtree. The generator is
untrusted; this theorem, if checked, proves only the pure witness checker.
Exact refinement to the physical checker and independent review are separate. -/
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.PureChild4

def tags : List WitnessTag := [
  .split,
  .midpoint 1,
  .endpoint 1 137523506,
  .midpoint 1,
  .accept 0,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .endpoint 1 138007504,
  .accept 0,
  .accept 0,
  .accept 0,
  .midpoint 1,
  .accept 0,
  .midpoint 1,
  .endpoint 4 190599154,
  .midpoint 1,
  .endpoint 1 137367736,
  .midpoint 1,
  .accept 0,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1,
  .midpoint 1
]

theorem erased_fixture : eraseTape tags = [54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1] := by
  decide +kernel
#print axioms erased_fixture

theorem checked : checkWitnessTape [childCell (ordinalCellCode 2241383) 4] tags = true := by
  decide +kernel
#print axioms checked

end Seed0024PhaseCore20261007.PureChild4
