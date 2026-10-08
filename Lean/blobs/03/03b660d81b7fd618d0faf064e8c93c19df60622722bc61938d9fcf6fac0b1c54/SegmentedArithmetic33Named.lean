import SegmentedArithmetic33

/- Public proof-only data names make the checker proposition syntactically stable. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.SegmentedArithmetic33Named
attribute [local irreducible] checkWitnessTape

noncomputable def pending : List CellCode := ((List.range' 68 32).map ordinalCellCode) ++ ([ordinalCellCode 2241383])
noncomputable def tags : List WitnessTag := ([
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
      .midpoint 0]) ++ ([.split, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0, .accept 0, .split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0, .accept 0, .split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196, .accept 0, .split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0, .accept 0])

theorem checked_direct : checkWitnessTape pending tags = true := by
  exact Seed0024PhaseCore20261007.SegmentedArithmetic33.checked
#print axioms checked_direct
end Seed0024PhaseCore20261007.SegmentedArithmetic33Named
