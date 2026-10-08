import SignedDeterminantFoundation

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate
open SignedDeterminant
noncomputable section

/-- The literal native nine-entry word table, row-major entries x,y,z,u,a,b,v,c,d.
All negative powers are interpreted as conjugate powers, including nonunit d. -/
def nativeRaw (x y z u a b v c d : ℂ) : ℂ := 0
    - (conj x)^2*y*z*u*(conj a)^2*b*v*c*(conj d)^2
    + (conj x)*y*u*(conj a)^2*b*c*(conj d)
    + y*(conj z)*u*(conj a)^2*b*(conj v)*c
    - x*y*(conj z)^2*u*(conj a)^2*b*(conj v)^2*c*d
    + (conj x)*y^2*(conj z)*u^2*(conj a)*(conj b)*(conj v)*(conj c)*d^2
    - (conj x)*y*u^2*(conj a)*(conj b)*(conj v)*d
    - (conj x)*z*u^2*(conj a)*(conj b)*(conj v)*c
    + (conj x)*(conj y)*z^2*u^2*(conj a)*(conj b)*(conj v)*c^2*(conj d)
    - (conj x)*y^2*(conj z)*u*(conj a)*(conj c)*d
    + (conj x)^2*y*z*u*(conj a)*v*(conj d)
    + x*(conj z)*u*(conj a)*(conj v)^2*c*d
    - (conj y)*z*u*(conj a)*(conj v)*c^2*(conj d)
    - (conj x)*y^2*(conj z)*(conj a)*b*v*(conj c)
    + x*y*(conj z)^2*(conj a)*b*(conj v)*d
    + (conj x)*z*(conj a)*b*v*c*(conj d)^2
    - x*(conj y)*(conj a)*b*(conj v)*c^2*(conj d)
    + (conj x)*y^2*(conj z)*(conj u)*(conj a)*b^2*v^2*(conj c)*(conj d)
    - y*(conj z)*(conj u)*(conj a)*b^2*v*(conj d)
    - x*(conj z)*(conj u)*(conj a)*b^2*c*(conj d)
    + x^2*(conj y)*(conj z)*(conj u)*(conj a)*b^2*(conj v)*c^2*(conj d)
    + (conj x)^2*y*z*u*(conj b)*v*(conj c)
    - y*(conj z)*u*(conj b)*(conj v)*(conj c)*d^2
    - (conj x)*(conj y)*z^2*u*(conj b)*c*(conj d)
    + x*(conj y)*u*(conj b)*(conj v)^2*c*d
    - (conj x)*y*(conj u)*b*v^2*(conj c)*(conj d)
    + x*y*(conj z)^2*(conj u)*b*(conj c)*d
    + (conj y)*z*(conj u)*b*v*c*(conj d)^2
    - x^2*(conj y)*(conj z)*(conj u)*b*(conj v)*c
    - (conj x)^2*y*z*u*a*(conj b)^2*v*(conj c)^2*d
    + (conj x)*z*u*a*(conj b)^2*(conj c)*d
    + (conj y)*z*u*a*(conj b)^2*(conj v)*d
    - x*(conj y)^2*z*u*a*(conj b)^2*(conj v)^2*c*d
    + (conj x)*y*a*(conj b)*v*(conj c)^2*d
    - x*(conj z)*a*(conj b)*(conj v)*(conj c)*d^2
    - (conj x)*(conj y)*z^2*a*(conj b)*v*(conj d)
    + x*(conj y)^2*z*a*(conj b)*(conj v)*c
    + y*(conj z)*(conj u)*a*v*(conj c)^2*d
    - (conj x)*z*(conj u)*a*v^2*(conj c)*(conj d)
    - x^2*(conj y)*(conj z)*(conj u)*a*(conj v)*d
    + x*(conj y)^2*z*(conj u)*a*c*(conj d)
    - x*y*(conj z)^2*(conj u)^2*a*b*v*(conj c)^2*d
    + x*(conj z)*(conj u)^2*a*b*v*(conj c)
    + x*(conj y)*(conj u)^2*a*b*v*(conj d)
    - x*(conj y)^2*z*(conj u)^2*a*b*v*c*(conj d)^2
    + (conj x)*(conj y)*z^2*(conj u)*a^2*(conj b)*v^2*(conj c)*(conj d)
    - (conj y)*z*(conj u)*a^2*(conj b)*v*(conj c)
    - x*(conj y)*(conj u)*a^2*(conj b)*(conj c)*d
    + x^2*(conj y)*(conj z)*(conj u)*a^2*(conj b)*(conj v)*(conj c)*d^2

/-- The native four-factor normalization, before assuming any unit modulus. -/
def nativeDephase (x rowAnchor colAnchor value : ℂ) : ℂ :=
  value*x*conj rowAnchor*conj colAnchor

/-- Gauge-word binding needs only the five anchor entries unit. All four
interior entries are arbitrary complex numbers, not merely the last entry. -/
theorem nativeRaw_eq_dephased (x y z u a b v c d : ℂ)
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hz : Complex.normSq z=1) (hu : Complex.normSq u=1)
    (hv : Complex.normSq v=1) :
    nativeRaw x y z u a b v c d =
      rawDet (nativeDephase x u y a) (nativeDephase x u z b)
        (nativeDephase x v y c) (nativeDephase x v z d) := by
  have hx0 := nonzero_of_normSq_one hx
  have hy0 := nonzero_of_normSq_one hy
  have hz0 := nonzero_of_normSq_one hz
  have hu0 := nonzero_of_normSq_one hu
  have hv0 := nonzero_of_normSq_one hv
  unfold nativeRaw rawDet nativeDephase
  simp only [map_add, map_sub, map_mul, map_pow, map_neg, map_one]
  simp only [starRingEnd_self_apply]
  simp only [conj_eq_inv_of_normSq_one hx, conj_eq_inv_of_normSq_one hy,
    conj_eq_inv_of_normSq_one hz, conj_eq_inv_of_normSq_one hu,
    conj_eq_inv_of_normSq_one hv]
  field_simp [hx0, hy0, hz0, hu0, hv0]
  <;> ring

theorem nativeDephase_unit (x rowAnchor colAnchor value : ℂ)
    (hx : Complex.normSq x=1) (hr : Complex.normSq rowAnchor=1)
    (hc : Complex.normSq colAnchor=1) (hv : Complex.normSq value=1) :
    Complex.normSq (nativeDephase x rowAnchor colAnchor value)=1 := by
  simp [nativeDephase,Complex.normSq_mul,hx,hr,hc,hv]

/-- Literal and fast native polynomials agree on the auxiliary model's
mixed-corner domain: eight unit entries and an arbitrary final entry. -/
theorem nativeRaw_im_eq_fast (x y z u a b v c d : ℂ)
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hz : Complex.normSq z=1) (hu : Complex.normSq u=1)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) :
    (nativeRaw x y z u a b v c d).im =
      fastSigned (nativeDephase x u y a) (nativeDephase x u z b)
        (nativeDephase x v y c) (nativeDephase x v z d) := by
  rw [nativeRaw_eq_dephased x y z u a b v c d hx hy hz hu hv]
  exact rawDet_im_eq_signed _ _ _ _
    (nativeDephase_unit x u y a hx hu hy ha)
    (nativeDephase_unit x u z b hx hu hz hb)
    (nativeDephase_unit x v y c hx hv hy hc)

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.nativeRaw_eq_dephased
#print axioms Centiradian20261006.NativeSigned20261006.nativeDephase_unit
#print axioms Centiradian20261006.NativeSigned20261006.nativeRaw_im_eq_fast
