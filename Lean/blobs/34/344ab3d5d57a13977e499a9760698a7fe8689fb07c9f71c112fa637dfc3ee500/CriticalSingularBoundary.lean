import CriticalPhysicalParams
import SingularFourierRouting

set_option autoImplicit false
namespace CriticalSingularBoundary20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalPhysicalParameters20261003
open CriticalFourierRouting20261003 CriticalRowSum20261003
noncomputable section

/-- The actual normalized block determinant has the literal Gram norm. -/
theorem side_g_determinant (E : CompactCover.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1) :
    FourierGramNumerators.g (sideS E) (sideT E) (sideR E)=Complex.normSq E.det := by
  have he : FourierPhysicalSide.side (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)=E := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [FourierPhysicalSide.side,h0]
  have hd := FourierPhysicalSide.g_determinant (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) (hE 1 0) (hE 1 1) (hE 1 2)
    (hE 2 0) (hE 2 1) (hE 2 2)
  simpa only [sideS,sideT,sideR,FourierPhysicalSide.determinant,he] using hd

theorem side_p9_j0_singular (E : CompactCover.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hp : sideP E=9) (hj : sideJ E=0) : E.det=0 := by
  have hg := side_g_determinant E hE h0
  rw [moment_g] at hg
  change 27-3*sideP E+sideJ E=Complex.normSq E.det at hg
  rw [hp,hj] at hg
  apply Complex.normSq_eq_zero.mp
  linarith

/-- The closed physical bound itself forces J=0 at p=9. No all-critical or
nonzero minor assumption is needed for this boundary routing. -/
theorem normalized_strip_p9_fourier {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) (hp : sideP (stripCorner H c)=9) :
    FourierOrTranspose H := by
  have hb := (strip_scalar_bounds hH c).2
  have hjabs : |sideJ (stripCorner H c)|=0 := by
    rw [hp] at hb
    exact le_antisymm (by linarith) (abs_nonneg _)
  have hd := side_p9_j0_singular (stripCorner H c)
    (fun i j => hH.1.1 (front i) (triples c j))
    (fun j => hH.2.1 (triples c j)) hp (abs_eq_zero.mp hjabs)
  exact phaseHadamard_singular_minor_fourier hH.1
    ⟨front,fun a b h => Fin.ext (congrArg (fun x : Fin 6 => x.val) h)⟩
    ⟨triples c,strip_triples_injective c⟩ hd

/-- The z=0 exceptional scalar parameter is discharged into the singular
minor route. This routes to a family; it does not exclude that family. -/
theorem normalized_strip_zero_parameter_fourier {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (c : Fin 20) (z : ℝ)
    (hp : sideP (stripCorner H c)=9-z^2) (hz : z=0) : FourierOrTranspose H := by
  apply normalized_strip_p9_fourier hH c
  simpa only [hz,zero_pow (by decide : 2≠0),sub_zero] using hp

end
#print axioms side_g_determinant
#print axioms side_p9_j0_singular
#print axioms normalized_strip_p9_fourier
#print axioms normalized_strip_zero_parameter_fourier
end CriticalSingularBoundary20261003
