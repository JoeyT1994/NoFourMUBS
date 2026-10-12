import NoFourMUBs.Reuse.Archive.CriticalRationalSideData
import NoFourMUBs.Reuse.Archive.CriticalActualReconstruction
import NoFourMUBs.Reuse.Archive.CriticalPhysicalScalarInputs

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

theorem phase_rational_numerator (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1) (i : Fin 3) :
    let D := dataOf x y
    rationalNumerator D.s D.S D.t D.T D.r D.Q i =
      FourierGramNumerators.numerator D.s D.t D.r i := by
  dsimp only
  rcases phase_data_linear_conjugates x y hx hy with ⟨hS,hT,hQ⟩
  fin_cases i <;> simp [rationalNumerator,FourierGramNumerators.numerator,
    hS,hT,hQ,Complex.normSq_eq_conj_mul_self] <;> ring

theorem phase_rational_conumerator (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1) (i : Fin 3) :
    let D := dataOf x y
    rationalConumerator D.s D.S D.t D.T D.r D.Q i =
      star (rationalNumerator D.s D.S D.t D.T D.r D.Q i) := by
  dsimp only
  rcases phase_data_linear_conjugates x y hx hy with ⟨hS,hT,hQ⟩
  fin_cases i <;> simp [rationalConumerator,rationalNumerator,hS,hT,hQ,
    mul_comm,mul_left_comm,mul_assoc]

theorem phase_rational_denominator (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ)) (i : Fin 3) :
    let D := dataOf x y
    rationalDenominator D.s D.S D.t D.T D.r D.Q (z : ℂ)
      (FourierGramNumerators.g D.s D.t D.r : ℂ) i =
    FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) i := by
  dsimp only
  have hs : FourierPhysicalSide.s (x 0) (x 1) (x 2)=(dataOf x y).s := rfl
  have ht : FourierPhysicalSide.t (y 0) (y 1) (y 2)=(dataOf x y).t := rfl
  unfold FourierPhysicalSide.sideDenominator
  rw [hs,ht,← phase_data_actual_r x y hx]
  change _ = (FourierGramNumerators.g (dataOf x y).s (dataOf x y).t (dataOf x y).r : ℂ) +
    blockSheet x y*(FourierGramNumerators.q (dataOf x y).s (dataOf x y).t (dataOf x y).r i : ℂ)
  rw [hz]
  rcases phase_data_moduli x y hx hy with ⟨hX,hY,hZ⟩
  fin_cases i <;> simp [rationalDenominator,FourierGramNumerators.q,hX,hY,hZ] <;> ring

theorem phase_rational_lambda (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ)) (i : Fin 3)
    (hi : FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0) :
    let D := dataOf x y
    rationalNumerator D.s D.S D.t D.T D.r D.Q i /
      rationalDenominator D.s D.S D.t D.T D.r D.Q (z : ℂ)
        (FourierGramNumerators.g D.s D.t D.r : ℂ) i = blockLambda x y i := by
  dsimp only
  rw [phase_rational_numerator x y hx hy i,phase_rational_denominator x y hx hy z hz i]
  rw [phase_data_actual_r x y hx]
  exact FourierPhysicalSide.rational_lambda_matches_physical _ _ _ _ _ _ i
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hD hi

theorem phase_rational_conlambda (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ)) (i : Fin 3)
    (hi : FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0) :
    let D := dataOf x y
    rationalConumerator D.s D.S D.t D.T D.r D.Q i /
      rationalDenominator D.s D.S D.t D.T D.r D.Q (z : ℂ)
        (FourierGramNumerators.g D.s D.t D.r : ℂ) i = star (blockLambda x y i) := by
  dsimp only
  have hstar : star (rationalDenominator (dataOf x y).s (dataOf x y).S
      (dataOf x y).t (dataOf x y).T (dataOf x y).r (dataOf x y).Q (z : ℂ)
      (FourierGramNumerators.g (dataOf x y).s (dataOf x y).t (dataOf x y).r : ℂ) i) =
    rationalDenominator (dataOf x y).s (dataOf x y).S
      (dataOf x y).t (dataOf x y).T (dataOf x y).r (dataOf x y).Q (z : ℂ)
      (FourierGramNumerators.g (dataOf x y).s (dataOf x y).t (dataOf x y).r : ℂ) i := by
    rcases phase_data_moduli x y hx hy with ⟨hX,hY,hZ⟩
    fin_cases i <;> simp [rationalDenominator,hX,hY,hZ]
  rw [phase_rational_conumerator x y hx hy i,← hstar,← star_div₀]
  rw [phase_rational_lambda x y hx hy hD z hz i hi]

/-- All eighteen actual data fields equal the literal rational side. Every
actual denominator is required nonzero. Zero correlations are allowed here;
they are guarded only when a later reciprocal correlation chart is chosen. -/
theorem actual_rationalSide (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ))
    (hL : ∀ i,FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0) :
    let D := dataOf x y
    D = rationalSide D.s D.S D.t D.T D.r D.Q (z : ℂ)
      (FourierGramNumerators.g D.s D.t D.r : ℂ) := by
  dsimp only [rationalSide]
  rw [phase_rational_lambda x y hx hy hD z hz 0 (hL 0),
    phase_rational_lambda x y hx hy hD z hz 1 (hL 1),
    phase_rational_lambda x y hx hy hD z hz 2 (hL 2),
    phase_rational_conlambda x y hx hy hD z hz 0 (hL 0),
    phase_rational_conlambda x y hx hy hD z hz 1 (hL 1),
    phase_rational_conlambda x y hx hy hD z hz 2 (hL 2)]
  exact actual_reconstructionData x y hx hy hD z hz

end
#print axioms phase_rational_numerator
#print axioms phase_rational_conumerator
#print axioms phase_rational_denominator
#print axioms phase_rational_lambda
#print axioms phase_rational_conlambda
#print axioms actual_rationalSide
end CriticalNewtonGauge20261003
