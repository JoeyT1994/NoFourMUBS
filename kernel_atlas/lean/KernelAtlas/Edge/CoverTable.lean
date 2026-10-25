import KernelAtlas.Edge.CoverChecks

/-! Indexed finite cover tables, preserving the link from each traversal cell to its checked box. -/

open Hadamard6 NoFourMUBs.SeedAtlas Filter Topology Set

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

structure CoverEntry (n : ℕ) where
  cell : Bx
  box : Fin n

def coverTableOK {n : ℕ} (r : ℕ) (Ds : Fin n → EBoxD) (es : List (CoverEntry n)) : Bool :=
  es.all fun e => interiorMatch r e.cell (Ds e.box)

theorem coverTable_sound {n r maxl : ℕ} {Ds : Fin n → EBoxD} {es : List (CoverEntry n)}
    (ht : coverTableOK r Ds es = true)
    (hc : ballOK r maxl (es.map CoverEntry.cell) = true) :
    (∀ w, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (Ds i)) ∧
    ∀ w, wnorm w < rn r → ∃ i, {u | InBox (Ds i).hb u} ∈ 𝓝 (localOf (Ds i) w) := by
  have hall (w : Fin 4 → ℝ) (hw : wnorm w ≤ rn r) :
      ∃ i, {u | InBox (Ds i).hb u} ∈ 𝓝 (localOf (Ds i) w) := by
    obtain ⟨b, hb, hw⟩ := ball_cover hc w hw
    obtain ⟨e, he, rfl⟩ := List.mem_map.mp hb
    exact ⟨e.box, interiorMatch_sound (List.all_eq_true.mp ht e he) hw⟩
  constructor
  · intro w hw
    obtain ⟨i, hi⟩ := hall w hw
    exact ⟨i, show InBox (Ds i).hb (localOf (Ds i) w) from mem_of_mem_nhds hi⟩
  · exact fun w hw => hall w hw.le

end NoFourMUBs.KernelAtlas.Edge
