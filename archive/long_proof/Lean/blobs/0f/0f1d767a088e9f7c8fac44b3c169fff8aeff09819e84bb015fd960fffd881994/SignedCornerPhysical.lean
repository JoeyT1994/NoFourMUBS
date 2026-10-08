import SignedDeterminantGram
import CentiradianNormalization
import Mathlib.Analysis.Real.Sqrt

set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate BigOperators
noncomputable section

def cornerNormalize (H : Mat6) (r c : Fin 6) : Mat6 :=
  phaseTransform H (fun i => conj (H i c)) (fun j => H r c*conj (H r j))

/-- Equality to the four-factor dephasing expression used by signedf in
interval_model.hpp; this algebraic equality requires no physical hypothesis. -/
theorem cornerNormalize_eq_source_dephasing (H : Mat6) (r c i j : Fin 6) :
    cornerNormalize H r c i j = H i j*H r c*conj (H i c)*conj (H r j) := by
  unfold cornerNormalize phaseTransform
  ring

theorem cornerNormalize_row_unit {H : Mat6} (hH : Physical H) (c i : Fin 6) :
    Complex.normSq (conj (H i c))=1 := by simp [hH.1]

theorem cornerNormalize_col_unit {H : Mat6} (hH : Physical H) (r c j : Fin 6) :
    Complex.normSq (H r c*conj (H r j))=1 := by
  simp [Complex.normSq_mul,hH.1]

theorem cornerNormalize_physical {H : Mat6} (hH : Physical H) (r c : Fin 6) :
    Physical (cornerNormalize H r c) :=
  physical_phaseTransform hH _ _ (cornerNormalize_row_unit hH c)
    (cornerNormalize_col_unit hH r c)

theorem cornerNormalize_first_row {H : Mat6} (hH : Physical H) (r c j : Fin 6) :
    cornerNormalize H r c r j=1 := by
  change conj (H r c)*H r j*(H r c*conj (H r j))=1
  calc
    _ = (H r c*conj (H r c))*(H r j*conj (H r j)) := by ring
    _ = 1 := by simp [Complex.mul_conj,hH.1]

theorem cornerNormalize_first_col {H : Mat6} (hH : Physical H) (r c i : Fin 6) :
    cornerNormalize H r c i c=1 := by
  change conj (H i c)*H i c*(H r c*conj (H r c))=1
  calc
    _ = (H i c*conj (H i c))*(H r c*conj (H r c)) := by ring
    _ = 1 := by simp [Complex.mul_conj,hH.1]

theorem cornerNormalize_invariant {H : Mat6} (hH : Physical H) (r c a b d : Fin 6)
    (C : Finset (Fin 6)) : cornerR (cornerNormalize H r c) a b d C=cornerR H a b d C :=
  cornerR_phaseTransform H _ _ (cornerNormalize_row_unit hH c)
    (cornerNormalize_col_unit hH r c) a b d C

def cornerSigned (H : Mat6) (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) : ℝ :=
  let N := cornerNormalize H r₀ c₀
  fastSigned (N r₁ c₁) (N r₁ c₂) (N r₂ c₁) (N r₂ c₂)

theorem complementary_invariant_eq_signed_square (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    invariant
      (gramP (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))
      (-gramJ (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))
      (gramW (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)) = (fastSigned a b c d)^2 := by
  have h := complementary_invariant_eq_negative_det_square a b c d ha hb hc hd
  rw [rawDet_negative_square a b c d ha hb hc] at h
  exact_mod_cast h

/-- The source fast signed residual on every actual positional corner is
the square root, with a sign, of the complementary corner's invariant. -/
theorem physical_signed_square_complement {H : Mat6} (hH : Physical H)
    (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) (hr₀₁ : r₀<r₁) (hr₁₂ : r₁<r₂)
    (hc₀₁ : c₀<c₁) (hc₁₂ : c₁<c₂) :
    (cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂)^2 = cornerR H r₀ r₁ r₂ ({c₀,c₁,c₂}:Finset (Fin 6))ᶜ := by
  let N := cornerNormalize H r₀ c₀
  have hn : Physical N := cornerNormalize_physical hH r₀ c₀
  have hfrow : ∀ j, N r₀ j=1 := cornerNormalize_first_row hH r₀ c₀
  have hfcol : ∀ i, N i c₀=1 := cornerNormalize_first_col hH r₀ c₀
  have hs : -gramEntry N {c₀,c₁,c₂} r₁ r₀ = -1-N r₁ c₁-N r₁ c₂ := by
    simp [gramEntry,hc₀₁.ne,hc₁₂.ne,(lt_trans hc₀₁ hc₁₂).ne,hfrow,hfcol]
    ring
  have ht : -gramEntry N {c₀,c₁,c₂} r₂ r₀ = -1-N r₂ c₁-N r₂ c₂ := by
    simp [gramEntry,hc₀₁.ne,hc₁₂.ne,(lt_trans hc₀₁ hc₁₂).ne,hfrow,hfcol]
    ring
  have hr : -gramEntry N {c₀,c₁,c₂} r₂ r₁ =
      -1-N r₂ c₁*conj (N r₁ c₁)-N r₂ c₂*conj (N r₁ c₂) := by
    simp [gramEntry,hc₀₁.ne,hc₁₂.ne,(lt_trans hc₀₁ hc₁₂).ne,hfcol]
    ring
  rw [← cornerNormalize_invariant hH r₀ c₀ r₀ r₁ r₂]
  change _ = cornerR N r₀ r₁ r₂ _
  rw [physical_corner_complement hn _ hr₀₁ hr₁₂,hs,ht,hr]
  exact (complementary_invariant_eq_signed_square _ _ _ _
    (hn.1 r₁ c₁) (hn.1 r₁ c₂) (hn.1 r₂ c₁) (hn.1 r₂ c₂)).symm

theorem physical_maximal_signed_square_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6) (hr₀₁ : r₀<r₁) (hr₁₂ : r₁<r₂)
    (hc₀₁ : c₀<c₁) (hc₁₂ : c₁<c₂) :
    (cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂)^2 ≤ leadingR H := by
  rw [physical_signed_square_complement hH r₀ r₁ r₂ c₀ c₁ c₂ hr₀₁ hr₁₂ hc₀₁ hc₁₂]
  apply hm r₀ r₁ r₂ hr₀₁ hr₁₂
  apply complement_card
  simp [hc₀₁.ne,hc₁₂.ne,(lt_trans hc₀₁ hc₁₂).ne]

/-- The exact physical necessary inequality consumed by the interval proof,
with all 400 corners, both residual signs, and maximality ties retained. -/
theorem physical_maximal_signed_abs_bound {H : Mat6} (hH : Physical H) (hm : Maximal H)
    (hR : 0 < leadingR H) (r₀ r₁ r₂ c₀ c₁ c₂ : Fin 6)
    (hr₀₁ : r₀<r₁) (hr₁₂ : r₁<r₂) (hc₀₁ : c₀<c₁) (hc₁₂ : c₁<c₂) :
    |cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂| ≤ Real.sqrt (leadingR H) := by
  have hb := physical_maximal_signed_square_bound hH hm r₀ r₁ r₂ c₀ c₁ c₂ hr₀₁ hr₁₂ hc₀₁ hc₁₂
  have hs := Real.sq_sqrt hR.le
  have ha := sq_abs (cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂)
  nlinarith [Real.sqrt_nonneg (leadingR H),abs_nonneg (cornerSigned H r₀ r₁ r₂ c₀ c₁ c₂)]

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.physical_signed_square_complement
#print axioms Centiradian20261006.SignedDeterminant.physical_maximal_signed_square_bound
#print axioms Centiradian20261006.SignedDeterminant.physical_maximal_signed_abs_bound
