import SideQNormalization
import SignedCornerPhysical

set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
open Centiradian20261006 Centiradian20261006.SignedDeterminant
noncomputable section

theorem complementary_signed_eq_sideQ {H : Mat6} (hH : Physical H)
    (hd : Dephased H) :
    cornerSigned H 0 1 2 3 4 5 =
      2*(sideQ (fun j => H 1 (complementIndex j))
        (fun j => H 2 (complementIndex j))).im := by
  rw [sideQ_signed_binding _ _ (fun j => hH.1 1 (complementIndex j))
    (fun j => hH.1 2 (complementIndex j))]
  simp only [cornerSigned, cornerNormalize_eq_source_dephasing,
    hd.1, map_one, mul_one, complementIndex]
  rfl

theorem leadingR_eq_sideQ {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    leadingR H = 4*(sideQ (fun j => H 1 (complementIndex j))
      (fun j => H 2 (complementIndex j))).im^2 := by
  have hp := physical_signed_square_complement hH 0 1 2 3 4 5
    (by decide) (by decide) (by decide) (by decide)
  have hcols : ({3,4,5}:Finset (Fin 6))ᶜ=leadingCols := by decide
  rw [hcols, complementary_signed_eq_sideQ hH hd] at hp
  change _ = leadingR H at hp
  rw [← hp]
  ring

theorem physical_small_leadingR {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1) + Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) : leadingR H < 4*((1:ℝ)/1000)^2 := by
  have hq := physical_sideQ_small hH hd hsmall
  have hi := Complex.abs_im_le_norm (sideQ (fun j => H 1 (complementIndex j))
    (fun j => H 2 (complementIndex j)))
  rw [leadingR_eq_sideQ hH hd]
  have ha := lt_of_le_of_lt hi hq
  have hh := (abs_lt.mp ha)
  nlinarith [sq_nonneg ((1:ℝ)/1000 -
    (sideQ (fun j => H 1 (complementIndex j))
      (fun j => H 2 (complementIndex j))).im)]

theorem physical_witness_q_small {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (i j : Fin 6) (hi : 0 < i) (hij : i < j)
    (hsmall : Complex.normSq (H 1 1-1) + Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) :
    |(dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im| < (1:ℝ)/1000 := by
  have hp := physical_maximal_signed_square_bound hH hm 0 i j 0 1 3
    hi hij (by decide) (by decide)
  have hn : cornerSigned H 0 i j 0 1 3 =
      2*(dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im := by
    simp only [cornerSigned, cornerNormalize_eq_source_dephasing,
      hd.1, hd.2, map_one, mul_one]
    exact fastSigned_eq_twice_q_im _ _ _ _ (hH.1 i 1) (hH.1 i 3)
      (hH.1 j 1) (hH.1 j 3)
  rw [hn] at hp
  have hR := physical_small_leadingR hH hd hsmall
  rw [abs_lt]
  constructor <;> nlinarith [sq_nonneg
    ((dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im + (1:ℝ)/1000)]

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.complementary_signed_eq_sideQ
#print axioms Seed0024Mathematical20261007.leadingR_eq_sideQ
#print axioms Seed0024Mathematical20261007.physical_small_leadingR
#print axioms Seed0024Mathematical20261007.physical_witness_q_small
