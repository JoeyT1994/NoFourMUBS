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
  change value p (plus P Q) = _
  apply Complex.ext <;> simp [value, plus, evalReal]
@[simp] theorem value_neg (p : σ → ℝ) (P : CPoly σ) :
    value p (-P) = -value p P := by
  change value p (minus P) = _
  apply Complex.ext <;> simp [value, minus, evalReal]
@[simp] theorem value_sub (p : σ → ℝ) (P Q : CPoly σ) :
    value p (P - Q) = value p P - value p Q := by
  change value p (P + -Q) = _
  simp [sub_eq_add_neg]
@[simp] theorem value_mul (p : σ → ℝ) (P Q : CPoly σ) :
    value p (P * Q) = value p P * value p Q := by
  change value p (times P Q) = _
  apply Complex.ext <;> simp [value, times, evalReal,
    Complex.mul_re, Complex.mul_im]
@[simp] theorem value_conj (p : σ → ℝ) (P : CPoly σ) :
    value p (conj P) = star (value p P) := by
  apply Complex.ext <;> simp [value, conj, evalReal]
theorem value_nat (p : σ → ℝ) (n : Nat) :
    value p (OfNat.ofNat n : CPoly σ) = (n : ℂ) := by
  exact_mod_cast value_rat p (n : ℚ)
@[simp] theorem value_one (p : σ → ℝ) : value p (1 : CPoly σ) = 1 := by
  change value p (rat ((1 : Nat) : ℚ)) = 1
  simp only [Nat.cast_one, value_rat, Rat.cast_one]
@[simp] theorem value_two (p : σ → ℝ) : value p (2 : CPoly σ) = 2 :=
  value_rat p 2
@[simp] theorem value_three (p : σ → ℝ) : value p (3 : CPoly σ) = 3 :=
  value_rat p 3
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
  have ha : CPoly.value p (s*s - 3*u*CPoly.conj s) =
      sideAlpha (CPoly.value p s) (CPoly.value p u) := by
    simp [sideAlpha, pow_two]
  have hb : CPoly.value p (t*t - 3*v*CPoly.conj t) =
      sideAlpha (CPoly.value p t) (CPoly.value p v) := by
    simp [sideAlpha, pow_two]
  have hh : CPoly.value p (CPoly.rat (1/2) * (2*s*t - 3*W + delta)) =
      sidePivot (CPoly.value p s) (CPoly.value p t) (CPoly.value p W) (CPoly.value p delta) := by
    simp [sidePivot, sideGamma]
    ring
  have hB : CPoly.value p (CPoly.rat (1/9)*(s*s - 3*u*CPoly.conj s)*itau) =
      sideAlpha (CPoly.value p s) (CPoly.value p u) / (9 * CPoly.value p tau) := by
    rw [CPoly.value_mul, CPoly.value_mul, CPoly.value_rat, ha, ht]
    simp only [div_eq_mul_inv, _root_.mul_inv_rev]
    norm_num
    ring
  have hC : CPoly.value p ((t*t - 3*v*CPoly.conj t)*tau*ipivot) =
      sideAlpha (CPoly.value p t) (CPoly.value p v) * CPoly.value p tau /
        sidePivot (CPoly.value p s) (CPoly.value p t) (CPoly.value p W) (CPoly.value p delta) := by
    rw [CPoly.value_mul, CPoly.value_mul, hb, hp]
    rfl
  have hD : CPoly.value p (CPoly.rat (1/9)*
      (CPoly.rat (1/2) * (2*s*t - 3*W + delta))*itau) =
      sidePivot (CPoly.value p s) (CPoly.value p t) (CPoly.value p W) (CPoly.value p delta) /
        (9 * CPoly.value p tau) := by
    rw [CPoly.value_mul, CPoly.value_mul, CPoly.value_rat, hh, ht]
    simp only [div_eq_mul_inv, _root_.mul_inv_rev]
    norm_num
    ring
  ext i j
  fin_cases i
  · fin_cases j <;> exact CPoly.value_one p
  · change CPoly.value p (fourierRowPoly s tau
      (CPoly.rat (1/9)*(s*s - 3*u*CPoly.conj s)*itau) w j) = _
    rw [value_fourierRow, hB]
    rfl
  · change CPoly.value p (fourierRowPoly t ((t*t - 3*v*CPoly.conj t)*tau*ipivot)
      (CPoly.rat (1/9)*(CPoly.rat (1/2)*(2*s*t - 3*W + delta))*itau) w j) = _
    rw [value_fourierRow, hC, hD]
    rfl

def mul3 (A B : Poly3) : Poly3 := fun i j =>
  A i 0 * B 0 j + A i 1 * B 1 j + A i 2 * B 2 j
def conjTranspose3 (A : Poly3) : Poly3 := fun i j => CPoly.conj (A j i)
def transpose3 (A : Poly3) : Poly3 := fun i j => A j i
def gramPoly (E : Poly3) : Poly3 := fun i j =>
  CPoly.rat (if i = j then 6 else 0) - mul3 E (conjTranspose3 E) i j
def adjugatePoly (A : Poly3) : Poly3 :=
  ![![A 1 1 * A 2 2 - A 1 2 * A 2 1,
      -(A 0 1 * A 2 2) + A 0 2 * A 2 1,
      A 0 1 * A 1 2 - A 0 2 * A 1 1],
    ![-(A 1 0 * A 2 2) + A 1 2 * A 2 0,
      A 0 0 * A 2 2 - A 0 2 * A 2 0,
      -(A 0 0 * A 1 2) + A 0 2 * A 1 0],
    ![A 1 0 * A 2 1 - A 1 1 * A 2 0,
      -(A 0 0 * A 2 1) + A 0 1 * A 2 0,
      A 0 0 * A 1 1 - A 0 1 * A 1 0]]
def forcedPoly (E B C : Poly3) (ig : Poly) : Poly3 :=
  let G := fun i j => ig * adjugatePoly (gramPoly E) i j
  fun i j => -(mul3 (mul3 (mul3 C (conjTranspose3 E)) G) B i j)

@[simp] theorem eval3_mul (p : Variable → ℝ) (A B : Poly3) :
    eval3 p (mul3 A B) = eval3 p A * eval3 p B := by
  ext i j
  simp [eval3, mul3, Matrix.mul_apply, Fin.sum_univ_three]
@[simp] theorem eval3_conjTranspose (p : Variable → ℝ) (A : Poly3) :
    eval3 p (conjTranspose3 A) = (eval3 p A)ᴴ := by
  ext i j
  simp [eval3, conjTranspose3, Matrix.conjTranspose_apply]
@[simp] theorem eval3_transpose (p : Variable → ℝ) (A : Poly3) :
    eval3 p (transpose3 A) = (eval3 p A)ᵀ := rfl
@[simp] theorem eval3_gram (p : Variable → ℝ) (A : Poly3) :
    eval3 p (gramPoly A) = CompactCover.gram (eval3 p A) := by
  ext i j
  change CPoly.value p (gramPoly A i j) = _
  simp only [gramPoly, CPoly.value_sub, CPoly.value_rat]
  have hm := congrArg (fun M : Mat3 => M i j) (eval3_mul p A (conjTranspose3 A))
  rw [eval3_conjTranspose] at hm
  change CPoly.value p (mul3 A (conjTranspose3 A) i j) = _ at hm
  rw [hm]
  by_cases hij : i = j <;>
    simp [CompactCover.gram, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, hij]
@[simp] theorem eval3_adjugate (p : Variable → ℝ) (A : Poly3) :
    eval3 p (adjugatePoly A) = (eval3 p A).adjugate := by
  rw [Matrix.adjugate_fin_three]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [eval3, adjugatePoly]

theorem forcedPoly_binding (p : Variable → ℝ) (E B C : Poly3) (ig : Poly)
    (hg : (CompactCover.gram (eval3 p E)).det * CPoly.value p ig = 1) :
    eval3 p (forcedPoly E B C ig) = forcedD (eval3 p E) (eval3 p B) (eval3 p C) := by
  have hi := reciprocal_unique hg
  have hG : eval3 p (fun i j => ig * adjugatePoly (gramPoly E) i j) =
      gramAdjugateQuotient (eval3 p E) := by
    ext i j
    change CPoly.value p (ig * adjugatePoly (gramPoly E) i j) = _
    rw [CPoly.value_mul, hi]
    have he := congrArg (fun M : Mat3 => M i j) (eval3_adjugate p (gramPoly E))
    rw [eval3_gram] at he
    change CPoly.value p (adjugatePoly (gramPoly E) i j) = _ at he
    rw [he]
    rfl
  change (fun i j => CPoly.value p (-(mul3 (mul3 (mul3 C (conjTranspose3 E))
    (fun i j => ig * adjugatePoly (gramPoly E) i j)) B i j))) = _
  simp only [CPoly.value_neg]
  change -(eval3 p (mul3 (mul3 (mul3 C (conjTranspose3 E))
    (fun i j => ig * adjugatePoly (gramPoly E) i j)) B)) = _
  rw [eval3_mul, eval3_mul, eval3_mul, eval3_conjTranspose, hG]
  rfl

def blockPoly (E B C D : Poly3) : Poly6 := fun r k =>
  Fin.addCases (m := 3) (n := 3)
    (fun i => Fin.addCases (m := 3) (n := 3) (E i) (B i) k)
    (fun i => Fin.addCases (m := 3) (n := 3) (C i) (D i) k) r
def carrierPoly : Poly6 := blockPoly seedPoly horizontalPoly (transpose3 verticalPoly)
  (forcedPoly seedPoly horizontalPoly (transpose3 verticalPoly) (z 19))
def carrierModel : SharedRationalIncidence.CarrierModel Variable where
  denominator := 1
  numeratorRe := fun r k => (carrierPoly r k).re
  numeratorIm := fun r k => (carrierPoly r k).im

theorem blockPoly_binding (p : Variable → ℝ) (E B C D : Poly3) :
    (fun r k => CPoly.value p (blockPoly E B C D r k)) =
      blockCarrier (eval3 p E) (eval3 p B) (eval3 p C) (eval3 p D) := by
  funext i j
  refine Fin.addCases (m := 3) (n := 3) (fun a => ?_) (fun a => ?_) i <;>
    refine Fin.addCases (m := 3) (n := 3) (fun b => ?_) (fun b => ?_) j <;>
    simp only [blockPoly, blockCarrier, eval3, Fin.addCases_left, Fin.addCases_right]

theorem carrierModel_denominator (p : Variable → ℝ) :
    evalReal p carrierModel.denominator = 1 := by
  simp [carrierModel, evalReal]

theorem carrierPoly_binding (v : Fin 20 → ℂ)
    (hg : (CompactCover.gram (seed (v 0) (v 1) (v 2) (v 3))).det * v 19 = 1) :
    (fun r k => CPoly.value (point v) (carrierPoly r k)) =
      reconstructedCarrier (seed (v 0) (v 1) (v 2) (v 3))
        (eval3 (point v) horizontalPoly) (eval3 (point v) verticalPoly)ᵀ := by
  rw [carrierPoly, blockPoly_binding]
  have h := forcedPoly_binding (point v) seedPoly horizontalPoly (transpose3 verticalPoly) (z 19)
    (by simpa using hg)
  rw [h, eval3_seed, eval3_transpose]
  rfl

theorem carrierModel_represents (v : Fin 20 → ℂ) (H : BasisMatrix)
    (h : (fun r k => CPoly.value (point v) (carrierPoly r k)) = H) :
    RepresentsAt carrierModel (point v) H := by
  constructor
  · intro r k
    have he := congrArg (fun M : BasisMatrix => (M r k).re) h
    simpa [CPoly.value, carrierModel, evalReal] using he
  · intro r k
    have he := congrArg (fun M : BasisMatrix => (M r k).im) h
    simpa [CPoly.value, carrierModel, evalReal] using he

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
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_mul
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_conjTranspose
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_transpose
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_gram
#print axioms Mub6.Classification.LiftedAtlasPolynomial.eval3_adjugate
#print axioms Mub6.Classification.LiftedAtlasPolynomial.forcedPoly_binding
#print axioms Mub6.Classification.LiftedAtlasPolynomial.blockPoly_binding
#print axioms Mub6.Classification.LiftedAtlasPolynomial.carrierModel_denominator
#print axioms Mub6.Classification.LiftedAtlasPolynomial.carrierPoly_binding
#print axioms Mub6.Classification.LiftedAtlasPolynomial.carrierModel_represents

end
end Mub6.Classification.LiftedAtlasPolynomial
