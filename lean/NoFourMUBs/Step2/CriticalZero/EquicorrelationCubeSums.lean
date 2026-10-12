import NoFourMUBs.Reuse.Archive.FourierSide
import NoFourMUBs.Reuse.Archive.SideFourierElementaryRoots

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open Hadamard6Extensions.FourierSide
open StrictReconstruction20261007.ElementaryFourier

/-- Exact possible squared lengths of the sum of two equal-cube unit numbers. -/
theorem two_cube_norms (x y : ℂ) (hx : Complex.normSq x = 1)
    (hxy : x ^ 3 = y ^ 3) :
    Complex.normSq (x + y) = 1 ∨ Complex.normSq (x + y) = 4 := by
  have hw := reconstructionOmega_unit_quadratic.2
  have hs : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  rcases cube_roots_are_modes hw hxy.symm with hy | hy | hy
  · right
    rw [hy]
    calc
      _ = Complex.normSq (x * (1 + 1)) := congrArg Complex.normSq (by ring)
      _ = 4 := by
        rw [Complex.normSq_mul, hx, one_mul]
        try simp only [omega_sq hw]
        norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
          Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
  · left
    rw [hy]
    calc
      _ = Complex.normSq (x * (1 + reconstructionOmega)) := congrArg Complex.normSq (by ring)
      _ = 1 := by
        rw [Complex.normSq_mul, hx, one_mul]
        try simp only [omega_sq hw]
        norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
          Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
  · left
    rw [hy]
    calc
      _ = Complex.normSq (x * (1 + reconstructionOmega ^ 2)) := congrArg Complex.normSq (by ring)
      _ = 1 := by
        rw [Complex.normSq_mul, hx, one_mul]
        try simp only [omega_sq hw]
        norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
          Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]

/-- Three equal-cube unit numbers either coincide, have one repeated value,
or exhaust the three roots.  The existing mode theorem covers all cases. -/
theorem three_cube_norms (x y z : ℂ) (hx : Complex.normSq x = 1)
    (hxy : x ^ 3 = y ^ 3) (hxz : x ^ 3 = z ^ 3) :
    Complex.normSq (x + y + z) = 0 ∨
      Complex.normSq (x + y + z) = 3 ∨ Complex.normSq (x + y + z) = 9 := by
  have hw := reconstructionOmega_unit_quadratic.2
  have hs : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  rcases cube_roots_are_modes hw hxy.symm with hy | hy | hy
  · rcases cube_roots_are_modes hw hxz.symm with hz | hz | hz
    · right; right
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + 1 + 1)) :=
          congrArg Complex.normSq (by ring)
        _ = 9 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + 1 + reconstructionOmega)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + 1 + reconstructionOmega ^ 2)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
  · rcases cube_roots_are_modes hw hxz.symm with hz | hz | hz
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega + 1)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega + reconstructionOmega)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega + reconstructionOmega ^ 2)) :=
          congrArg Complex.normSq (by ring)
        _ = 0 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
  · rcases cube_roots_are_modes hw hxz.symm with hz | hz | hz
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega ^ 2 + 1)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega ^ 2 + reconstructionOmega)) :=
          congrArg Complex.normSq (by ring)
        _ = 0 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]
    · right; left
      rw [hy, hz]
      calc
        _ = Complex.normSq (x * (1 + reconstructionOmega ^ 2 + reconstructionOmega ^ 2)) :=
          congrArg Complex.normSq (by ring)
        _ = 3 := by
          rw [Complex.normSq_mul, hx, one_mul]
          try simp only [omega_sq hw]
          norm_num [reconstructionOmega_explicit, Complex.normSq_apply,
            Complex.mul_re, Complex.mul_im] <;> nlinarith [hs]

end NoFourMUBs.Step2.Critical.Equicorrelation
