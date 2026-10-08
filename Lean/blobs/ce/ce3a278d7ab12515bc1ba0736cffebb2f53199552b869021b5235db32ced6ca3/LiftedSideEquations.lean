import LiftedAtlasPhysical

/-! Explicit finite rational-polynomial equations on the actual 40-real lift.
This file addresses the Fourier root/reciprocal part of admissibility only.
It does not assert that the equations imply a physical phase-Hadamard matrix. -/
namespace Mub6.Classification.LiftedAdmissibility
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Mub6.Classification.LiftedAtlasPolynomial SharedRationalIncidence
open MvPolynomial Matrix
noncomputable section

/-- A finite list of complex rational polynomials is split into real equations. -/
def realEquation {ι : Type*} (F : ι → Poly) (i : ι × Bool) : CarrierPoly Variable :=
  if i.2 then (F i.1).im else (F i.1).re

def RealZeros {ι : Type*} (p : Variable → ℝ) (F : ι → Poly) : Prop :=
  ∀ i, evalReal p (realEquation F i) = 0

theorem realZeros_iff {ι : Type*} (p : Variable → ℝ) (F : ι → Poly) :
    RealZeros p F ↔ ∀ i, CPoly.value p (F i) = 0 := by
  constructor
  · intro h i
    apply Complex.ext
    · simpa [CPoly.value, realEquation] using h (i, false)
    · simpa [CPoly.value, realEquation] using h (i, true)
  · intro h i
    obtain ⟨i,b⟩ := i
    cases b
    · simpa [realEquation, CPoly.value] using congrArg Complex.re (h i)
    · simpa [realEquation, CPoly.value] using congrArg Complex.im (h i)

structure SidePolys where
  s : Poly
  t : Poly
  u : Poly
  v : Poly
  r : Poly
  W : Poly
  delta : Poly
  tau : Poly
  itau : Poly
  ipivot : Poly

def alphaPoly (s u : Poly) : Poly := s*s - 3*u*CPoly.conj s
def gammaPoly (s t W : Poly) : Poly := 2*s*t - 3*W
def pivotPoly (S : SidePolys) : Poly :=
  CPoly.rat (1/2) * (gammaPoly S.s S.t S.W + S.delta)
def cubePoly (P : Poly) : Poly := P*P*P

def cubeNumeratorPoly (S : SidePolys) : Poly :=
  let a := alphaPoly S.s S.u
  let h := pivotPoly S
  S.u*(h*h)*(h-a*S.r) + S.v*(a*a)*(h*CPoly.conj S.r-a) -
    CPoly.rat (1/27) * cubePoly (h*S.s-a*S.t)

/-- delta-square, cleared tau-cube, tau reciprocal, pivot reciprocal. -/
def sideEquations (S : SidePolys) : Fin 4 → Poly :=
  ![S.delta*S.delta - gammaPoly S.s S.t S.W * gammaPoly S.s S.t S.W +
      CPoly.rat 4 * alphaPoly S.s S.u * alphaPoly S.t S.v,
    cubePoly S.tau * cubePoly S.delta - cubeNumeratorPoly S,
    S.tau*S.itau-1,
    pivotPoly S*S.ipivot-1]

@[simp] theorem value_alphaPoly (p : Variable → ℝ) (s u : Poly) :
    CPoly.value p (alphaPoly s u) = sideAlpha (CPoly.value p s) (CPoly.value p u) := by
  simp [alphaPoly, sideAlpha, pow_two]
@[simp] theorem value_gammaPoly (p : Variable → ℝ) (s t W : Poly) :
    CPoly.value p (gammaPoly s t W) =
      sideGamma (CPoly.value p s) (CPoly.value p t) (CPoly.value p W) := by
  simp [gammaPoly, sideGamma]
@[simp] theorem value_pivotPoly (p : Variable → ℝ) (S : SidePolys) :
    CPoly.value p (pivotPoly S) = sidePivot (CPoly.value p S.s) (CPoly.value p S.t)
      (CPoly.value p S.W) (CPoly.value p S.delta) := by
  simp [pivotPoly, sidePivot]
  ring
@[simp] theorem value_cubePoly (p : Variable → ℝ) (P : Poly) :
    CPoly.value p (cubePoly P) = CPoly.value p P ^ 3 := by
  simp [cubePoly, pow_succ]

def cubeNumerator (s t u v r W delta : ℂ) : ℂ :=
  let a := sideAlpha s u
  let h := sidePivot s t W delta
  u*h^2*(h-a*r) + v*a^2*(h*star r-a) - (h*s-a*t)^3/27

theorem value_cubeNumeratorPoly (p : Variable → ℝ) (S : SidePolys) :
    CPoly.value p (cubeNumeratorPoly S) = cubeNumerator
      (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.u)
      (CPoly.value p S.v) (CPoly.value p S.r) (CPoly.value p S.W)
      (CPoly.value p S.delta) := by
  simp [cubeNumeratorPoly, cubeNumerator, pow_two]
  ring

theorem sideEquations_iff (p : Variable → ℝ) (S : SidePolys) :
    RealZeros p (sideEquations S) ↔
      CPoly.value p S.delta ^ 2 =
        sideGamma (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.W) ^ 2 -
        4*sideAlpha (CPoly.value p S.s) (CPoly.value p S.u) *
          sideAlpha (CPoly.value p S.t) (CPoly.value p S.v) ∧
      CPoly.value p S.tau ^ 3 * CPoly.value p S.delta ^ 3 = cubeNumerator
        (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.u)
        (CPoly.value p S.v) (CPoly.value p S.r) (CPoly.value p S.W)
        (CPoly.value p S.delta) ∧
      CPoly.value p S.tau * CPoly.value p S.itau = 1 ∧
      sidePivot (CPoly.value p S.s) (CPoly.value p S.t)
        (CPoly.value p S.W) (CPoly.value p S.delta) * CPoly.value p S.ipivot = 1 := by
  rw [realZeros_iff]
  simp only [Fin.forall_fin_succ, Fin.val_zero, Fin.coe_ofNat_eq_mod,
    sideEquations, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.cons_val_succ, Matrix.head_cons, Matrix.tail_cons,
    CPoly.value_add, CPoly.value_sub, CPoly.value_mul, CPoly.value_rat,
    CPoly.value_one, value_gammaPoly, value_alphaPoly, value_pivotPoly,
    value_cubePoly, value_cubeNumeratorPoly, Rat.cast_ofNat, sub_eq_zero]
  constructor
  · rintro ⟨h0,h1,h2,h3,_⟩
    exact ⟨by linear_combination h0, h1, h2, h3⟩
  · rintro ⟨h0,h1,h2,h3⟩
    exact ⟨by linear_combination h0, h1, h2, h3, by intro i; exact Fin.elim0 i⟩

/-- Reversal of denominator clearing requires delta nonzero. The two inverse
coordinates themselves certify nonzero tau and nonzero pivot. -/
theorem sideEquations_reconstruction_iff (p : Variable → ℝ) (S : SidePolys)
    (hd : CPoly.value p S.delta ≠ 0) :
    RealZeros p (sideEquations S) ↔
      SideReconstructionData (CPoly.value p S.s) (CPoly.value p S.t)
        (CPoly.value p S.u) (CPoly.value p S.v) (CPoly.value p S.r)
        (CPoly.value p S.W) (CPoly.value p S.delta) (CPoly.value p S.tau) ∧
      CPoly.value p S.tau * CPoly.value p S.itau = 1 ∧
      sidePivot (CPoly.value p S.s) (CPoly.value p S.t)
        (CPoly.value p S.W) (CPoly.value p S.delta) * CPoly.value p S.ipivot = 1 := by
  rw [sideEquations_iff]
  have hc : CPoly.value p S.tau ^ 3 = sideRadicand
        (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.u)
        (CPoly.value p S.v) (CPoly.value p S.r) (CPoly.value p S.W)
        (CPoly.value p S.delta) ↔
      CPoly.value p S.tau ^ 3 * CPoly.value p S.delta ^ 3 = cubeNumerator
        (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.u)
        (CPoly.value p S.v) (CPoly.value p S.r) (CPoly.value p S.W)
        (CPoly.value p S.delta) := by
    exact eq_div_iff (pow_ne_zero 3 hd)
  constructor
  · rintro ⟨h0,h1,h2,h3⟩
    refine ⟨⟨h0,hd,?_,hc.mpr h1,?_⟩,h2,h3⟩
    · intro hp
      rw [hp, zero_mul] at h3
      exact zero_ne_one h3
    · intro ht
      rw [ht, zero_mul] at h2
      exact zero_ne_one h2
  · rintro ⟨h,h2,h3⟩
    exact ⟨h.delta_square,hc.mp h.cube_eq,h2,h3⟩

/-- A polynomial solution reconstructs exactly the inherited Fourier formula;
this equality says nothing by itself about row phases or orthogonality. -/
theorem sideEquations_side_binding (p : Variable → ℝ) (S : SidePolys) (w : Poly)
    (h : RealZeros p (sideEquations S)) :
    eval3 p (sidePoly S.s S.t S.u S.v S.W S.delta S.tau S.itau S.ipivot w) =
      reconstructedSide (CPoly.value p S.s) (CPoly.value p S.t)
        (CPoly.value p S.u) (CPoly.value p S.v) (CPoly.value p S.r)
        (CPoly.value p S.W) (CPoly.value p S.delta) (CPoly.value p S.tau)
        (CPoly.value p w) := by
  have hh := (sideEquations_iff p S).mp h
  exact sidePoly_binding p _ _ _ _ _ _ _ _ _ _ hh.2.2.1 hh.2.2.2 _

def rowRPoly (a b c d : Poly) : Poly := -(1+c*CPoly.conj a+d*CPoly.conj b)
@[simp] theorem value_rowRPoly (p : Variable → ℝ) (a b c d : Poly) :
    CPoly.value p (rowRPoly a b c d) = rowR
      (CPoly.value p a) (CPoly.value p b) (CPoly.value p c) (CPoly.value p d) := by
  simp [rowRPoly, rowR]

def horizontalData : SidePolys :=
  ⟨rowSPoly (z 0) (z 1),rowSPoly (z 2) (z 3),z 4,z 5,
    rowRPoly (z 0) (z 1) (z 2) (z 3),z 6,z 7,z 8,z 9,z 10⟩
def verticalData : SidePolys :=
  ⟨rowSPoly (z 0) (z 2),rowSPoly (z 1) (z 3),z 11,z 12,
    rowRPoly (z 0) (z 2) (z 1) (z 3),z 13,z 14,z 15,z 16,z 17⟩

/-- Both sides use the same four seed coordinates, with the vertical swap. -/
def bothSideEquations : Bool × Fin 4 → Poly := fun i =>
  sideEquations (if i.1 then verticalData else horizontalData) i.2

theorem bothSideEquations_iff (p : Variable → ℝ) :
    RealZeros p bothSideEquations ↔
      RealZeros p (sideEquations horizontalData) ∧ RealZeros p (sideEquations verticalData) := by
  simp only [realZeros_iff]
  constructor
  · intro h
    exact ⟨fun i => h (false,i), fun i => h (true,i)⟩
  · rintro ⟨hB,hC⟩ ⟨b,i⟩
    cases b
    · exact hB i
    · exact hC i

#print axioms Mub6.Classification.LiftedAdmissibility.realZeros_iff
#print axioms Mub6.Classification.LiftedAdmissibility.value_alphaPoly
#print axioms Mub6.Classification.LiftedAdmissibility.value_gammaPoly
#print axioms Mub6.Classification.LiftedAdmissibility.value_pivotPoly
#print axioms Mub6.Classification.LiftedAdmissibility.value_cubePoly
#print axioms Mub6.Classification.LiftedAdmissibility.value_cubeNumeratorPoly
#print axioms Mub6.Classification.LiftedAdmissibility.sideEquations_iff
#print axioms Mub6.Classification.LiftedAdmissibility.sideEquations_reconstruction_iff
#print axioms Mub6.Classification.LiftedAdmissibility.sideEquations_side_binding
#print axioms Mub6.Classification.LiftedAdmissibility.value_rowRPoly
#print axioms Mub6.Classification.LiftedAdmissibility.bothSideEquations_iff
end
end Mub6.Classification.LiftedAdmissibility
