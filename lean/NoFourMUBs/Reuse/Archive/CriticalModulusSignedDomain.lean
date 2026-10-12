import NoFourMUBs.Reuse.Archive.CriticalModulusIntervals

set_option autoImplicit false
namespace CriticalModulusDomain20261003
noncomputable section

def Allowed (k K : ℝ) : Prop :=
    (k≤1/3 ∧ ((minimum k≤K ∧ K≤rootMinus k) ∨
      (rootPlus k≤K ∧ K≤root0 k))) ∨
    (1/3≤k ∧ k≤1 ∧ ((minimum k≤K ∧ K≤rootMinus k) ∨
      (root0 k≤K ∧ K≤rootPlus k))) ∨
    (1≤k ∧ ((minimum k≤K ∧ K≤root0 k) ∨
      (rootMinus k≤K ∧ K≤rootPlus k)))

theorem h_abs (k : ℝ) : h |k|=h k := by simp only [h,sq_abs]
theorem p_abs (k : ℝ) : p |k|=p k := by rw [p,p,h_abs]
theorem w_abs (k : ℝ) : w |k|=w k := by rw [w,w,h_abs]
theorem minimum_abs (k : ℝ) : minimum |k|=minimum k := by
  simp only [minimum,h_abs,sq_abs]
theorem trace_square_abs (k : ℝ) :
    (8*|k|/(h |k|)^2)^2=(8*k/(h k)^2)^2 := by
  rw [trace_square,minimum_abs,trace_square]

/-- Signed physical k is retained. The real-root domain depends only on
its magnitude; this statement does not assume a physical rephasing. -/
theorem physical_allowed_abs (X Y Z k K : ℝ) (hkn : k≠0)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=w k+K) (hk : X*Y*Z=K)
    (hb : (8*k/(h k)^2)^2≤4*K) : Allowed |k| K := by
  apply physical_intervals X Y Z |k| K (abs_pos.mpr hkn)
  · simpa only [p_abs] using hp
  · simpa only [w_abs] using hw
  · exact hk
  · simpa only [trace_square_abs] using hb

end
#print axioms h_abs
#print axioms p_abs
#print axioms w_abs
#print axioms minimum_abs
#print axioms trace_square_abs
#print axioms physical_allowed_abs
end CriticalModulusDomain20261003
