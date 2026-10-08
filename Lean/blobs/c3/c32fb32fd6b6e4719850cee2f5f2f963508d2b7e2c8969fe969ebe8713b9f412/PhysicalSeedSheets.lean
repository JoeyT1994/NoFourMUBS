import PhysicalSeedSides

/-! The two actual side sheets are necessary square-root sheets of one physical seed. -/
namespace Mub6.Classification.FourPhase
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
noncomputable section

def sideSheet (A : Mat3) : ℂ :=
  FourierPhysicalSide.physicalSheet (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)

def sideLambda (A : Mat3) : Fin 3 → ℂ :=
  FourierPhysicalSide.physicalLambda (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)

theorem seed_scalars_of_moments {A : Mat3} {a b c d : ℂ}
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hm : sideS A = rowS a b ∧ sideT A = rowT c d ∧ sideR A = rowR a b c d) :
    g a b c d = FourierGramNumerators.g (sideS A) (sideT A) (sideR A) ∧
    eta a b c d = FourierGramNumerators.eta (sideS A) (sideT A) (sideR A) ∧
    chi a b c d = FourierGramNumerators.chi (sideS A) (sideT A) (sideR A) ∧
    (∀ i, q a b c d i = FourierGramNumerators.q (sideS A) (sideT A) (sideR A) i) ∧
    radicand a b c d = FourierRadicalGuards.radicand
      (FourierGramNumerators.g (sideS A) (sideT A) (sideR A))
      (FourierGramNumerators.chi (sideS A) (sideT A) (sideR A))
      (FourierGramNumerators.eta (sideS A) (sideT A) (sideR A)) := by
  rw [hm.1, hm.2.1, hm.2.2]
  refine ⟨g_gram_binding a b c d ha hb hc hd, eta_gram_binding a b c d ha hb hc hd,
    chi_gram_binding a b c d ha hb hc hd,
    fun i => q_gram_binding a b c d i ha hb hc hd, ?_⟩
  simp only [radicand, g_gram_binding a b c d ha hb hc hd,
    chi_gram_binding a b c d ha hb hc hd, eta_gram_binding a b c d ha hb hc hd]

theorem horizontal_seed_scalars {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    g (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.g (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    eta (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.eta (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    chi (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.chi (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    (∀ i, q (H 1 1) (H 1 2) (H 2 1) (H 2 2) i =
      FourierGramNumerators.q (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) i) ∧
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = FourierRadicalGuards.radicand
      (FourierGramNumerators.g (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)))
      (FourierGramNumerators.chi (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)))
      (FourierGramNumerators.eta (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H))) :=
  seed_scalars_of_moments (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)
    (horizontal_moments hH)

theorem vertical_seed_scalars {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    g (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.g (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) ∧
    eta (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.eta (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) ∧
    chi (H 1 1) (H 1 2) (H 2 1) (H 2 2) =
      FourierGramNumerators.chi (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) ∧
    (∀ i, qV (H 1 1) (H 1 2) (H 2 1) (H 2 2) i =
      FourierGramNumerators.q (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) i) ∧
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = FourierRadicalGuards.radicand
      (FourierGramNumerators.g (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)))
      (FourierGramNumerators.chi (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)))
      (FourierGramNumerators.eta (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ))) := by
  have h := horizontal_seed_scalars (normalizedGoodSideCarrier_transpose hH)
  simpa only [Matrix.transpose_apply, northeast_transpose, qV_eq_q_swap,
    g_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    eta_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    chi_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    radicand_swap _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)] using h

theorem side_determinant_binding {A : Mat3} (hrow : ∀ j, A 0 j = 1) :
    FourierPhysicalSide.determinant (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2) =
      A.det := congrArg Matrix.det (actualSide_of_first_row hrow)

theorem side_sheet_two_sqrt {A : Mat3} (hrow : ∀ j, A 0 j = 1)
    (hphase : ∀ i j, IsPhase (A i j)) (hdet : A.det ≠ 0) :
    let G := FourierGramNumerators.g (sideS A) (sideT A) (sideR A)
    let X := FourierGramNumerators.chi (sideS A) (sideT A) (sideR A)
    let E := FourierGramNumerators.eta (sideS A) (sideT A) (sideR A)
    0 ≤ FourierRadicalGuards.radicand G X E ∧
      (sideSheet A = FourierRadicalGuards.sheet G X
          (Real.sqrt (FourierRadicalGuards.radicand G X E)) ∨
       sideSheet A = FourierRadicalGuards.sheet G X
          (-Real.sqrt (FourierRadicalGuards.radicand G X E))) := by
  exact FourierPhysicalSide.physicalSheet_two_sqrt
    (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
    (hphase 1 0) (hphase 1 1) (hphase 1 2) (hphase 2 0) (hphase 2 1) (hphase 2 2)
    (by rwa [side_determinant_binding hrow])

theorem horizontal_sheet_two_sqrt {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    0 ≤ radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∧
    (sideSheet (northeast H) = FourierRadicalGuards.sheet
      (g (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (chi (H 1 1) (H 1 2) (H 2 1) (H 2 2))
      (Real.sqrt (radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2))) ∨
     sideSheet (northeast H) = FourierRadicalGuards.sheet
      (g (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (chi (H 1 1) (H 1 2) (H 2 1) (H 2 2))
      (-Real.sqrt (radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2)))) := by
  have hs := horizontal_seed_scalars hH
  rw [hs.1, hs.2.2.1, hs.2.2.2.2]
  exact side_sheet_two_sqrt (horizontal_first_row hH) (horizontal_phase hH)
    (horizontal_det_ne_zero hH)

theorem vertical_sheet_two_sqrt {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    0 ≤ radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∧
    (sideSheet ((southwest H)ᵀ) = FourierRadicalGuards.sheet
      (g (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (chi (H 1 1) (H 1 2) (H 2 1) (H 2 2))
      (Real.sqrt (radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2))) ∨
     sideSheet ((southwest H)ᵀ) = FourierRadicalGuards.sheet
      (g (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (chi (H 1 1) (H 1 2) (H 2 1) (H 2 2))
      (-Real.sqrt (radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2)))) := by
  have hs := vertical_seed_scalars hH
  rw [hs.1, hs.2.2.1, hs.2.2.2.2]
  exact side_sheet_two_sqrt (vertical_first_row hH) (vertical_phase hH)
    (vertical_det_ne_zero hH)

theorem seed_radicand_nonneg {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    0 ≤ radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) := (horizontal_sheet_two_sqrt hH).1

theorem seed_radicand_dichotomy {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    0 < radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) ∨
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0 := by
  have h := seed_radicand_nonneg hH
  exact lt_or_eq_of_le' h

theorem side_lambda_phase {A : Mat3} (hrow : ∀ j, A 0 j = 1)
    (hphase : ∀ i j, IsPhase (A i j)) (hdet : A.det ≠ 0) (i : Fin 3) :
    IsPhase (sideLambda A i) := by
  exact FourierPhysicalSide.physicalLambda_phase
    (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2) i
    (hphase 1 0) (hphase 1 1) (hphase 1 2) (hphase 2 0) (hphase 2 1) (hphase 2 2)
    (by rwa [side_determinant_binding hrow])

theorem horizontal_lambda_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H) (i : Fin 3) :
    IsPhase (sideLambda (northeast H) i) :=
  side_lambda_phase (horizontal_first_row hH) (horizontal_phase hH)
    (horizontal_det_ne_zero hH) i

theorem vertical_lambda_phase {H : Mat6} (hH : NormalizedGoodSideCarrier H) (i : Fin 3) :
    IsPhase (sideLambda ((southwest H)ᵀ) i) :=
  side_lambda_phase (vertical_first_row hH) (vertical_phase hH)
    (vertical_det_ne_zero hH) i

end
end Mub6.Classification.FourPhase

