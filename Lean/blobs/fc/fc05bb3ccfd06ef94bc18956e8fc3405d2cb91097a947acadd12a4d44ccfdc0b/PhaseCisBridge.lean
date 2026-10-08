import PhaseModelRows

/-! Literal equality between the two phase notations used by the physical
row construction and the Fourier column modules. -/
namespace Seed0024.Orientation
open Seed0024.UnitTriple
open Seed0024Mathematical20261007

theorem phase_eq_cis (x : ℝ) : phase x=cis x := by
  apply Complex.ext <;>
    simp [phase,cis,Complex.exp_ofReal_mul_I_re,Complex.exp_ofReal_mul_I_im]

theorem unit_eq_cis_arg (z : ℂ) (hz : ‖z‖=1) : z=cis z.arg := by
  rw [← phase_eq_cis]
  exact (phase_arg_of_unit z hz).symm

theorem unit_exists_cis (z : ℂ) (hz : ‖z‖=1) : ∃x : ℝ,z=cis x :=
  ⟨z.arg,unit_eq_cis_arg z hz⟩

#print axioms phase_eq_cis
#print axioms unit_eq_cis_arg
#print axioms unit_exists_cis
end Seed0024.Orientation
