import OAI.Analysis.MutuallyUnbiased.Moments.MomentSymmetry

/-! The existing symmetric-exponent adapter from TargetFrames is shared here
so the physical first moment and its square use one proof. -/

noncomputable section
open scoped BigOperators
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS

theorem injectiveMoment_average {p q : ℕ} (H : CMatrix)
    (A : Matrix (Fin p) (Fin q) ℤ) :
    injectiveMoment H A =
      (average (fun s : (Fin p ↪ Coord) × (Fin q ↪ Coord) =>
          (exponentMonomial H A s.1 s.2).re) +
       average (fun s : (Fin p ↪ Coord) × (Fin q ↪ Coord) =>
          (exponentMonomial H.transpose A s.1 s.2).re)) / 2 := by
  simp only [injectiveMoment, average, ← Finset.sum_div,
    Finset.sum_add_distrib, mul_div, mul_add]

theorem injectiveMoment_of_symmetric {p : ℕ} (H : CMatrix)
    (A : Matrix (Fin p) (Fin p) ℤ) (hA : A.transpose = A) :
    injectiveMoment H A =
      average (fun s : (Fin p ↪ Coord) × (Fin p ↪ Coord) =>
        (exponentMonomial H A s.1 s.2).re) := by
  have ht : average (fun s : (Fin p ↪ Coord) × (Fin p ↪ Coord) =>
      (exponentMonomial H.transpose A s.1 s.2).re) =
      average (fun s : (Fin p ↪ Coord) × (Fin p ↪ Coord) =>
        (exponentMonomial H A s.1 s.2).re) := by
    simp_rw [← exponentMonomial_transpose, hA]
    exact average_equiv (Equiv.prodComm _ _)
      (fun s : (Fin p ↪ Coord) × (Fin p ↪ Coord) =>
        (exponentMonomial H A s.1 s.2).re)
  rw [injectiveMoment_average, ht]
  ring

end NoFourMUBs.Step2.SOS
