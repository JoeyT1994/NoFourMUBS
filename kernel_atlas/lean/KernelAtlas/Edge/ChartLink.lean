import KernelAtlas.Edge.Assembly
import KernelAtlas.Edge.Transfer

/-! Fine transfer cores agree with a containing chart from the certified ball cover. -/

open Complex Hadamard6 NoFourMUBs.SeedAtlas Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- The fine source lies in its parent, and its roots lie in the parent's uniqueness tubes. -/
def sourceLinkOK (D parent : EBoxD) : Bool :=
  boxIn parent.hb (boxShift D parent) D.hb && overlapOK D parent

lemma localOf_shift (D E : EBoxD) (w : Fin 4 → ℝ) :
    (fun k : Fin 4 => rq (gi (boxShift D E) k)+localOf D w k) = localOf E w := by
  ext k
  have he : gi (boxShift D E) k = gi D.wc k-gi E.wc k := by fin_cases k <;> rfl
  simp only [he, localOf, rq]
  push_cast
  ring

theorem sourceLinkOK_mem {D E : EBoxD} (h : sourceLinkOK D E = true) {w : Fin 4 → ℝ}
    (hw : w ∈ boxRegion D) : w ∈ boxRegion E := by
  simp only [sourceLinkOK, Bool.and_eq_true] at h
  have hm := boxIn_spec h.1 hw
  rwa [localOf_shift] at hm

/-- Fine source models can be used for the global chart even when their core is not in its cover. -/
theorem sourceLinkOK_eq {B : EBallD} {r : ℕ} {ι : Type*} {Ds : ι → EBoxD}
    {Cs : ∀ i, BoxChart B (Ds i)} (G : BallChart B r Ds Cs) (i : ι)
    {D : EBoxD} (C : BoxChart B D) (hc : coreOK B D = true) (hp : coreOK B (Ds i) = true)
    (hlink : sourceLinkOK D (Ds i) = true) {w : Fin 4 → ℝ}
    (hw : wnorm w ≤ rn r) (hd : w ∈ boxRegion D) : G.Q w = C.Q ⟨localOf D w, hd⟩ := by
  have hm := sourceLinkOK_mem hlink hd
  rw [G.local_eq i w hw hm]
  symm
  have ho := hlink
  simp only [sourceLinkOK, Bool.and_eq_true] at ho
  apply C.overlap (Cs i) hc hp ho.2
  rw [ewOf_localOf, ewOf_localOf]

end NoFourMUBs.KernelAtlas.Edge
