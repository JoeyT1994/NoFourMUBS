import SharedRationalIncidence
import HybridLambdaMasks

/-! Rational polynomial reconstruction using the four shared seed phases and
lifted side/root data. Reciprocal coordinates are constrained by exact witness
equations; they are not unconstrained carrier-entry coordinates. -/
namespace Mub6.Classification.LiftedAtlasPolynomial
open Mub6 Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Mub6.Classification.PoleAtlas FourierSeedBinding
open SharedRationalIncidence MvPolynomial Matrix
noncomputable section

structure CPoly (σ : Type*) where
  re : CarrierPoly σ
  im : CarrierPoly σ

namespace CPoly
variable {σ : Type*}

def value (p : σ → ℝ) (P : CPoly σ) : ℂ :=
  ⟨evalReal p P.re, evalReal p P.im⟩
def rat (q : ℚ) : CPoly σ := ⟨C q, 0⟩
def coord (a b : σ) : CPoly σ := ⟨X a, X b⟩
def plus (P Q : CPoly σ) : CPoly σ := ⟨P.re + Q.re, P.im + Q.im⟩
def minus (P : CPoly σ) : CPoly σ := ⟨-P.re, -P.im⟩
def times (P Q : CPoly σ) : CPoly σ :=
  ⟨P.re * Q.re - P.im * Q.im, P.re * Q.im + P.im * Q.re⟩
def conj (P : CPoly σ) : CPoly σ := ⟨P.re, -P.im⟩

instance : Add (CPoly σ) := ⟨plus⟩
instance : Neg (CPoly σ) := ⟨minus⟩
instance : Sub (CPoly σ) := ⟨fun P Q => plus P (minus Q)⟩
instance : Mul (CPoly σ) := ⟨times⟩
instance (n : Nat) : OfNat (CPoly σ) n := ⟨rat n⟩

@[simp] theorem value_rat (p : σ → ℝ) (q : ℚ) : value p (rat q) = (q : ℂ) := by
  apply Complex.ext <;> simp [value, rat, evalReal]
@[simp] theorem value_coord (p : σ → ℝ) (a b : σ) :
    value p (coord a b) = (⟨p a, p b⟩ : ℂ) := by
  apply Complex.ext <;> simp [value, coord, evalReal]
@[simp] theorem value_add (p : σ → ℝ) (P Q : CPoly σ) :
    value p (P + Q) = value p P + value p Q := by
  apply Complex.ext <;> simp [value, HAdd.hAdd, Add.add, plus, evalReal]
@[simp] theorem value_neg (p : σ → ℝ) (P : CPoly σ) :
    value p (-P) = -value p P := by
  apply Complex.ext <;> simp [value, Neg.neg, minus, evalReal]
@[simp] theorem value_sub (p : σ → ℝ) (P Q : CPoly σ) :
    value p (P - Q) = value p P - value p Q := by
  change value p (P + -Q) = _
  simp [sub_eq_add_neg]
@[simp] theorem value_mul (p : σ → ℝ) (P Q : CPoly σ) :
    value p (P * Q) = value p P * value p Q := by
  apply Complex.ext <;> simp [value, HMul.hMul, Mul.mul, times, evalReal,
    Complex.mul_re, Complex.mul_im]
@[simp] theorem value_conj (p : σ → ℝ) (P : CPoly σ) :
    value p (conj P) = star (value p P) := by
  apply Complex.ext <;> simp [value, conj, evalReal]
@[simp] theorem value_nat (p : σ → ℝ) (n : Nat) :
    value p (OfNat.ofNat n : CPoly σ) = (n : ℂ) := by
  exact_mod_cast value_rat p (n : ℚ)
end CPoly

/- A 20-complex-coordinate lift: four seed entries; seven coordinates for
each side (u,v,W,delta,tau,tau inverse,pivot inverse); omega; Gram inverse. -/
abbrev Variable := Fin 20 × Bool
abbrev Poly := CPoly Variable
abbrev Poly3 := Fin 3 → Fin 3 → Poly
abbrev Poly6 := Fin 6 → Fin 6 → Poly

def z (i : Fin 20) : Poly := CPoly.coord (i, false) (i, true)
def point (v : Fin 20 → ℂ) : Variable → ℝ :=
  fun a => if a.2 then (v a.1).im else (v a.1).re

@[simp] theorem value_z (v : Fin 20 → ℂ) (i : Fin 20) :
    CPoly.value (point v) (z i) = v i := by
  simp [z, point]

def seedPoly : Poly3 := ![![1,1,1], ![1,z 0,z 1], ![1,z 2,z 3]]

def rowSPoly (a b : Poly) : Poly := -(1 + a + b)

def fourierRowPoly (s A B w : Poly) : Fin 3 → Poly :=
  ![CPoly.rat (1/3) * s + A + B,
    CPoly.rat (1/3) * s + A*w + B*(w*w),
    CPoly.rat (1/3) * s + A*(w*w) + B*w]

def sidePoly (s t u v W delta tau itau ipivot w : Poly) : Poly3 :=
  let alpha := s*s - 3*u*CPoly.conj s
  let beta := t*t - 3*v*CPoly.conj t
  let pivot := CPoly.rat (1/2) * (2*s*t - 3*W + delta)
  ![![1,1,1],
    fourierRowPoly s tau (CPoly.rat (1/9)*alpha*itau) w,
    fourierRowPoly t (beta*tau*ipivot) (CPoly.rat (1/9)*pivot*itau) w]

def horizontalPoly : Poly3 := sidePoly
  (rowSPoly (z 0) (z 1)) (rowSPoly (z 2) (z 3))
  (z 4) (z 5) (z 6) (z 7) (z 8) (z 9) (z 10) (z 18)
def verticalPoly : Poly3 := sidePoly
  (rowSPoly (z 0) (z 2)) (rowSPoly (z 1) (z 3))
  (z 11) (z 12) (z 13) (z 14) (z 15) (z 16) (z 17) (z 18)

def eval3 (p : Variable → ℝ) (A : Poly3) : Mat3 := fun i j => CPoly.value p (A i j)

@[simp] theorem eval3_seed (v : Fin 20 → ℂ) :
    eval3 (point v) seedPoly = seed (v 0) (v 1) (v 2) (v 3) := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [eval3, seedPoly, seed]

@[simp] theorem value_rowS (p : Variable → ℝ) (a b : Poly) :
    CPoly.value p (rowSPoly a b) = rowS (CPoly.value p a) (CPoly.value p b) := by
  simp [rowSPoly, rowS]

@[simp] theorem value_fourierRow (p : Variable → ℝ) (s A B w : Poly) (j : Fin 3) :
    CPoly.value p (fourierRowPoly s A B w j) =
      fourierRow (CPoly.value p s) (CPoly.value p A) (CPoly.value p B) (CPoly.value p w) j := by
  fin_cases j <;> simp [fourierRowPoly, fourierRow, pow_two] <;> ring

theorem reciprocal_unique {a b : ℂ} (h : a*b = 1) : b = a⁻¹ :=
  eq_inv_of_mul_eq_one_right h

theorem sidePoly_binding (p : Variable → ℝ) (s t u v W delta tau itau ipivot w : Poly)
    (htau : CPoly.value p tau * CPoly.value p itau = 1)
    (hpivot : sidePivot (CPoly.value p s) (CPoly.value p t) (CPoly.value p W)
      (CPoly.value p delta) * CPoly.value p ipivot = 1) (r : ℂ) :
    eval3 p (sidePoly s t u v W delta tau itau ipivot w) =
      reconstructedSide (CPoly.value p s) (CPoly.value p t) (CPoly.value p u)
        (CPoly.value p v) r (CPoly.value p W) (CPoly.value p delta)
        (CPoly.value p tau) (CPoly.value p w) := by
  have ht := reciprocal_unique htau
  have hp := reciprocal_unique hpivot
  ext i j
  fin_cases i <;>
    simp [eval3, sidePoly, reconstructedSide, radicalSide, affineSide,
      value_fourierRow, sideAlpha, sidePivot, sideGamma, pow_two, ht, hp,
      div_eq_mul_inv] <;> ring

#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_rat
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_coord
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_add
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_neg
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_sub
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_mul
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_conj
#print axioms Mub6.Classification.LiftedAtlasPolynomial.CPoly.value_nat
#print axioms Mub6.Classification.LiftedAtlasPolynomial.value_z
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_seed
#print axioms Mub6.Classification.LiftedAtlasPolynomial.value_rowS
#print axioms Mub6.Classification.LiftedAtlasPolynomial.value_fourierRow
#print axioms Mub6.Classification.LiftedAtlasPolynomial.reciprocal_unique
#print axioms Mub6.Classification.LiftedAtlasPolynomial.sidePoly_binding

end
end Mub6.Classification.LiftedAtlasPolynomial
