import PhysicalSeedSheets
import GramSideData

/-! Exact seed boundary pole locus; the vertical adjugate entries remain distinct. -/
namespace Mub6.Classification.FourPhase
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover FourierSeedBinding
noncomputable section

namespace FG

open Hadamard6Extensions.FourPhaseGram

theorem denominator_boundary_iff {s t r : ℂ}
    (hg : FourierGramNumerators.g s t r ≠ 0) (hR : R s t r = 0)
    (negative : Bool) (i : Fin 3) :
    denominator s t r negative i = 0 ↔
      2 * (FourierGramNumerators.g s t r)^2 +
        FourierGramNumerators.chi s t r * FourierGramNumerators.q s t r i = 0 := by
  have hw : (0 : ℝ)^2 = 4 * (FourierGramNumerators.g s t r)^2 *
      FourierGramNumerators.eta s t r - (FourierGramNumerators.chi s t r)^2 := by
    change (0 : ℝ)^2 = R s t r
    simpa only [zero_pow (by decide : 2 ≠ 0)] using hR.symm
  simpa only [denominator, zeta, sheetParameter, hR, Real.sqrt_zero, neg_zero, ite_self] using
    FourierRadicalGuards.boundary_denominator_zero_iff
      (FourierGramNumerators.g s t r) (FourierGramNumerators.chi s t r)
      (FourierGramNumerators.eta s t r) (FourierGramNumerators.q s t r i) hg hw

theorem not_noPoles_iff {s t r : ℂ}
    (hg : FourierGramNumerators.g s t r ≠ 0) (hR : 0 ≤ R s t r) :
    ¬ NoPoles s t r ↔ R s t r = 0 ∧ ∃ i : Fin 3,
      2 * (FourierGramNumerators.g s t r)^2 +
        FourierGramNumerators.chi s t r * FourierGramNumerators.q s t r i = 0 := by
  classical
  constructor
  · intro hn
    have hzero : R s t r = 0 := by
      by_contra hzero
      exact hn (strict_noPoles (lt_of_le_of_ne hR (Ne.symm hzero)))
    have hex : ∃ negative i, denominator s t r negative i = 0 := by
      simpa only [NoPoles, not_forall, not_not] using hn
    obtain ⟨negative, i, hi⟩ := hex
    exact ⟨hzero, i, (denominator_boundary_iff hg hzero negative i).mp hi⟩
  · rintro ⟨hzero, i, hi⟩ hn
    exact hn false i ((denominator_boundary_iff hg hzero false i).mpr hi)

end FG

def SeedNoPoles (a b c d : ℂ) : Prop :=
  Hadamard6Extensions.FourPhaseGram.NoPoles (rowS a b) (rowT c d) (rowR a b c d) ∧
  Hadamard6Extensions.FourPhaseGram.NoPoles (rowS a c) (rowT b d) (rowR a c b d)

theorem seed_R_horizontal (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    radicand a b c d =
      Hadamard6Extensions.FourPhaseGram.R (rowS a b) (rowT c d) (rowR a b c d) := by
  simp only [radicand, Hadamard6Extensions.FourPhaseGram.R,
    g_gram_binding a b c d ha hb hc hd, chi_gram_binding a b c d ha hb hc hd,
    eta_gram_binding a b c d ha hb hc hd]

theorem seed_R_vertical (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d) :
    radicand a b c d =
      Hadamard6Extensions.FourPhaseGram.R (rowS a c) (rowT b d) (rowR a c b d) := by
  rw [← radicand_swap a b c d ha hb hc hd]
  exact seed_R_horizontal a c b d ha hc hb hd

theorem seed_horizontal_pole_iff (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hg : g a b c d ≠ 0) (hR : 0 ≤ radicand a b c d) :
    ¬ Hadamard6Extensions.FourPhaseGram.NoPoles (rowS a b) (rowT c d) (rowR a b c d) ↔
      radicand a b c d = 0 ∧ ∃ i : Fin 3,
        2 * (g a b c d)^2 + chi a b c d * q a b c d i = 0 := by
  have hG := g_gram_binding a b c d ha hb hc hd
  have hX := chi_gram_binding a b c d ha hb hc hd
  have hRad := seed_R_horizontal a b c d ha hb hc hd
  have hQ (i : Fin 3) := q_gram_binding a b c d i ha hb hc hd
  have hh := FG.not_noPoles_iff (s := rowS a b) (t := rowT c d) (r := rowR a b c d)
    (by rwa [← hG]) (by rwa [← hRad])
  simpa only [← hG, ← hX, ← hRad, ← hQ] using hh

theorem seed_vertical_pole_iff (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hg : g a b c d ≠ 0) (hR : 0 ≤ radicand a b c d) :
    ¬ Hadamard6Extensions.FourPhaseGram.NoPoles (rowS a c) (rowT b d) (rowR a c b d) ↔
      radicand a b c d = 0 ∧ ∃ i : Fin 3,
        2 * (g a b c d)^2 + chi a b c d * qV a b c d i = 0 := by
  have hG := g_swap a b c d ha hb hc hd
  have hRswap := radicand_swap a b c d ha hb hc hd
  have hh := seed_horizontal_pole_iff a c b d ha hc hb hd
    (by rwa [hG]) (by rwa [hRswap])
  simpa only [hG, hRswap, chi_swap a b c d ha hb hc hd, qV_eq_q_swap] using hh

theorem seed_noPoles_failure_iff (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hg : g a b c d ≠ 0) (hR : 0 ≤ radicand a b c d) :
    ¬ SeedNoPoles a b c d ↔ radicand a b c d = 0 ∧
      ((∃ i : Fin 3, 2 * (g a b c d)^2 + chi a b c d * q a b c d i = 0) ∨
       (∃ i : Fin 3, 2 * (g a b c d)^2 + chi a b c d * qV a b c d i = 0)) := by
  classical
  rw [SeedNoPoles, not_and_or,
    seed_horizontal_pole_iff a b c d ha hb hc hd hg hR,
    seed_vertical_pole_iff a b c d ha hb hc hd hg hR]
  constructor
  · rintro (⟨hzero, hq⟩ | ⟨hzero, hq⟩)
    · exact ⟨hzero, Or.inl hq⟩
    · exact ⟨hzero, Or.inr hq⟩
  · rintro ⟨hzero, hq | hq⟩
    · exact Or.inl ⟨hzero, hq⟩
    · exact Or.inr ⟨hzero, hq⟩

theorem seed_strict_noPoles (a b c d : ℂ)
    (ha : IsPhase a) (hb : IsPhase b) (hc : IsPhase c) (hd : IsPhase d)
    (hR : 0 < radicand a b c d) : SeedNoPoles a b c d := by
  exact ⟨Hadamard6Extensions.FourPhaseGram.strict_noPoles
      (by rwa [← seed_R_horizontal a b c d ha hb hc hd]),
    Hadamard6Extensions.FourPhaseGram.strict_noPoles
      (by rwa [← seed_R_vertical a b c d ha hb hc hd])⟩

theorem normalized_seed_noPoles_failure_iff {H : Mat6}
    (hH : NormalizedGoodSideCarrier H) :
    ¬ SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2) ↔
      radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0 ∧
      ((∃ i : Fin 3, 2 * (g (H 1 1) (H 1 2) (H 2 1) (H 2 2))^2 +
        chi (H 1 1) (H 1 2) (H 2 1) (H 2 2) * q (H 1 1) (H 1 2) (H 2 1) (H 2 2) i = 0) ∨
       (∃ i : Fin 3, 2 * (g (H 1 1) (H 1 2) (H 2 1) (H 2 2))^2 +
        chi (H 1 1) (H 1 2) (H 2 1) (H 2 2) * qV (H 1 1) (H 1 2) (H 2 1) (H 2 2) i = 0)) := by
  have hg := seed_g_lower_bound hH
  exact seed_noPoles_failure_iff _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2)
    (hH.1.1 2 1) (hH.1.1 2 2) (by linarith) (seed_radicand_nonneg hH)

theorem physical_noPoles_failure_zero {H : Mat6}
    (hH : NormalizedGoodSideCarrier H)
    (hn : ¬ SeedNoPoles (H 1 1) (H 1 2) (H 2 1) (H 2 2)) :
    radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2) = 0 :=
  ((normalized_seed_noPoles_failure_iff hH).mp hn).1

end
end Mub6.Classification.FourPhase

#check Mub6.Classification.FourPhase.FG.denominator_boundary_iff
#print axioms Mub6.Classification.FourPhase.FG.denominator_boundary_iff
#check Mub6.Classification.FourPhase.FG.not_noPoles_iff
#print axioms Mub6.Classification.FourPhase.FG.not_noPoles_iff
#check Mub6.Classification.FourPhase.seed_R_horizontal
#print axioms Mub6.Classification.FourPhase.seed_R_horizontal
#check Mub6.Classification.FourPhase.seed_R_vertical
#print axioms Mub6.Classification.FourPhase.seed_R_vertical
#check Mub6.Classification.FourPhase.seed_horizontal_pole_iff
#print axioms Mub6.Classification.FourPhase.seed_horizontal_pole_iff
#check Mub6.Classification.FourPhase.seed_vertical_pole_iff
#print axioms Mub6.Classification.FourPhase.seed_vertical_pole_iff
#check Mub6.Classification.FourPhase.seed_noPoles_failure_iff
#print axioms Mub6.Classification.FourPhase.seed_noPoles_failure_iff
#check Mub6.Classification.FourPhase.seed_strict_noPoles
#print axioms Mub6.Classification.FourPhase.seed_strict_noPoles
#check Mub6.Classification.FourPhase.normalized_seed_noPoles_failure_iff
#print axioms Mub6.Classification.FourPhase.normalized_seed_noPoles_failure_iff
#check Mub6.Classification.FourPhase.physical_noPoles_failure_zero
#print axioms Mub6.Classification.FourPhase.physical_noPoles_failure_zero
