import SharedResidualPolynomials

/-! Small kernel-checked pre-reductions for sparse exporter identities.
They remove Fin-vector selections before broad evaluation simplification.
These are identities of the actual polynomials, not alternate input formulas. -/
namespace Mub6.Classification.SharedResidualPolynomials
open MvPolynomial
noncomputable section

theorem qPoly_zero (side : Side) :
    qPoly side 0 = 9 - (rPoly side).normSq := rfl

theorem qPoly_one (side : Side) :
    qPoly side 1 = 9 - (tPoly side).normSq := rfl

theorem qPoly_two (side : Side) :
    qPoly side 2 = 9 - (sPoly side).normSq := rfl

theorem numeratorPoly_zero (side : Side) : numeratorPoly side 0 =
    (((rPoly side).mul (sPoly side).sq).add
      ((rPoly side).conj.mul (tPoly side).sq) |>.add
      (((ComplexPoly.const 3 0).sub (.real (rPoly side).normSq)).mul
        (sPoly side) |>.mul (tPoly side))) := rfl

theorem numeratorPoly_one (side : Side) : numeratorPoly side 1 =
    (((tPoly side).mul (sPoly side).conj.sq).add
      ((rPoly side).sq.mul (tPoly side).conj) |>.add
      (((ComplexPoly.const 3 0).sub (.real (tPoly side).normSq)).mul
        (rPoly side) |>.mul (sPoly side).conj)) := rfl

theorem numeratorPoly_two (side : Side) : numeratorPoly side 2 =
    (((sPoly side).mul (tPoly side).conj.sq).add
      ((rPoly side).conj.sq.mul (sPoly side).conj) |>.add
      (((ComplexPoly.const 3 0).sub (.real (sPoly side).normSq)).mul
        (rPoly side).conj |>.mul (tPoly side).conj)) := rfl

theorem denominatorPoly_re (side : Side) (i : Fin 3) :
    (denominatorPoly side i).re = gPoly side + X (4,0) * qPoly side i := by
  change gPoly side + (X (4,0) * qPoly side i - X (4,1) * 0) = _
  ring

theorem denominatorPoly_im (side : Side) (i : Fin 3) :
    (denominatorPoly side i).im = X (4,1) * qPoly side i := by
  change 0 + (X (4,0) * 0 + X (4,1) * qPoly side i) = _
  ring

theorem residualPoly_re (side : Side) (a b : ℚ) (i : Fin 3) :
    (residualPoly side a b i).re = (numeratorPoly side i).re -
      (C a * (denominatorPoly side i).re - C b * (denominatorPoly side i).im) := rfl

theorem residualPoly_im (side : Side) (a b : ℚ) (i : Fin 3) :
    (residualPoly side a b i).im = (numeratorPoly side i).im -
      (C a * (denominatorPoly side i).im + C b * (denominatorPoly side i).re) := rfl

#print axioms Mub6.Classification.SharedResidualPolynomials.qPoly_zero
#print axioms Mub6.Classification.SharedResidualPolynomials.qPoly_one
#print axioms Mub6.Classification.SharedResidualPolynomials.qPoly_two
#print axioms Mub6.Classification.SharedResidualPolynomials.numeratorPoly_zero
#print axioms Mub6.Classification.SharedResidualPolynomials.numeratorPoly_one
#print axioms Mub6.Classification.SharedResidualPolynomials.numeratorPoly_two
#print axioms Mub6.Classification.SharedResidualPolynomials.denominatorPoly_re
#print axioms Mub6.Classification.SharedResidualPolynomials.denominatorPoly_im
#print axioms Mub6.Classification.SharedResidualPolynomials.residualPoly_re
#print axioms Mub6.Classification.SharedResidualPolynomials.residualPoly_im
end
end Mub6.Classification.SharedResidualPolynomials
