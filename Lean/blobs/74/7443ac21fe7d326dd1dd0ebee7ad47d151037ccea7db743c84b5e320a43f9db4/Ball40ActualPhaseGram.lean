import Ball40PhasePairError
import Mathlib.Tactic.FinCases

/-! Literal four-angle phase-to-Gram binding for both stationary seeds.
The existing physical seedAngle/seedEntry definitions are used unchanged. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.Ball40Translation20261007
open scoped ComplexConjugate
noncomputable section

def omega : ℂ := Complex.exp (Complex.I*((2*Real.pi/3:ℝ):ℂ))

theorem omega_re : omega.re=-(1:ℝ)/2 := by
  rw [omega, mul_comm Complex.I, Complex.exp_ofReal_mul_I_re]
  rw [show 2*Real.pi/3=Real.pi-Real.pi/3 by ring,
    Real.cos_pi_sub, Real.cos_pi_div_three]
  norm_num

theorem omega_im : omega.im=Real.sqrt 3/2 := by
  rw [omega, mul_comm Complex.I, Complex.exp_ofReal_mul_I_im]
  rw [show 2*Real.pi/3=Real.pi-Real.pi/3 by ring,
    Real.sin_pi_sub, Real.sin_pi_div_three]

theorem omega_unit : Complex.normSq omega=1 := by
  have hn : ‖omega‖=1 := by simp [omega, Complex.norm_exp]
  rw [Complex.normSq_eq_norm_sq, hn]
  norm_num

theorem omega_exp_two : Complex.exp (Complex.I*((2*Real.pi/3:ℝ):ℂ))=omega := rfl

theorem omega_exp_four :
    Complex.exp (Complex.I*((4*Real.pi/3:ℝ):ℂ))=conj omega := by
  apply Complex.ext
  · rw [Complex.conj_re, omega_re, mul_comm Complex.I, Complex.exp_ofReal_mul_I_re]
    rw [show 4*Real.pi/3=Real.pi/3+Real.pi by ring,
      Real.cos_add_pi, Real.cos_pi_div_three]
    norm_num
  · rw [Complex.conj_im, omega_im, mul_comm Complex.I, Complex.exp_ofReal_mul_I_im]
    rw [show 4*Real.pi/3=Real.pi/3+Real.pi by ring,
      Real.sin_add_pi, Real.sin_pi_div_three]

def seedRoot (conjugateSeed : Bool) : ℂ := if conjugateSeed then conj omega else omega

theorem seedRoot_unit (σ : Bool) : Complex.normSq (seedRoot σ)=1 := by
  cases σ <;> simp [seedRoot, omega_unit]

theorem seedRoot_re (σ : Bool) : (seedRoot σ).re=-(1:ℝ)/2 := by
  cases σ <;> simp [seedRoot, omega_re]

theorem root_square_conjugate {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) : z*z=conj z := by
  have him := root_im_square hu hr
  apply Complex.ext
  · simp only [Complex.mul_re, Complex.conj_re, hr]
    nlinarith
  · simp only [Complex.mul_im, Complex.conj_im, hr]
    ring

theorem conjugate_root_square {z : ℂ} (hu : Complex.normSq z=1)
    (hr : z.re=-(1:ℝ)/2) : conj z*conj z=z := by
  have h := root_square_conjugate (z:=conj z) (by simpa using hu) (by simpa using hr)
  simpa using h

theorem phase_mul_conjugate (x y : ℝ) :
    Complex.exp (Complex.I*(x:ℂ))*conj (Complex.exp (Complex.I*(y:ℂ))) =
      Complex.exp (Complex.I*((x-y:ℝ):ℂ)) := by
  rw [← Complex.exp_conj, ← Complex.exp_add]
  congr 1
  simp
  <;> ring

/-- This is exactly the seed table from CentiradianPhysical, evaluated at
both literal radian seeds; it assumes no Fourier-root identity. -/
theorem seed_phase_constants (σ : Bool) (i : Fin 4) :
    Complex.exp (Complex.I*(seedAngle σ i:ℂ)) =
      ![seedRoot σ, conj (seedRoot σ), conj (seedRoot σ), seedRoot σ] i := by
  cases σ <;> fin_cases i <;>
    simp [seedAngle, seedRoot, omega_exp_two, omega_exp_four]

def seedPhaseEntries (σ : Bool) (u : Fin 4 → ℝ) (i : Fin 4) : ℂ :=
  Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))

theorem seedPhaseEntries_components (σ : Bool) (u : Fin 4 → ℝ) :
    seedPhaseEntries σ u =
      ![seedRoot σ*Complex.exp (Complex.I*(u 0:ℂ)),
        conj (seedRoot σ)*Complex.exp (Complex.I*(u 1:ℂ)),
        conj (seedRoot σ)*Complex.exp (Complex.I*(u 2:ℂ)),
        seedRoot σ*Complex.exp (Complex.I*(u 3:ℂ))] := by
  funext i
  rw [seedPhaseEntries, Complex.ofReal_add, mul_add, Complex.exp_add, seed_phase_constants]
  fin_cases i <;> rfl

/-- The third Gram parameter uses the actual conjugated row products.
Its perturbations are u2-u0 and u3-u1, with the conjugate seed handled by
the same exact identity. -/
theorem seedPhaseEntries_cross (σ : Bool) (u : Fin 4 → ℝ) :
    -1-seedPhaseEntries σ u 2*conj (seedPhaseEntries σ u 0)-
      seedPhaseEntries σ u 3*conj (seedPhaseEntries σ u 1) =
      phasePair (seedRoot σ) (u 2-u 0) (u 3-u 1) := by
  simp only [seedPhaseEntries_components]
  change -1-(conj (seedRoot σ)*Complex.exp (Complex.I*(u 2:ℂ)))*
      conj (seedRoot σ*Complex.exp (Complex.I*(u 0:ℂ)))-
      (seedRoot σ*Complex.exp (Complex.I*(u 3:ℂ)))*
      conj (conj (seedRoot σ)*Complex.exp (Complex.I*(u 1:ℂ))) = _
  simp only [map_mul]
  have hcc : conj (conj (seedRoot σ))=seedRoot σ := by simp
  rw [hcc]
  have h1 := conjugate_root_square (seedRoot_unit σ) (seedRoot_re σ)
  have h2 := root_square_conjugate (seedRoot_unit σ) (seedRoot_re σ)
  have ht1 : (conj (seedRoot σ)*Complex.exp (Complex.I*(u 2:ℂ)))*
      (conj (seedRoot σ)*conj (Complex.exp (Complex.I*(u 0:ℂ)))) =
      seedRoot σ*Complex.exp (Complex.I*((u 2-u 0:ℝ):ℂ)) := by
    calc
      _ = (conj (seedRoot σ)*conj (seedRoot σ))*
          (Complex.exp (Complex.I*(u 2:ℂ))*conj (Complex.exp (Complex.I*(u 0:ℂ)))) := by ring
      _ = _ := by rw [h1, phase_mul_conjugate]
  have ht2 : (seedRoot σ*Complex.exp (Complex.I*(u 3:ℂ)))*
      (seedRoot σ*conj (Complex.exp (Complex.I*(u 1:ℂ)))) =
      conj (seedRoot σ)*Complex.exp (Complex.I*((u 3-u 1:ℝ):ℂ)) := by
    calc
      _ = (seedRoot σ*seedRoot σ)*
          (Complex.exp (Complex.I*(u 3:ℂ))*conj (Complex.exp (Complex.I*(u 1:ℂ)))) := by ring
      _ = _ := by rw [h2, phase_mul_conjugate]
  rw [ht1, ht2]
  rfl

/-- The previously missing analytic Gram error, now on the literal four
phase variables of either exact physical seed. It includes rho=0 and does
not require a shell, a finite sampling assumption, or rho <= 1/40. -/
theorem actual_phase_gram_error (σ : Bool) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hu : ∀ i, |u i| ≤ ρ) :
    |Complex.normSq (-1-seedPhaseEntries σ u 0-seedPhaseEntries σ u 1)-
      homogeneousNorm (u 0) (u 1)| +
    |Complex.normSq (-1-seedPhaseEntries σ u 2-seedPhaseEntries σ u 3)-
      homogeneousNorm (u 2) (u 3)| +
    |Complex.normSq (-1-seedPhaseEntries σ u 2*conj (seedPhaseEntries σ u 0)-
      seedPhaseEntries σ u 3*conj (seedPhaseEntries σ u 1))-
      homogeneousNorm (u 2-u 0) (u 3-u 1)| ≤ 35*ρ^3+18*ρ^4 := by
  have hS := phasePair_gram_error (seedRoot_unit σ) (seedRoot_re σ) hρ (hu 0) (hu 1)
  have hT := phasePair_gram_error (z:=conj (seedRoot σ))
    (by simpa using seedRoot_unit σ) (by simpa using seedRoot_re σ) hρ (hu 2) (hu 3)
  have h20 : |u 2-u 0| ≤ 2*ρ := by
    have h : |u 2-u 0| ≤ |u 2|+|u 0| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (u 2) 0 (u 0)
    linarith [hu 2, hu 0]
  have h31 : |u 3-u 1| ≤ 2*ρ := by
    have h : |u 3-u 1| ≤ |u 3|+|u 1| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (u 3) 0 (u 1)
    linarith [hu 3, hu 1]
  have hV := phasePair_gram_error (seedRoot_unit σ) (seedRoot_re σ)
    (show 0 ≤ 2*ρ by linarith) h20 h31
  have heS : -1-seedPhaseEntries σ u 0-seedPhaseEntries σ u 1 =
      phasePair (seedRoot σ) (u 0) (u 1) := by
    rw [seedPhaseEntries_components]
    rfl
  have heT : -1-seedPhaseEntries σ u 2-seedPhaseEntries σ u 3 =
      phasePair (conj (seedRoot σ)) (u 2) (u 3) := by
    rw [seedPhaseEntries_components]
    simp [phasePair]
  rw [heS, heT, seedPhaseEntries_cross]
  nlinarith only [hS, hT, hV]

/-- Direct binding to actual matrix entries under the literal seed lift from
InPuncturedSeedBall. Physicality is not needed for this analytic estimate. -/
theorem actual_matrix_gram_error (H : Mat6) (σ : Bool) (u : Fin 4 → ℝ)
    {ρ : ℝ} (hρ : 0 ≤ ρ) (hu : ∀ i, |u i| ≤ ρ)
    (hlift : ∀ i, seedEntry H i =
      Complex.exp (Complex.I*((seedAngle σ i+u i:ℝ):ℂ))) :
    |Complex.normSq (-1-H 1 1-H 1 2)-homogeneousNorm (u 0) (u 1)| +
    |Complex.normSq (-1-H 2 1-H 2 2)-homogeneousNorm (u 2) (u 3)| +
    |Complex.normSq (-1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2))-
      homogeneousNorm (u 2-u 0) (u 3-u 1)| ≤ 35*ρ^3+18*ρ^4 := by
  have h0 : H 1 1=seedPhaseEntries σ u 0 := by simpa [seedEntry, seedPhaseEntries] using hlift 0
  have h1 : H 1 2=seedPhaseEntries σ u 1 := by simpa [seedEntry, seedPhaseEntries] using hlift 1
  have h2 : H 2 1=seedPhaseEntries σ u 2 := by simpa [seedEntry, seedPhaseEntries] using hlift 2
  have h3 : H 2 2=seedPhaseEntries σ u 3 := by simpa [seedEntry, seedPhaseEntries] using hlift 3
  rw [h0, h1, h2, h3]
  exact actual_phase_gram_error σ u hρ hu

end
end Centiradian20261006.Ball40Translation20261007

#print axioms Centiradian20261006.Ball40Translation20261007.omega_re
#print axioms Centiradian20261006.Ball40Translation20261007.omega_im
#print axioms Centiradian20261006.Ball40Translation20261007.omega_unit
#print axioms Centiradian20261006.Ball40Translation20261007.omega_exp_two
#print axioms Centiradian20261006.Ball40Translation20261007.omega_exp_four
#print axioms Centiradian20261006.Ball40Translation20261007.seedRoot_unit
#print axioms Centiradian20261006.Ball40Translation20261007.seedRoot_re
#print axioms Centiradian20261006.Ball40Translation20261007.root_square_conjugate
#print axioms Centiradian20261006.Ball40Translation20261007.conjugate_root_square
#print axioms Centiradian20261006.Ball40Translation20261007.phase_mul_conjugate
#print axioms Centiradian20261006.Ball40Translation20261007.seed_phase_constants
#print axioms Centiradian20261006.Ball40Translation20261007.seedPhaseEntries_components
#print axioms Centiradian20261006.Ball40Translation20261007.seedPhaseEntries_cross
#print axioms Centiradian20261006.Ball40Translation20261007.actual_phase_gram_error
#print axioms Centiradian20261006.Ball40Translation20261007.actual_matrix_gram_error
