import KernelAtlas.Edge.C1eSide
import Mathlib.Topology.Maps.Proper.Basic

/-!
# Continuity of a unique tube solution and Hadamard closure

A jointly continuous equation with a unique solution in a fixed compact set defines a continuous
solution. Subtracting the continuous predictor turns the moving Krawczyk tube into such a set.
The final lemma extends the Hadamard property from a dense subset of a closed parameter domain.
-/

open Set Metric NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- A unique solution in a compact space is continuous, by closed projection of its graph. -/
theorem continuous_unique_zero {P X Z : Type*} [TopologicalSpace P] [TopologicalSpace X]
    [CompactSpace X] [TopologicalSpace Z] [T2Space Z] [Zero Z]
    (F : P × X → Z) (hF : Continuous F) (f : P → X)
    (hz : ∀ p x, F (p, x) = 0 ↔ x = f p) : Continuous f := by
  refine continuous_iff_isClosed.mpr fun s hs => ?_
  have hc : IsClosed ({z : P × X | F z = 0} ∩ Prod.snd ⁻¹' s) :=
    (isClosed_eq hF continuous_const).inter (hs.preimage continuous_snd)
  have he : f ⁻¹' s = Prod.fst '' ({z : P × X | F z = 0} ∩ Prod.snd ⁻¹' s) := by
    ext p
    constructor
    · intro hp; exact ⟨(p, f p), ⟨(hz p (f p)).2 rfl, hp⟩, rfl⟩
    · rintro ⟨⟨p', x⟩, ⟨h0, hx⟩, rfl⟩
      change f p' ∈ s
      rw [← (hz p' x).1 h0]
      exact hx
  rw [he]
  exact isClosedMap_fst_of_compactSpace _ hc

/-- Continuity of a selected zero in a moving closed sup-norm tube. -/
theorem continuous_tube_zero {P : Type*} [TopologicalSpace P] {m : ℕ}
    (F : P → (Fin m → ℝ) → (Fin m → ℝ)) (hF : Continuous (Function.uncurry F))
    (pred sol : P → (Fin m → ℝ)) (hp : Continuous pred) (ρ : ℝ)
    (hmem : ∀ p, sol p ∈ closedBall (pred p) ρ) (hzero : ∀ p, F p (sol p) = 0)
    (huniq : ∀ p x, x ∈ closedBall (pred p) ρ → F p x = 0 → x = sol p) : Continuous sol := by
  let K : Set (Fin m → ℝ) := closedBall 0 ρ
  let : CompactSpace K := isCompact_iff_compactSpace.mp (isCompact_closedBall (0 : Fin m → ℝ) ρ)
  let f : P → K := fun p => ⟨sol p - pred p, by
    simpa only [K, mem_closedBall, dist_eq_norm, sub_zero] using hmem p⟩
  let G : P × K → (Fin m → ℝ) := fun z => F z.1 (pred z.1 + z.2.1)
  have hG : Continuous G := hF.comp (continuous_fst.prodMk
    ((hp.comp continuous_fst).add (continuous_subtype_val.comp continuous_snd)))
  have hf : Continuous f := continuous_unique_zero G hG f fun p x => by
    constructor
    · intro hx
      have hm : pred p + x.1 ∈ closedBall (pred p) ρ := by
        simpa only [K, mem_closedBall, dist_eq_norm, add_sub_cancel_left, sub_zero] using x.2
      have he := huniq p (pred p + x.1) hm hx
      apply Subtype.ext
      change x.1 = sol p - pred p
      rw [← he]; abel
    · intro hx; subst x
      simpa [G, f] using hzero p
  have hh := hp.add (continuous_subtype_val.comp hf)
  convert hh using 1
  funext p
  simp [f]

/-- A continuous phase chart is Hadamard on the closure of its regular part. -/
theorem hadamard_of_dense {P : Type*} [TopologicalSpace P] {S T : Set P}
    (hS : IsClosed S) (hTS : T ⊆ S) (hd : S ⊆ closure T) (Q : P → RMat6)
    (hc : ContinuousOn Q S) (hH : ∀ p ∈ T, Hadamard6.IsHadamard (phaseMat (Q p))) :
    ∀ p ∈ S, Hadamard6.IsHadamard (phaseMat (Q p)) := by
  have hclosed := (continuous_phaseMat.comp_continuousOn hc).preimage_isClosed_of_isClosed
    hS NoFourMUBs.Step2Topology.isClosed_isHadamard
  have ht : T ⊆ S ∩ (fun p => phaseMat (Q p)) ⁻¹' {H | Hadamard6.IsHadamard H} :=
    fun p hp => ⟨hTS hp, hH p hp⟩
  intro p hp
  exact (closure_minimal ht hclosed (hd hp)).2

end NoFourMUBs.KernelAtlas.Edge
