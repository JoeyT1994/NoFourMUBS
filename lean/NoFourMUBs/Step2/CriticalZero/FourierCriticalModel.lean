import NoFourMUBs.Step2.CriticalZero.FourierCriticalData
import NoFourMUBs.Step2.CriticalZero.RechartModel
import NoFourMUBs.Step2.CriticalZero.Transpose

/-! Bind the archived six-skew expression to the current signature.
The unit-phase clearing argument follows GlobalCornerSixSkew.sixSkew_moment;
the current signature removes its unavailable legacy moment interface. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open Matrix ComplexConjugate Hadamard6 GlobalCornerSixSine
open NoFourMUBs.Side
namespace NoFourMUBs.Step2.Critical

theorem sixSkew_signature {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    sixSkew (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) =
      -(TS x y - star (TS x y)) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have h0 := ne_zero_of_normSq (hx 0)
  have h1 := ne_zero_of_normSq (hx 1)
  have h2 := ne_zero_of_normSq (hx 2)
  have k0 := ne_zero_of_normSq (hy 0)
  have k1 := ne_zero_of_normSq (hy 1)
  have k2 := ne_zero_of_normSq (hy 2)
  simp only [sixSkew, skew, TS, piS, hS, uS, Complex.star_def,
    map_add, map_sub, map_mul, map_neg, map_pow, Complex.conj_conj,
    cx, cy, map_inv₀, inv_inv]
  field_simp
  ring

theorem allCritical_selected_sixSkew_zero {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6)
    (hc : Function.Injective c) :
    sixSkew (H 1 (c 0)) (H 1 (c 1)) (H 1 (c 2))
      (H 2 (c 0)) (H 2 (c 1)) (H 2 (c 2)) = 0 := by
  obtain ⟨hN, A, rfl, hA⟩ := hH
  let B : Mat3 := (FourierBridge.toOAI A.1).submatrix front c
  have hs : (sideSignature B).im = 0 :=
    allCritical_submatrix_signature_im hA
      (fun i => FourierBridge.coordinates.symm (front i))
      (fun j => FourierBridge.coordinates.symm (c j))
      (FourierBridge.coordinates.symm.injective.comp front_injective)
      (FourierBridge.coordinates.symm.injective.comp hc)
  have h0 : ∀ j, B 0 j = 1 := fun j => hN.2.1 (c j)
  rw [sig_rows B h0] at hs
  have ht : star (TS (B 1) (B 2)) = TS (B 1) (B 2) := by
    apply Complex.ext <;> simp [Complex.star_def, hs]
  change sixSkew (B 1 0) (B 1 1) (B 1 2) (B 2 0) (B 2 1) (B 2 2) = 0
  exact (sixSkew_signature (x := B 1) (y := B 2)
    (fun j => hN.1.1 1 (c j)) (fun j => hN.1.1 2 (c j))).trans
    (by rw [ht, sub_self, neg_zero])

theorem allCritical_monomial {H K : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (he : OAI.MUB6.Equivalent H K)
    (hrow : ∀ j, K 0 j = 1) (hcol : ∀ i, K i 0 = 1) :
    AllCriticalCarrier K :=
  allCriticalCarrier_of_equivalent hH ⟨he.isHadamard hH.1.1, hrow, hcol⟩ he

#print axioms sixSkew_signature
#print axioms allCritical_selected_sixSkew_zero
#print axioms allCritical_monomial
end NoFourMUBs.Step2.Critical
