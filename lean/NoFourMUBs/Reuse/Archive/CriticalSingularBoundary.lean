import NoFourMUBs.Reuse.Archive.CriticalPhysicalParams
import NoFourMUBs.Reuse.Archive.CriticalLightSheet
import NoFourMUBs.Reuse.Archive.SingularFourierRouting

set_option autoImplicit false
namespace CriticalSingularBoundary20261003
open NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalPhysicalParameters20261003
open CriticalFourierRouting20261003 CriticalRowSum20261003
noncomputable section

theorem side_p9_j0_singular (E : Hadamard6.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hp : sideP E=9) (hj : sideJ E=0) : E.det=0 := by
  have hg := CriticalLightSheet20261003.side_g_determinant E hE h0
  rw [CriticalLightSheet20261003.moment_g] at hg
  change 27-3*sideP E+sideJ E=Complex.normSq E.det at hg
  rw [hp,hj] at hg
  apply Complex.normSq_eq_zero.mp
  linarith

/-- The closed physical bound itself forces J=0 at p=9. No all-critical or
nonzero minor assumption is needed for this boundary routing. -/
theorem normalized_strip_p9_fourier {H : OAI.MUB6.CMatrix}
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
theorem normalized_strip_zero_parameter_fourier {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H) (c : Fin 20) (z : ℝ)
    (hp : sideP (stripCorner H c)=9-z^2) (hz : z=0) : FourierOrTranspose H := by
  apply normalized_strip_p9_fourier hH c
  simpa only [hz,zero_pow (by decide : 2≠0),sub_zero] using hp

end
#print axioms side_p9_j0_singular
#print axioms normalized_strip_p9_fourier
#print axioms normalized_strip_zero_parameter_fourier
end CriticalSingularBoundary20261003
