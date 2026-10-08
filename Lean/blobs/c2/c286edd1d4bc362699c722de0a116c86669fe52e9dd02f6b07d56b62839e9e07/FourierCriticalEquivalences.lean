import FourierCriticalAlgebra
import Worker12.TransposeClassification
import Hadamard6.TaoAtlas

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace FourierCriticalLocus20261003
open Mub6
open Mub6.Classification.CompactCover
noncomputable section

/-- Lightweight literal representative N=[[F,F],[F D,-F D]]. -/
def N (ω z w : ℂ) : Mat6 :=
  !![1,1,1,1,1,1;
     1,ω,ω^2,1,ω,ω^2;
     1,ω^2,ω,1,ω^2,ω;
     1,z,w,-1,-z,-w;
     1,ω*z,ω^2*w,-1,-(ω*z),-(ω^2*w);
     1,ω^2*z,ω*w,-1,-(ω^2*z),-(ω*w)]

theorem N_eq_fourier_transpose (ω z w : ℂ) : N ω z w=(Worker12.fourierPhase ω z w)ᵀ := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [N,Worker12.fourierPhase,Worker12.fourier3,Worker12.phaseVector,
      Worker12.unsplitMatrix,Worker12.splitIndex,finSumFinEquiv] <;> ring

theorem N_first_row (ω z w : ℂ) : ∀ j, N ω z w 0 j=1 := by
  intro j; fin_cases j <;> rfl

theorem N_first_column (ω z w : ℂ) : ∀ i, N ω z w i 0=1 := by
  intro i; fin_cases i <;> rfl


def signColumns (ε δ : Bool) : Equiv.Perm (Fin 6) :=
  (if ε then Equiv.swap 1 4 else Equiv.refl _).trans
  (if δ then Equiv.swap 2 5 else Equiv.refl _)

def bottomCycle : Equiv.Perm (Fin 6) := (Equiv.swap 3 4).trans (Equiv.swap 3 5)

def characterRows : Fin 3 → Equiv.Perm (Fin 6)
  | 0 => Equiv.refl _
  | 1 => bottomCycle
  | 2 => bottomCycle.trans bottomCycle

theorem N_sign_equivalent (ω z w : ℂ) (ε δ : Bool) :
    MonomialEquivalent (N ω (if ε then -z else z) (if δ then -w else w)) (N ω z w) := by
  refine ⟨Equiv.refl _,signColumns ε δ,(fun _ => 1),(fun _ => 1),
    by intro i; simp,by intro j; simp,?_⟩
  funext i j
  cases ε <;> cases δ <;> fin_cases i <;> fin_cases j <;>
    simp [N,signColumns,monomialEdge]

theorem N_character_equivalent {ω : ℂ} (hω : ω^2+ω+1=0) (a : Fin 3) :
    MonomialEquivalent (N ω (ω^(2*a.val)) (ω^a.val)) (N ω 1 1) := by
  have h3 : ω^3=1 := by linear_combination (ω-1)*hω
  have h4 : ω^4=ω := by calc
    _ = ω*ω^3 := by ring
    _ = ω := by rw [h3,mul_one]
  have h5 : ω^5=ω^2 := by calc
    _ = ω^2*ω^3 := by ring
    _ = ω^2 := by rw [h3,mul_one]
  have h6 : ω^6=1 := by calc
    _ = (ω^3)^2 := by ring
    _ = 1 := by rw [h3]; norm_num
  refine ⟨characterRows a,Equiv.refl _,(fun _ => 1),(fun _ => 1),
    by intro i; simp,by intro j; simp,?_⟩
  funext i j
  fin_cases a <;> fin_cases i <;> fin_cases j <;>
    simp [N,characterRows,bottomCycle,monomialEdge,h3,h4,h5,h6] <;>
    ring_nf <;> simp [h3,h4,h5,h6]

theorem N_grid_equivalent {ω : ℂ} (hω : ω^2+ω+1=0)
    (a : Fin 3) (ε δ : Bool) :
    MonomialEquivalent (N ω (signedPower ω ε (2*a.val)) (signedPower ω δ a.val))
      (N ω 1 1) :=
  Worker12.monomialEquivalent_trans
    (N_sign_equivalent ω (ω^(2*a.val)) (ω^a.val) ε δ)
    (N_character_equivalent hω a)

theorem N_square_equivalent {ω : ℂ} (hω : ω^2+ω+1=0) :
    MonomialEquivalent (N (ω^2) 1 1) (N ω 1 1) := by
  have h3 : ω^3=1 := by linear_combination (ω-1)*hω
  have h4 : ω^4=ω := by calc
    _ = ω*ω^3 := by ring
    _ = ω := by rw [h3,mul_one]
  refine ⟨(Equiv.swap 1 2).trans (Equiv.swap 4 5),Equiv.refl _,
    (fun _ => 1),(fun _ => 1),by intro i; simp,by intro j; simp,?_⟩
  funext i j
  fin_cases i <;> fin_cases j <;> simp [N,monomialEdge,← pow_mul,h4]

/-- Same literal tensor-Fourier carrier as the fixed pilot, kept independent
of the numerical graph forest. The pilot binding is a separate exact equality. -/
def fixedF6 : Mat6 := N Hadamard6.standardOmega 1 1

theorem N_primitive_fixed {ω : ℂ} (hω : Worker12.PrimitiveCubicPhase ω) :
    MonomialEquivalent (N ω 1 1) fixedF6 := by
  have hstd := Hadamard6.standardOmega_isPrimitiveCubicPhase
  rcases Hadamard6.quadratic_root_relative hstd.2 hω.2 with he | he
  · rw [he]
    exact Worker12.monomialEquivalent_refl _
  · rw [he]
    exact N_square_equivalent hstd.2

theorem fixedF6_transpose : fixedF6ᵀ=fixedF6 := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [fixedF6,N]

end
#print axioms N_eq_fourier_transpose
#print axioms N_first_row
#print axioms N_first_column
#print axioms N_sign_equivalent
#print axioms N_character_equivalent
#print axioms N_grid_equivalent
#print axioms N_square_equivalent
#print axioms N_primitive_fixed
#print axioms fixedF6_transpose
end FourierCriticalLocus20261003
