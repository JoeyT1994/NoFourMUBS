import CriticalScalarReduction

set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace CriticalRationalParam20261003
open CriticalScalarReduction20261003
noncomputable section

def q (k : ℝ) : ℝ := 4/(1+k^2)
def p (k : ℝ) : ℝ := 9-q k
def j (k : ℝ) : ℝ := 8*k/(1+k^2)^2
def w (k : ℝ) : ℝ := q k*((q k)^2-8*q k+18)/2
def chi (p j w : ℝ) : ℝ := w-(p-9)*(p-18)+(p-15)*j

theorem denominator_pos (k : ℝ) : 0 < 1+k^2 := by positivity

/-- A rational parameter covers the full scalar curve with q>0.
This is a statement about invariants, not existence of a phase matrix. -/
theorem curve_param {a b : ℝ} (ha : 0<a)
    (hc : b^2=a^3*(4-a)/4) :
    a=q (2*b/a^2) ∧ b=j (2*b/a^2) := by
  let k := 2*b/a^2
  have ha0 : a≠0 := ne_of_gt ha
  have hd0 : 1+k^2≠0 := ne_of_gt (denominator_pos k)
  have hk : k*a^2=2*b := by dsimp [k]; field_simp
  have hproduct : a^3*((1+k^2)*a-4)=0 := by
    nlinarith only [congrArg (fun x : ℝ => x^2) hk, hc]
  have hr : (1+k^2)*a=4 := by
    have h := (mul_eq_zero.mp hproduct).resolve_left (pow_ne_zero 3 ha0)
    linarith
  have hq : a=4/(1+k^2) := (eq_div_iff hd0).mpr (by nlinarith [hr])
  have hj : b=8*k/(1+k^2)^2 := by
    rw [hq] at hk
    field_simp [hd0] at hk ⊢
    nlinarith only [hk]
  exact ⟨hq,hj⟩

theorem parameterization {a b c : ℝ} (ha : a<9)
    (hc : b^2=(9-a)^3*(a-5)/4)
    (hw : c=-(a-9)*(a^2-10*a+27)/2) :
    let k := 2*b/(9-a)^2
    a=p k ∧ b=j k ∧ c=w k := by
  dsimp only
  have hz : b^2=(9-a)^3*(4-(9-a))/4 := by nlinarith only [hc]
  obtain ⟨hq,hj⟩ := curve_param (by linarith : 0<9-a) hz
  refine ⟨?_,hj,?_⟩
  · unfold p; linarith only [hq]
  · unfold w; rw [←hq,hw]; ring

/-- Includes k=0 and k=±1; no permanent or discriminant divisor is used. -/
theorem param_paired_zeros (k : ℝ) :
    R (p k) (j k) (w k)=0 ∧ R (p k) (-j k) (w k)=0 := by
  apply algebraic_converse
  · dsimp [p,q,j]; field_simp; ring
  · dsimp [w,p]; ring

theorem eta_identities (k : ℝ) :
    q k+j k=4*(k+1)^2/(1+k^2)^2 ∧
    q k-j k=4*(k-1)^2/(1+k^2)^2 := by
  have hd := ne_of_gt (denominator_pos k)
  constructor <;> dsimp [q,j] <;> field_simp [hd] <;> ring

theorem g_identities (k : ℝ) :
    3*q k+j k=4*(3*k^2+2*k+3)/(1+k^2)^2 ∧
    3*q k-j k=4*(3*k^2-2*k+3)/(1+k^2)^2 := by
  have hd := ne_of_gt (denominator_pos k)
  constructor <;> dsimp [q,j] <;> field_simp [hd] <;> ring

theorem g_positive (k : ℝ) : 0<3*q k+j k ∧ 0<3*q k-j k := by
  obtain ⟨hp,hm⟩ := g_identities k
  rw [hp,hm]
  have hplus : 0<3*k^2+2*k+3 := by nlinarith [sq_nonneg (k+1),sq_nonneg k]
  have hminus : 0<3*k^2-2*k+3 := by nlinarith [sq_nonneg (k-1),sq_nonneg k]
  constructor <;> positivity

theorem chi_identities (k : ℝ) :
    chi (p k) (j k) (w k)=2*(3*q k+j k)*(-2*(1+k)/(1+k^2)) ∧
    chi (p k) (-j k) (w k)=2*(3*q k-j k)*(-2*(1-k)/(1+k^2)) := by
  have hd := ne_of_gt (denominator_pos k)
  constructor <;> dsimp [chi,p,w,q,j] <;> field_simp [hd] <;> ring

theorem z_identities (k : ℝ) :
    chi (p k) (j k) (w k)/(2*(3*q k+j k)) = -2*(1+k)/(1+k^2) ∧
    chi (p k) (-j k) (w k)/(2*(3*q k-j k)) = -2*(1-k)/(1+k^2) := by
  obtain ⟨gp,gm⟩ := g_positive k
  obtain ⟨cp,cm⟩ := chi_identities k
  constructor
  · exact (div_eq_iff (by positivity : 2*(3*q k+j k)≠0)).mpr (by rw [cp]; ring)
  · exact (div_eq_iff (by positivity : 2*(3*q k-j k)≠0)).mpr (by rw [cm]; ring)

theorem scalar_bounds (k : ℝ) : 0≤p k ∧ p k+|j k|≤9 := by
  have hd := denominator_pos k
  have hq : q k≤4 := by dsimp [q]; apply (div_le_iff₀ hd).mpr; nlinarith [sq_nonneg k]
  obtain ⟨ep,em⟩ := eta_identities k
  have hp : 0≤q k+j k := by rw [ep]; positivity
  have hm : 0≤q k-j k := by rw [em]; positivity
  have habs : |j k|≤q k := abs_le.mpr ⟨by linarith,by linarith⟩
  dsimp [p]; constructor <;> linarith

theorem nonzero_critical_parameterization {a b c : ℝ}
    (ha : 0≤a) (hphys : a+|b|≤9) (hb : b≠0)
    (hp : R a b c=0) (hm : R a (-b) c=0) :
    ∃ k : ℝ, k≠0 ∧ a=p k ∧ b=j k ∧ c=w k := by
  obtain ⟨_,ha9,hc,hw⟩ := nonzero_reduction ha hphys hb hp hm
  refine ⟨2*b/(9-a)^2,div_ne_zero (mul_ne_zero (by norm_num) hb)
    (pow_ne_zero 2 (by linarith)),?_⟩
  exact parameterization ha9 hc hw

#print axioms curve_param
#print axioms parameterization
#print axioms param_paired_zeros
#print axioms eta_identities
#print axioms g_identities
#print axioms g_positive
#print axioms chi_identities
#print axioms z_identities
#print axioms scalar_bounds
#print axioms nonzero_critical_parameterization
end
end CriticalRationalParam20261003
