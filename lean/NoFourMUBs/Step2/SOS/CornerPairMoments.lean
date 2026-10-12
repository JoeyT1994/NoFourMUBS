import NoFourMUBs.Step2.SOS.CornerPairSampling
import OAI.Analysis.MutuallyUnbiased.Moments.PartitionExpansion

/-! The two-corner target uses the same overlap table for rows and columns.
This adapter groups the powers with OAI's existing `product_grouped` theorem;
the finite sampling weights come from `CornerPairSampling`. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS.CornerPairs

def joinedExponent (A B : Matrix (Fin 3) (Fin 3) ℤ) :
    Matrix (Fin 6) (Fin 6) ℤ :=
  Fin.addCases (m := 3) (n := 3)
    (fun i => Fin.addCases (m := 3) (n := 3) (A i) 0)
    (fun i => Fin.addCases (m := 3) (n := 3) 0 (B i))

def overlapExponent (A B : Matrix (Fin 3) (Fin 3) ℤ) (p q : Fin 34) :
    Matrix (Fin (blocks p)) (Fin (blocks q)) ℤ :=
  (groupedColumns (groupedColumns (joinedExponent A B)
    (family.label q)).transpose (family.label p)).transpose

theorem pairedMonomial_grouped {H : CMatrix} (hH : IsHadamard H)
    (A B : Matrix (Fin 3) (Fin 3) ℤ) (p q : Fin 34)
    (ρ : Fin (blocks p) ↪ Coord) (κ : Fin (blocks q) ↪ Coord) :
    exponentMonomial H A (pairFlatten ⟨p, ρ⟩).1 (pairFlatten ⟨q, κ⟩).1 *
      exponentMonomial H B (pairFlatten ⟨p, ρ⟩).2 (pairFlatten ⟨q, κ⟩).2 =
      exponentMonomial H (overlapExponent A B p q) ρ κ := by
  have hj : (∏ i : Fin 6, ∏ j : Fin 6,
      H (ρ (family.label p i)) (κ (family.label q j)) ^ joinedExponent A B i j) =
      exponentMonomial H A (pairFlatten ⟨p, ρ⟩).1 (pairFlatten ⟨q, κ⟩).1 *
      exponentMonomial H B (pairFlatten ⟨p, ρ⟩).2 (pairFlatten ⟨q, κ⟩).2 := by
    rw [Fin.prod_univ_add (a := 3) (b := 3)]
    simp_rw [Fin.prod_univ_add (a := 3) (b := 3)]
    simp only [joinedExponent, Fin.addCases_left, Fin.addCases_right,
      Pi.zero_apply, zpow_zero, Finset.prod_const_one, mul_one, one_mul]
    rfl
  rw [← hj]
  have hc (i : Fin 6) := product_grouped (family.label q)
    (fun b => H (ρ (family.label p i)) (κ b))
    (fun b => unit_ne_zero (hH.1 _ _)) (joinedExponent A B i)
  simp_rw [hc]
  rw [Finset.prod_comm]
  calc
    _ = ∏ b : Fin (blocks q), ∏ a : Fin (blocks p),
        H (ρ a) (κ b) ^ overlapExponent A B p q a b := by
      apply Finset.prod_congr rfl
      intro b _
      exact product_grouped (family.label p) (fun a => H (ρ a) (κ b))
        (fun a => unit_ne_zero (hH.1 _ _))
        (fun i => groupedColumns (joinedExponent A B) (family.label q) i b)
    _ = _ := Finset.prod_comm

theorem pairedMoment_expand {H : CMatrix} (hH : IsHadamard H)
    (A B : Matrix (Fin 3) (Fin 3) ℤ) :
    average (fun rs : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord) =>
      average (fun cs : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord) =>
        ((exponentMonomial H A rs.1 cs.1 * exponentMonomial H B rs.2 cs.2).re +
         (exponentMonomial H.transpose A rs.1 cs.1 *
          exponentMonomial H.transpose B rs.2 cs.2).re) / 2)) =
      ∑ p : Fin 34, ∑ q : Fin 34,
        weight p * weight q * injectiveMoment H (overlapExponent A B p q) := by
  rw [average_pair_injections]
  apply Finset.sum_congr rfl
  intro p _
  simp_rw [average_pair_injections, average_sum, average_mul]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q _
  simp_rw [pairedMonomial_grouped hH, pairedMonomial_grouped hH.transpose]
  rw [← injectiveMoment_iterated]
  ring

end NoFourMUBs.Step2.SOS.CornerPairs
