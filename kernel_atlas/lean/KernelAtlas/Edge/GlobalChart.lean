import KernelAtlas.Edge.Overlap
import KernelAtlas.Seed.Cover

/-! Gluing checked local charts and obtaining their finite ball cover from the dyadic traversal. -/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def localOf (D : EBoxD) (w : Fin 4 → ℝ) : Fin 4 → ℝ := fun l => w l - rq (gi D.wc l)

lemma ewOf_localOf (D : EBoxD) (w : Fin 4 → ℝ) : ewOf D (localOf D w) = w := by
  funext l
  simp only [ewOf, localOf]
  ring

@[fun_prop] lemma continuous_localOf (D : EBoxD) : Continuous (localOf D) := by
  unfold localOf
  fun_prop

def boxRegion (D : EBoxD) : Set (Fin 4 → ℝ) := {w | InBox D.hb (localOf D w)}

theorem isClosed_boxRegion (D : EBoxD) : IsClosed (boxRegion D) := by
  change IsClosed {w | ∀ l : Fin 4, |localOf D w l| ≤ rn (D.hb.getD l 0)}
  simp only [setOf_forall]
  apply isClosed_iInter
  intro l
  exact isClosed_le ((continuous_apply l).comp (continuous_localOf D)).abs continuous_const

/-- Finite-cover gluing retains equality to every applicable checked model, not just the first box. -/
theorem glue_boxCharts {ι : Type*} [Finite ι] (B : EBallD) (D : ι → EBoxD)
    (hk : ∀ i, coreOK B (D i) = true) (C : ∀ i, BoxChart B (D i)) (S : Set (Fin 4 → ℝ))
    (hcover : ∀ w ∈ S, ∃ i, w ∈ boxRegion (D i))
    (hover : ∀ i j w, w ∈ S → w ∈ boxRegion (D i) → w ∈ boxRegion (D j) → overlapOK (D i) (D j) = true) :
    ∃ Q : S → RMat6, Continuous Q ∧ ∀ i (w : S) (hw : w.1 ∈ boxRegion (D i)),
      Q w = (C i).Q ⟨localOf (D i) w.1, hw⟩ := by
  let V : ι → Set S := fun i => {w | w.1 ∈ boxRegion (D i)}
  let f : ∀ i, V i → RMat6 := fun i w => (C i).Q ⟨localOf (D i) w.1.1, w.2⟩
  have hc : ∀ i, Continuous (f i) := by
    intro i
    apply (C i).continuous.comp
    apply Continuous.subtype_mk
    exact (continuous_localOf (D i)).comp (continuous_subtype_val.comp continuous_subtype_val)
  have hv : ∀ i, IsClosed (V i) := fun i =>
    (isClosed_boxRegion (D i)).preimage continuous_subtype_val
  have hcv : ∀ w : S, ∃ i, w ∈ V i := fun w => hcover w.1 w.2
  obtain ⟨Q, hQ, h⟩ := glue_finite V hv hcv f hc (by
    intro i j w hi hj
    apply (C i).overlap (C j) (hk i) (hk j) (hover i j w.1 w.2 hi hj)
    rw [ewOf_localOf, ewOf_localOf])
  exact ⟨Q, hQ, h⟩

/-- Enlarged edge boxes may contain their listed dyadic boxes; their centres need not be rounded again. -/
def coverMatch (r : ℕ) (b : Bx) (D : EBoxD) : Bool :=
  decide (r % 2 ^ b.m = 0) &&
    (l4 fun l => decide (gi D.wc l = gi (b.wcZ r) l ∧ gn (b.hbN r) l ≤ gn D.hb l)).all id

theorem coverMatch_sound {r : ℕ} {b : Bx} {D : EBoxD} (hm : coverMatch r b D = true)
    {w : Fin 4 → ℝ} (hw : b.Mem (rn r) w) : w ∈ boxRegion D := by
  simp only [coverMatch, Bool.and_eq_true, decide_eq_true_eq] at hm
  have hb := Bx.inBox_of_mem hm.1 hw
  intro l
  have h := of_decide_eq_true (all_l4 hm.2 l.2)
  change |w l - rq (gi D.wc l)| ≤ rn (gn D.hb l)
  rw [h.1]
  exact (hb l).trans (rn_mono h.2)

/-- The existing exact ball traversal supplies the cover hypothesis for gluing. -/
theorem edge_ball_cover {ι : Type*} (D : ι → EBoxD) {r maxl : ℕ} {Ls : List Bx}
    (hc : ballOK r maxl Ls = true) (hm : ∀ b ∈ Ls, ∃ i, coverMatch r b (D i) = true) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (D i) := by
  intro w hw
  obtain ⟨b, hb, hbm⟩ := ball_cover hc w hw
  obtain ⟨i, hi⟩ := hm b hb
  exact ⟨i, coverMatch_sound hi hbm⟩

/-- The same match check connects the sphere traversal to edge transfer source boxes. -/
theorem edge_sphere_cover {ι : Type*} (D : ι → EBoxD) {r maxl : ℕ} {Ls : List Bx}
    (hc : sphereOK r maxl Ls = true) (hm : ∀ b ∈ Ls, ∃ i, coverMatch r b (D i) = true) :
    ∀ w : Fin 4 → ℝ, wnorm w = rn r → ∃ i, w ∈ boxRegion (D i) := by
  intro w hw
  obtain ⟨b, hb, hbm⟩ := sphere_cover hc w hw
  obtain ⟨i, hi⟩ := hm b hb
  exact ⟨i, coverMatch_sound hi hbm⟩

end NoFourMUBs.KernelAtlas.Edge
