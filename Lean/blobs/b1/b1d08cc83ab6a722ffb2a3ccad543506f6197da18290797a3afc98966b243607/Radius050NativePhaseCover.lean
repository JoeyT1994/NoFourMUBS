import Radius050CoverRootJoin
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.IntervalCases

/-!
Exact real-angle semantics for the native radius-1/20 root grid.

The native engine enumerates `(a,b,c,d)` in the order
`{-1,0,1} x {0,...,5} x {-1,0,1} x {0,...,5}` and writes each side phase as
`root6(g[j]) * exp(i*u[j])`, initially with `|u[j]| <= pi/6`.  This file uses
`Real.pi` throughout.  It does not identify these four side-chart offsets with
the four northwest seed perturbations used elsewhere in the engine.

The finite equalities below connect the raw 324 native roots to the previously
checked canonical 324-cell table and its 102 representative records.  They do
not assert that the three combinatorial orbit generators are physically
realized on a Hadamard matrix; that remains a separate physical theorem.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Radius050PhaseBridge20261006
open Centiradian20261006
open Radius050Bridge20261006
noncomputable section

/-- The literal, uncanonicalized root order constructed by `engine.cpp`. -/
def sixRoots : List Int := [0, 1, 2, 3, 4, 5]

def nativeRawGrid : List GridRoot :=
  [-1, 0, 1].flatMap fun a =>
    sixRoots.flatMap fun b =>
      [-1, 0, 1].flatMap fun c =>
        sixRoots.map fun d =>
          (⟨a, b, c, d⟩ : GridRoot)

def rootCoordinate (r : GridRoot) : Fin 4 → Int :=
  ![r.a, r.b, r.c, r.d]

/-- Exact mathematical center angle represented by a native sixth-root index. -/
def rootAngle (n : Int) : ℝ := (n : ℝ) * Real.pi / 3

def rootLower (n : Int) : ℝ := rootAngle n - Real.pi / 6
def rootUpper (n : Int) : ℝ := rootAngle n + Real.pi / 6

/-- Consecutive native cells retain their common closed face exactly. -/
theorem adjacent_root_cells_share_face (n : Int) :
    rootUpper n = rootLower (n + 1) := by
  simp [rootUpper, rootLower, rootAngle]
  ring

/-- The absolute real-angle cell obtained from the root index and the native
closed local offset `[-pi/6,pi/6]`. -/
def rootCell (r : GridRoot) : PhaseBox 4 :=
  ⟨fun j => rootLower (rootCoordinate r j), fun j => rootUpper (rootCoordinate r j)⟩

/-- The initial box followed by every native path.  This is a side-chart offset
box; no northwest seed angle occurs in its definition. -/
def nativeLocalOffsetBox : PhaseBox 4 :=
  ⟨fun _ => -Real.pi / 6, fun _ => Real.pi / 6⟩

/-- One exact real lift of the native initial angular domain: the first root in
each side pair is anchored to the right half-plane, while the second ranges
over a full six-cell period. -/
def NativeRadianDomain (theta : Fin 4 → ℝ) : Prop :=
  -Real.pi / 2 ≤ theta 0 ∧ theta 0 ≤ Real.pi / 2 ∧
  -Real.pi / 6 ≤ theta 1 ∧ theta 1 ≤ 11 * Real.pi / 6 ∧
  -Real.pi / 2 ≤ theta 2 ∧ theta 2 ≤ Real.pi / 2 ∧
  -Real.pi / 6 ≤ theta 3 ∧ theta 3 ≤ 11 * Real.pi / 6

def chooseAnchor (x : ℝ) : Int :=
  if x ≤ -Real.pi / 6 then -1 else if x ≤ Real.pi / 6 then 0 else 1

def chooseCycle (x : ℝ) : Int :=
  if x ≤ Real.pi / 6 then 0
  else if x ≤ Real.pi / 2 then 1
  else if x ≤ 5 * Real.pi / 6 then 2
  else if x ≤ 7 * Real.pi / 6 then 3
  else if x ≤ 3 * Real.pi / 2 then 4
  else 5

def chosenRoot (theta : Fin 4 → ℝ) : GridRoot :=
  ⟨chooseAnchor (theta 0), chooseCycle (theta 1),
    chooseAnchor (theta 2), chooseCycle (theta 3)⟩

theorem chooseAnchor_mem (x : ℝ) : chooseAnchor x ∈ ([-1, 0, 1] : List Int) := by
  by_cases h0 : x ≤ -Real.pi / 6
  · simp [chooseAnchor, h0]
  · by_cases h1 : x ≤ Real.pi / 6
    · simp [chooseAnchor, h0, h1]
    · simp [chooseAnchor, h0, h1]

theorem chooseCycle_mem (x : ℝ) : chooseCycle x ∈ sixRoots := by
  by_cases h0 : x ≤ Real.pi / 6
  · simp [chooseCycle, sixRoots, h0]
  · by_cases h1 : x ≤ Real.pi / 2
    · simp [chooseCycle, sixRoots, h0, h1]
    · by_cases h2 : x ≤ 5 * Real.pi / 6
      · simp [chooseCycle, sixRoots, h0, h1, h2]
      · by_cases h3 : x ≤ 7 * Real.pi / 6
        · simp [chooseCycle, sixRoots, h0, h1, h2, h3]
        · by_cases h4 : x ≤ 3 * Real.pi / 2
          · simp [chooseCycle, sixRoots, h0, h1, h2, h3, h4]
          · simp [chooseCycle, sixRoots, h0, h1, h2, h3, h4]

theorem chooseAnchor_covers {x : ℝ} (hlo : -Real.pi / 2 ≤ x)
    (hhi : x ≤ Real.pi / 2) :
    rootLower (chooseAnchor x) ≤ x ∧ x ≤ rootUpper (chooseAnchor x) := by
  unfold chooseAnchor
  by_cases hneg : x ≤ -Real.pi / 6
  · simp only [hneg, if_pos]
    simp [rootLower, rootUpper, rootAngle]
    constructor <;> linarith [Real.pi_pos]
  · simp only [hneg, if_false]
    by_cases hmid : x ≤ Real.pi / 6
    · simp only [hmid, if_pos]
      simp [rootLower, rootUpper, rootAngle]
      constructor <;> linarith [Real.pi_pos]
    · simp only [hmid, if_false]
      simp [rootLower, rootUpper, rootAngle]
      constructor <;> linarith [Real.pi_pos]

theorem chooseCycle_covers {x : ℝ} (hlo : -Real.pi / 6 ≤ x)
    (hhi : x ≤ 11 * Real.pi / 6) :
    rootLower (chooseCycle x) ≤ x ∧ x ≤ rootUpper (chooseCycle x) := by
  unfold chooseCycle
  by_cases h0 : x ≤ Real.pi / 6
  · simp only [h0, if_pos]
    simp [rootLower, rootUpper, rootAngle]
    constructor <;> linarith [Real.pi_pos]
  · simp only [h0, if_false]
    by_cases h1 : x ≤ Real.pi / 2
    · simp only [h1, if_pos]
      simp [rootLower, rootUpper, rootAngle]
      constructor <;> linarith [Real.pi_pos]
    · simp only [h1, if_false]
      by_cases h2 : x ≤ 5 * Real.pi / 6
      · simp only [h2, if_pos]
        simp [rootLower, rootUpper, rootAngle]
        constructor <;> linarith [Real.pi_pos]
      · simp only [h2, if_false]
        by_cases h3 : x ≤ 7 * Real.pi / 6
        · simp only [h3, if_pos]
          simp [rootLower, rootUpper, rootAngle]
          constructor <;> linarith [Real.pi_pos]
        · simp only [h3, if_false]
          by_cases h4 : x ≤ 3 * Real.pi / 2
          · simp only [h4, if_pos]
            simp [rootLower, rootUpper, rootAngle]
            constructor <;> linarith [Real.pi_pos]
          · simp only [h4, if_false]
            simp [rootLower, rootUpper, rootAngle]
            constructor <;> linarith [Real.pi_pos]

theorem chosenRoot_mem_nativeRawGrid (theta : Fin 4 → ℝ) :
    chosenRoot theta ∈ nativeRawGrid := by
  unfold nativeRawGrid chosenRoot
  simp only [List.mem_flatMap, List.mem_map]
  refine ⟨chooseAnchor (theta 0), chooseAnchor_mem _, ?_⟩
  refine ⟨chooseCycle (theta 1), chooseCycle_mem _, ?_⟩
  refine ⟨chooseAnchor (theta 2), chooseAnchor_mem _, ?_⟩
  exact ⟨chooseCycle (theta 3), chooseCycle_mem _, rfl⟩

theorem chosenRoot_covers {theta : Fin 4 → ℝ} (h : NativeRadianDomain theta) :
    (rootCell (chosenRoot theta)).Contains theta := by
  rcases h with ⟨h0l, h0u, h1l, h1u, h2l, h2u, h3l, h3u⟩
  intro j
  fin_cases j
  · simpa [rootCell, rootCoordinate, chosenRoot] using chooseAnchor_covers h0l h0u
  · simpa [rootCell, rootCoordinate, chosenRoot] using chooseCycle_covers h1l h1u
  · simpa [rootCell, rootCoordinate, chosenRoot] using chooseAnchor_covers h2l h2u
  · simpa [rootCell, rootCoordinate, chosenRoot] using chooseCycle_covers h3l h3u

/-- The complete closed real domain is covered by the literal 324 native
pi/6-scaled cells.  Shared faces are intentionally retained. -/
theorem native_root_grid_covers (theta : Fin 4 → ℝ) (h : NativeRadianDomain theta) :
    ∃ root ∈ nativeRawGrid, (rootCell root).Contains theta :=
  ⟨chosenRoot theta, chosenRoot_mem_nativeRawGrid theta, chosenRoot_covers h⟩

def localOffset (root : GridRoot) (theta : Fin 4 → ℝ) : Fin 4 → ℝ :=
  fun j => theta j - rootAngle (rootCoordinate root j)

theorem rootCell_iff_localOffset (root : GridRoot) (theta : Fin 4 → ℝ) :
    (rootCell root).Contains theta ↔ nativeLocalOffsetBox.Contains (localOffset root theta) := by
  constructor <;> intro h j
  · rcases h j with ⟨hl, hu⟩
    simp [rootCell, rootLower, rootUpper] at hl hu
    simp [nativeLocalOffsetBox, localOffset]
    constructor <;> linarith
  · rcases h j with ⟨hl, hu⟩
    simp [nativeLocalOffsetBox, localOffset] at hl hu
    simp [rootCell, rootLower, rootUpper]
    constructor <;> linarith

theorem native_root_grid_covers_with_offsets (theta : Fin 4 → ℝ)
    (h : NativeRadianDomain theta) :
    ∃ root ∈ nativeRawGrid, nativeLocalOffsetBox.Contains (localOffset root theta) ∧
      ∀ j, theta j = rootAngle (rootCoordinate root j) + localOffset root theta j := by
  obtain ⟨root, hroot, hcell⟩ := native_root_grid_covers theta h
  refine ⟨root, hroot, (rootCell_iff_localOffset root theta).mp hcell, ?_⟩
  intro j
  simp [localOffset]

/-- Exact complex phase factorization used by the native side chart. -/
theorem exact_side_phase_factorization (root : GridRoot) (u : Fin 4 → ℝ) (j : Fin 4) :
    Complex.exp (Complex.I * (rootAngle (rootCoordinate root j) + u j)) =
      Complex.exp (Complex.I * rootAngle (rootCoordinate root j)) *
        Complex.exp (Complex.I * u j) := by
  rw [← Complex.exp_add]
  congr 1
  ring

/-- The raw native list has exactly the declared 324 entries. -/
theorem native_raw_grid_count : nativeRawGrid.length = 324 := by decide +kernel

/-- Canonicalizing the native raw enumeration gives exactly the previously
checked 324-cell table, in the same order. -/
theorem native_raw_to_initial_grid_exact :
    nativeRawGrid.map GridRoot.canonical = initialGrid := by decide +kernel

theorem canonical_mem_initialGrid {root : GridRoot} (hroot : root ∈ nativeRawGrid) :
    root.canonical ∈ initialGrid := by
  rw [← native_raw_to_initial_grid_exact]
  exact List.mem_map.mpr ⟨root, hroot, rfl⟩

private theorem chunk_member_unique (index : Nat) (cell : GridRoot)
    (hcell : cell ∈ partitionChunk index) (hcheck : partitionChunkCheck index = true) :
    representationMultiplicity cell = 1 := by
  have hbool := List.all_eq_true.mp hcheck cell hcell
  simpa using hbool

/-- Every native cell lies in exactly one of the 102 explicit combinatorial
orbits.  The proof assembles the twelve previously checked 27-cell chunks. -/
theorem initial_cell_unique_representative {cell : GridRoot} (hcell : cell ∈ initialGrid) :
    representationMultiplicity cell = 1 := by
  have hflat : cell ∈ (List.range 12).flatMap partitionChunk := by
    simpa [partition_chunks_cover] using hcell
  obtain ⟨index, hindex, hchunk⟩ := List.mem_flatMap.mp hflat
  have hi : index < 12 := List.mem_range.mp hindex
  interval_cases index
  · exact chunk_member_unique 0 cell hchunk partition_chunk00
  · exact chunk_member_unique 1 cell hchunk partition_chunk01
  · exact chunk_member_unique 2 cell hchunk partition_chunk02
  · exact chunk_member_unique 3 cell hchunk partition_chunk03
  · exact chunk_member_unique 4 cell hchunk partition_chunk04
  · exact chunk_member_unique 5 cell hchunk partition_chunk05
  · exact chunk_member_unique 6 cell hchunk partition_chunk06
  · exact chunk_member_unique 7 cell hchunk partition_chunk07
  · exact chunk_member_unique 8 cell hchunk partition_chunk08
  · exact chunk_member_unique 9 cell hchunk partition_chunk09
  · exact chunk_member_unique 10 cell hchunk partition_chunk10
  · exact chunk_member_unique 11 cell hchunk partition_chunk11

theorem native_cell_unique_representative {root : GridRoot} (hroot : root ∈ nativeRawGrid) :
    representationMultiplicity root.canonical = 1 :=
  initial_cell_unique_representative (canonical_mem_initialGrid hroot)

/-- This imports the checked ordered join to the concrete 102 cover records;
the theorem is stated here to make the dependency of the phase bridge explicit. -/
theorem representative_cover_roots_are_exact :
    allRepresentativeCovers.map RepresentativeCover.gridRoot = representativeRoots :=
  cover_record_roots_exact

theorem initial_cell_has_representative_cover {cell : GridRoot}
    (hcell : cell ∈ initialGrid) :
    ∃ record ∈ allRepresentativeCovers, record.gridRoot.orbit.contains cell = true := by
  have hmult := initial_cell_unique_representative hcell
  unfold representationMultiplicity at hmult
  let filtered := representativeRoots.filter fun root => root.orbit.contains cell
  have hlength : filtered.length = 1 := by simpa [filtered] using hmult
  have hne : filtered ≠ [] := by
    intro hempty
    simp [hempty] at hlength
  obtain ⟨root, hrootFiltered⟩ := List.exists_mem_of_ne_nil filtered hne
  have hroot : root ∈ representativeRoots ∧ root.orbit.contains cell = true := by
    simpa [filtered] using hrootFiltered
  have hmapped : root ∈ allRepresentativeCovers.map RepresentativeCover.gridRoot := by
    rw [cover_record_roots_exact]
    exact hroot.1
  obtain ⟨record, hrecord, heq⟩ := List.mem_map.mp hmapped
  exact ⟨record, hrecord, by simpa [heq] using hroot.2⟩

theorem native_cell_has_representative_cover {root : GridRoot}
    (hroot : root ∈ nativeRawGrid) :
    ∃ record ∈ allRepresentativeCovers,
      record.gridRoot.orbit.contains root.canonical = true :=
  initial_cell_has_representative_cover (canonical_mem_initialGrid hroot)

/-- Every one of the 102 concrete trees covers the exact local side-offset
box.  No terminal kind is interpreted here as a mathematical rejection. -/
theorem representative_tree_covers_native_local_box (record : RepresentativeCover)
    (hrecord : record ∈ allRepresentativeCovers) (u : Fin 4 → ℝ)
    (hu : nativeLocalOffsetBox.Contains u) :
    ∃ path kind, (path, kind) ∈ record.tree.paths ∧
      (follow nativeLocalOffsetBox 0 path).Contains u :=
  every_representative_closed_cover record hrecord nativeLocalOffsetBox u hu

end
end Radius050PhaseBridge20261006

#print axioms Radius050PhaseBridge20261006.chooseAnchor_covers
#print axioms Radius050PhaseBridge20261006.chooseCycle_covers
#print axioms Radius050PhaseBridge20261006.adjacent_root_cells_share_face
#print axioms Radius050PhaseBridge20261006.native_root_grid_covers
#print axioms Radius050PhaseBridge20261006.rootCell_iff_localOffset
#print axioms Radius050PhaseBridge20261006.native_root_grid_covers_with_offsets
#print axioms Radius050PhaseBridge20261006.exact_side_phase_factorization
#print axioms Radius050PhaseBridge20261006.native_raw_grid_count
#print axioms Radius050PhaseBridge20261006.native_raw_to_initial_grid_exact
#print axioms Radius050PhaseBridge20261006.initial_cell_unique_representative
#print axioms Radius050PhaseBridge20261006.native_cell_unique_representative
#print axioms Radius050PhaseBridge20261006.representative_cover_roots_are_exact
#print axioms Radius050PhaseBridge20261006.initial_cell_has_representative_cover
#print axioms Radius050PhaseBridge20261006.native_cell_has_representative_cover
#print axioms Radius050PhaseBridge20261006.representative_tree_covers_native_local_box
