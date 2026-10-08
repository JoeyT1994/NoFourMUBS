import RadianSeedBounds
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace CriticalRowSum20261003
open Mub6 Mub6.Numerical
open scoped BigOperators
noncomputable section

def triples : Fin 20 → Fin 3 → Fin 6 :=
  ![![0,1,2],![0,1,3],![0,1,4],![0,1,5],
    ![0,2,3],![0,2,4],![0,2,5],![0,3,4],![0,3,5],![0,4,5],
    ![1,2,3],![1,2,4],![1,2,5],![1,3,4],![1,3,5],![1,4,5],
    ![2,3,4],![2,3,5],![2,4,5],![3,4,5]]

theorem triples_increasing : ∀ c, triples c 0 < triples c 1 ∧ triples c 1 < triples c 2 := by
  decide +kernel

theorem triples_injective : Function.Injective triples := by
  decide +kernel

theorem triples_cover : ∀ i j k : Fin 6, i<j → j<k →
    ∃ c, triples c 0=i ∧ triples c 1=j ∧ triples c 2=k := by
  decide +kernel

def correlation (u : Fin 6 → ℂ) (c : Fin 20) : ℂ :=
  u (triples c 0)+u (triples c 1)+u (triples c 2)

theorem sum_sq_identity (u : Fin 6 → ℂ) :
    (∑ c, Complex.normSq (correlation u c)) =
      6*(∑ j, Complex.normSq (u j))+4*Complex.normSq (∑ j, u j) := by
  simp [correlation,triples,Fin.sum_univ_succ,Complex.normSq_apply,
    Complex.add_re,Complex.add_im]
  ring

theorem unit_zero_sum (u : Fin 6 → ℂ)
    (hu : ∀ j, Complex.normSq (u j)=1) (hz : ∑ j, u j=0) :
    (∑ c, Complex.normSq (correlation u c))=36 := by
  rw [sum_sq_identity,hz]
  norm_num [hu]

def relativeRow (H : BasisMatrix) (a b : Fin 6) (j : Fin 6) : ℂ :=
  H a j * star (H b j)

theorem row_gram {H : BasisMatrix} (hH : PhaseHadamard H) :
    Matrix.of H*Matrix.conjTranspose (Matrix.of H)=(6:ℂ) • (1:Matrix (Fin 6) (Fin 6) ℂ) := by
  let M : Matrix (Fin 6) (Fin 6) ℂ := Matrix.of H
  have hc : Matrix.conjTranspose M*M=(6:ℂ) • (1:Matrix (Fin 6) (Fin 6) ℂ) := hH.2
  have hright : Matrix.conjTranspose M*((6:ℂ)⁻¹ • M)=1 := by
    rw [Matrix.mul_smul,hc,smul_smul]
    norm_num
  have hleft := mul_eq_one_comm.mp hright
  have hs := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℂ => (6:ℂ) • M) hleft
  change M*Matrix.conjTranspose M=(6:ℂ) • (1:Matrix (Fin 6) (Fin 6) ℂ)
  simpa only [Matrix.smul_mul,smul_smul,
    mul_inv_cancel₀ (by norm_num : (6:ℂ)≠0),one_smul] using hs

theorem pair_sum {H : BasisMatrix} (hH : PhaseHadamard H) {a b : Fin 6} (hab : a≠b) :
    (∑ c, Complex.normSq (correlation (relativeRow H a b) c))=36 := by
  apply unit_zero_sum
  · intro j
    simp [relativeRow,Complex.normSq_mul,Complex.normSq_conj,hH.1,Complex.star_def]
  · have h := congrFun (congrFun (row_gram hH) a) b
    simpa [relativeRow,Matrix.mul_apply,Matrix.conjTranspose_apply,Matrix.one_apply,hab,Matrix.of_apply] using h

/-- The p invariant of an actual three-row, three-column corner. -/
def cornerP (H : BasisMatrix) (rows : Fin 3 → Fin 6) (c : Fin 20) : ℝ :=
  Complex.normSq (correlation (relativeRow H (rows 0) (rows 1)) c)+
  Complex.normSq (correlation (relativeRow H (rows 0) (rows 2)) c)+
  Complex.normSq (correlation (relativeRow H (rows 1) (rows 2)) c)

/-- Every three distinct physical rows have the exact twenty-corner sum 108.
No all-critical, dephasing, strictness or nonzero-minor assumption is needed. -/
theorem physical_sum {H : BasisMatrix} (hH : PhaseHadamard H)
    (rows : Fin 3 → Fin 6) (hr : Function.Injective rows) :
    (∑ c, cornerP H rows c)=108 := by
  have h01 : rows 0≠rows 1 := fun h => (by decide : (0:Fin 3)≠1) (hr h)
  have h02 : rows 0≠rows 2 := fun h => (by decide : (0:Fin 3)≠2) (hr h)
  have h12 : rows 1≠rows 2 := fun h => (by decide : (1:Fin 3)≠2) (hr h)
  simp only [cornerP,Finset.sum_add_distrib]
  rw [pair_sum hH h01,pair_sum hH h02,pair_sum hH h12]
  norm_num

#print axioms triples_increasing
#print axioms triples_injective
#print axioms triples_cover
#print axioms sum_sq_identity
#print axioms unit_zero_sum
#print axioms pair_sum
#print axioms physical_sum
end
end CriticalRowSum20261003
