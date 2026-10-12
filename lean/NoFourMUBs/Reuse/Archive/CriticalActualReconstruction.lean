import NoFourMUBs.Reuse.Archive.CriticalReconstructionAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNewtonPhysical
import NoFourMUBs.Reuse.Archive.PhysicalSideRational

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

def blockLambda (x y : Fin 3 → ℂ) : Fin 3 → ℂ :=
  FourierPhysicalSide.physicalLambda (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)

def blockSheet (x y : Fin 3 → ℂ) : ℂ :=
  FourierPhysicalSide.physicalSheet (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)

/-- All eighteen fields of the literal phase block equal the external side
constructor. The real-sheet equality is an explicit physical premise, supplied
by the separate checked critical-sheet theorem; no sheet sign is chosen. -/
theorem actual_reconstructionData (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ)) :
    dataOf x y = reconstructionData
      (dataOf x y).s (dataOf x y).S (dataOf x y).t (dataOf x y).T
      (dataOf x y).r (dataOf x y).Q (z : ℂ)
      (blockLambda x y 0) (blockLambda x y 1) (blockLambda x y 2)
      (star (blockLambda x y 0)) (star (blockLambda x y 1)) (star (blockLambda x y 2)) := by
  have hL (i : Fin 3) : Complex.normSq (blockLambda x y i)=1 :=
    FourierPhysicalSide.physicalLambda_phase _ _ _ _ _ _ i
      (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hD
  have hpair (i : Fin 3) : blockLambda x y i*star (blockLambda x y i)=1 := by
    rw [← phase_inverse (hL i)]
    exact mul_inv_cancel₀ (phase_nonzero (hL i))
  have hprod := FourierPhysicalSide.physicalLambda_row_products
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hD
  change blockLambda x y 0/blockLambda x y 1=rowProd x ∧
    blockLambda x y 0/blockLambda x y 2=rowProd y at hprod
  have hu : rowProd x=blockLambda x y 0*star (blockLambda x y 1) := by
    simpa only [div_eq_mul_inv,phase_inverse (hL 1)] using hprod.1.symm
  have hv : rowProd y=blockLambda x y 0*star (blockLambda x y 2) := by
    simpa only [div_eq_mul_inv,phase_inverse (hL 2)] using hprod.2.symm
  have hperm := FourierPhysicalSide.physicalSheet_lambda0_permanent
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hD
  change blockSheet x y*blockLambda x y 0=perm x y at hperm
  rw [hz] at hperm
  have hp : perm x y=blockLambda x y 0*(z : ℂ) := by
    simpa only [mul_comm] using hperm.symm
  have hPc := (phase_data_conjugates hx hy).2.2.2.2
  change perm (invRow x) (invRow y)=star (perm x y) at hPc
  rw [hp] at hPc
  have hP : perm (invRow x) (invRow y)=star (blockLambda x y 0)*(z : ℂ) := by
    simpa using hPc
  exact dataOf_reconstruction x y (z : ℂ) _ _ _ _ _ _
    (hpair 0) (hpair 1) (hpair 2) hu hv hp hP

end
#print axioms actual_reconstructionData
end CriticalNewtonGauge20261003
