import NormalizedClearedMoments

/-! Row-phase covariance of the exact side polynomials. This transports the
normalized four-phase identities to an arbitrary unit first side column. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate
open SignedDeterminant
noncomputable section

theorem gauge_norm (u z : ℂ) (hu : Complex.normSq u=1) :
    (u*z)*conj (u*z)=z*conj z := by
  rw [map_mul]
  calc
    u*z*(conj u*conj z)=(u*conj u)*(z*conj z) := by ring
    _ = _ := by simp [Complex.mul_conj,hu]

theorem gauge_ratio_unit (u v : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    Complex.normSq (v*conj u)=1 := by simp [Complex.normSq_mul,hu,hv]

theorem p_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    pComplex (u*s) (v*t) ((v*conj u)*r)=pComplex s t r := by
  simp only [pComplex,gauge_norm u s hu,gauge_norm v t hv,
    gauge_norm (v*conj u) r (gauge_ratio_unit u v hu hv)]

theorem j_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    jComplex (u*s) (v*t) ((v*conj u)*r)=jComplex s t r := by
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  unfold jComplex
  simp only [map_mul,starRingEnd_self_apply,conj_eq_inv_of_normSq_one hu,
    conj_eq_inv_of_normSq_one hv]
  field_simp [hu0,hv0]
  <;> ring

theorem w_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    wComplex (u*s) (v*t) ((v*conj u)*r)=wComplex s t r := by
  simp only [wComplex,gauge_norm u s hu,gauge_norm v t hv,
    gauge_norm (v*conj u) r (gauge_ratio_unit u v hu hv)]

theorem stableA_gauge (u v s t r z : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    meanStableA (u*s) (v*t) ((v*conj u)*r) z=meanStableA s t r z := by
  simp only [meanStableA,p_gauge u v s t r hu hv,j_gauge u v s t r hu hv,
    w_gauge u v s t r hu hv]

theorem P0_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    symmetricP0 (u*s) (v*t) ((v*conj u)*r)=(u*v)*symmetricP0 s t r := by
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  unfold symmetricP0
  simp only [map_mul,starRingEnd_self_apply,conj_eq_inv_of_normSq_one hu,
    conj_eq_inv_of_normSq_one hv]
  field_simp [hu0,hv0]
  <;> ring

theorem P1_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    symmetricP1 (u*s) (v*t) ((v*conj u)*r)=(v*(conj u)^2)*symmetricP1 s t r := by
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  unfold symmetricP1
  simp only [map_mul,starRingEnd_self_apply,conj_eq_inv_of_normSq_one hu,
    conj_eq_inv_of_normSq_one hv]
  field_simp [hu0,hv0]
  <;> ring

theorem P2_gauge (u v s t r : ℂ) (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    symmetricP2 (u*s) (v*t) ((v*conj u)*r)=(u*(conj v)^2)*symmetricP2 s t r := by
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  unfold symmetricP2
  simp only [map_mul,starRingEnd_self_apply,conj_eq_inv_of_normSq_one hu,
    conj_eq_inv_of_normSq_one hv]
  field_simp [hu0,hv0]
  <;> ring

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.gauge_norm
#print axioms Centiradian20261006.NativeMean20261006.gauge_ratio_unit
#print axioms Centiradian20261006.NativeMean20261006.p_gauge
#print axioms Centiradian20261006.NativeMean20261006.j_gauge
#print axioms Centiradian20261006.NativeMean20261006.w_gauge
#print axioms Centiradian20261006.NativeMean20261006.stableA_gauge
#print axioms Centiradian20261006.NativeMean20261006.P0_gauge
#print axioms Centiradian20261006.NativeMean20261006.P1_gauge
#print axioms Centiradian20261006.NativeMean20261006.P2_gauge
