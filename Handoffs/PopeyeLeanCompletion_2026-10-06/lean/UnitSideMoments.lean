import SideGaugeCovariance

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate
open SignedDeterminant
noncomputable section

def sideS3 (u a b : ℂ) : ℂ := u+a+b
def sideT3 (v c d : ℂ) : ℂ := v+c+d
def sideR3 (u a b v c d : ℂ) : ℂ := v*conj u+c*conj a+d*conj b
def sidePi3 (u a b v c d : ℂ) : ℂ := sideS3 u a b*sideT3 v c d-(u*v+a*c+b*d)
def sideC1 (u a b v c d : ℂ) : ℂ := (u*a*b)*conj (sidePi3 u a b v c d)
def sideC2 (u a b v c d : ℂ) : ℂ := (v*c*d)*conj (sidePi3 u a b v c d)
def sideDet3 (u a b v c d : ℂ) : ℂ :=
  rawDet (a*conj u) (b*conj u) (c*conj v) (d*conj v)

theorem side_normalization_data (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (hv : Complex.normSq v=1) :
    sideS3 u a b=u*sideS (a*conj u) (b*conj u) ∧
    sideT3 v c d=v*sideT (c*conj v) (d*conj v) ∧
    sideR3 u a b v c d=(v*conj u)*sideR (a*conj u) (b*conj u) (c*conj v) (d*conj v) ∧
    sidePi3 u a b v c d=(u*v)*sidePi (a*conj u) (b*conj u) (c*conj v) (d*conj v) ∧
    sideC1 u a b v c d=conj (v*(conj u)^2)*
      ((a*conj u)*(b*conj u)*conj (sidePi (a*conj u) (b*conj u) (c*conj v) (d*conj v))) ∧
    sideC2 u a b v c d=conj (u*(conj v)^2)*
      ((c*conj v)*(d*conj v)*conj (sidePi (a*conj u) (b*conj u) (c*conj v) (d*conj v))) := by
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  refine ⟨?_,?_,?_,?_,?_,?_⟩ <;>
    simp only [sideS3,sideT3,sideR3,sidePi3,sideC1,sideC2,sideS,sideT,sideR,sidePi] <;>
    (try simp only [map_add,map_sub,map_mul,map_pow,map_one,starRingEnd_self_apply]) <;>
    simp only [conj_eq_inv_of_normSq_one hu,conj_eq_inv_of_normSq_one hv] <;>
    field_simp [hu0,hv0] <;> ring

theorem unit_conjugate_pair (w P Q : ℂ) (hw : Complex.normSq w=1) :
    2*conj (w*P)*(w*Q)=2*conj P*Q := by
  rw [map_mul]
  calc
    _ = (w*conj w)*(2*conj P*Q) := by ring
    _ = _ := by simp [Complex.mul_conj,hw]

theorem unit_direct_pair (w P Q : ℂ) (hw : Complex.normSq w=1) :
    2*(w*P)*(conj w*Q)=2*P*Q := by
  calc
    _ = (w*conj w)*(2*P*Q) := by ring
    _ = _ := by simp [Complex.mul_conj,hw]

theorem unit_side_Pi_identity (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*conj (symmetricP0 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d))*sidePi3 u a b v c d =
      meanStableA (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)
        (sideR3 u a b v c d*conj (sideR3 u a b v c d))-sideDet3 u a b v c d := by
  obtain ⟨hS,hT,hR,hPi,_,_⟩ := side_normalization_data u a b v c d hu hv
  rw [hS,hT,hR,hPi,P0_gauge _ _ _ _ _ hu hv,
    gauge_norm _ _ (gauge_ratio_unit u v hu hv),stableA_gauge _ _ _ _ _ _ hu hv,
    unit_conjugate_pair _ _ _ (by simp [Complex.normSq_mul,hu,hv])]
  exact normalized_Pi_identity _ _ _ _
    (by simp [Complex.normSq_mul,ha,hu]) (by simp [Complex.normSq_mul,hb,hu])
    (by simp [Complex.normSq_mul,hc,hv]) (by simp [Complex.normSq_mul,hd,hv])

theorem unit_side_C1_identity (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*symmetricP1 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)*sideC1 u a b v c d =
      meanStableA (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)
        (sideT3 v c d*conj (sideT3 v c d))+sideDet3 u a b v c d := by
  obtain ⟨hS,hT,hR,_,hC,_⟩ := side_normalization_data u a b v c d hu hv
  rw [hS,hT,hR,hC,P1_gauge _ _ _ _ _ hu hv,gauge_norm v _ hv,
    stableA_gauge _ _ _ _ _ _ hu hv,
    unit_direct_pair _ _ _ (by simp [pow_two,Complex.normSq_mul,hu,hv])]
  exact normalized_C1_identity _ _ _ _
    (by simp [Complex.normSq_mul,ha,hu]) (by simp [Complex.normSq_mul,hb,hu])
    (by simp [Complex.normSq_mul,hc,hv]) (by simp [Complex.normSq_mul,hd,hv])

theorem unit_side_C2_identity (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    2*symmetricP2 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)*sideC2 u a b v c d =
      meanStableA (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)
        (sideS3 u a b*conj (sideS3 u a b))+sideDet3 u a b v c d := by
  obtain ⟨hS,hT,hR,_,_,hC⟩ := side_normalization_data u a b v c d hu hv
  rw [hS,hT,hR,hC,P2_gauge _ _ _ _ _ hu hv,gauge_norm u _ hu,
    stableA_gauge _ _ _ _ _ _ hu hv,
    unit_direct_pair _ _ _ (by simp [pow_two,Complex.normSq_mul,hu,hv])]
  exact normalized_C2_identity _ _ _ _
    (by simp [Complex.normSq_mul,ha,hu]) (by simp [Complex.normSq_mul,hb,hu])
    (by simp [Complex.normSq_mul,hc,hv]) (by simp [Complex.normSq_mul,hd,hv])

theorem side_moment_2_neg1 (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) :
    u^2*conj v+a^2*conj c+b^2*conj d =
      sideS3 u a b*conj (sideR3 u a b v c d)-sideC1 u a b v c d := by
  have hu0 := nonzero_of_normSq_one hu
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  simp only [sideS3,sideR3,sideC1,sidePi3,sideT3]
  simp only [map_add,map_sub,map_mul,starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one hu,conj_eq_inv_of_normSq_one ha,conj_eq_inv_of_normSq_one hb]
  field_simp [hu0,ha0,hb0]
  <;> ring

theorem side_moment_neg1_2 (u a b v c d : ℂ)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    conj u*v^2+conj a*c^2+conj b*d^2 =
      sideT3 v c d*sideR3 u a b v c d-sideC2 u a b v c d := by
  have hv0 := nonzero_of_normSq_one hv
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  simp only [sideS3,sideR3,sideC2,sidePi3,sideT3]
  simp only [map_add,map_sub,map_mul,starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one hv,conj_eq_inv_of_normSq_one hc,conj_eq_inv_of_normSq_one hd]
  field_simp [hv0,hc0,hd0]
  <;> ring

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.side_normalization_data
#print axioms Centiradian20261006.NativeMean20261006.unit_conjugate_pair
#print axioms Centiradian20261006.NativeMean20261006.unit_direct_pair
#print axioms Centiradian20261006.NativeMean20261006.unit_side_Pi_identity
#print axioms Centiradian20261006.NativeMean20261006.unit_side_C1_identity
#print axioms Centiradian20261006.NativeMean20261006.unit_side_C2_identity
#print axioms Centiradian20261006.NativeMean20261006.side_moment_2_neg1
#print axioms Centiradian20261006.NativeMean20261006.side_moment_neg1_2
