import KernelAtlas.Edge.SmallBall.Check0

namespace NoFourMUBs.KernelAtlas.Edge.SmallBall

open NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Edge NoFourMUBs.KernelAtlas.Seed

def checkedTable : List {X : FullBoxD // fullBox ball enclosure Fourier.frame Fourier.fq X = true} := [
  ⟨B0.full, B0.checked⟩
]

theorem table_length : checkedTable.length = 1 := by decide +kernel

def checked (i : Fin 1) := checkedTable.get ⟨i, by rw [table_length]; exact i.2⟩
def X (i : Fin 1) : FullBoxD := (checked i).1
theorem all_checked (i) : fullBox ball enclosure Fourier.frame Fourier.fq (X i) = true := (checked i).2
def Ds (i : Fin 1) : EBoxD := (X i).box
def ds : List EBoxD := (List.finRange 1).map Ds
def entries : List (CoverEntry 1) := [
  ⟨⟨0, 0, 0, 0, 0⟩, ⟨0, by decide⟩⟩
]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cover_checked : ballOK radius 0 (entries.map CoverEntry.cell) = true := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem matches_checked : coverTableOK radius Ds entries = true := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem overlaps_checked : overlapsOK ds = true := by decide +kernel

theorem covered : ∀ w, NoFourMUBs.SeedAtlas.wnorm w ≤ rn radius → ∃ i, w ∈ boxRegion (Ds i) :=
  (coverTable_sound matches_checked cover_checked).1
open Filter Topology in
theorem interior_covered : ∀ w, NoFourMUBs.SeedAtlas.wnorm w < rn radius → ∃ i,
    {u | Seed.InBox (Ds i).hb u} ∈ 𝓝 (localOf (Ds i) w) :=
  (coverTable_sound matches_checked cover_checked).2

theorem compatible (i j) (w : Fin 4 → ℝ) (_hw : NoFourMUBs.SeedAtlas.wnorm w ≤ rn radius)
    (hi : w ∈ boxRegion (Ds i)) (hj : w ∈ boxRegion (Ds j)) : overlapOK (Ds i) (Ds j) = true := by
  apply overlapsOK_sound overlaps_checked ?_ ?_ hi hj <;> simp [ds]

noncomputable def cert (hX : NoFourMUBs.SeedAtlas.XExclusion (xRadius : ℝ)) : NoFourMUBs.SeedAtlas.EdgeX.EdgeBallCert :=
  assemble ball enclosure radius frameT frameLam X all_checked frame_checked graph_checked
    covered interior_covered compatible x_radius_checked hX

noncomputable def globalChart := assembledChart ball enclosure radius X all_checked covered compatible

theorem cert_Q (hX : NoFourMUBs.SeedAtlas.XExclusion (xRadius : ℝ)) :
    (cert hX).Q = globalChart.Q := rfl

end NoFourMUBs.KernelAtlas.Edge.SmallBall
