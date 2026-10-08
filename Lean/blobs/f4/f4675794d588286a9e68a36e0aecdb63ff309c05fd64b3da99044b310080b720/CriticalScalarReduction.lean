import RadianSeedBounds

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalScalarReduction20261003
noncomputable section

def R (p j w : ℝ) : ℝ :=
  4*(27-3*p+j)^2*(9-p+j)-(w-(p-9)*(p-18)+(p-15)*j)^2
def L (p j w : ℝ) : ℝ := 2*j^2-w*p+15*w+p^3-12*p^2+27*p
def Q (p j : ℝ) : ℝ := 4*j^2+(p-9)^3*(p-5)
def multiplier (p j w : ℝ) : ℝ :=
  2*j^2+2*j*p^2-60*j*p+450*j-p^3+72*p^2+p*w-1107*p-15*w+4860

theorem difference (p j w : ℝ) : R p j w-R p (-j) w=4*j*L p j w := by
  unfold R L
  ring

/-- A polynomial identity replaces every division in the elimination. -/
theorem elimination_identity (p j w : ℝ) :
    (p-15)^2*R p j w+(j^2+36*p)*Q p j=L p j w*multiplier p j w := by
  unfold R L Q multiplier
  ring

theorem W_identity (p j w : ℝ) :
    2*L p j w-Q p j=(15-p)*(2*w+(p-9)*(p^2-10*p+27)) := by
  unfold L Q
  ring

/-- Exact complementary-critical reduction. Physical inequalities remain
explicit premises; it does not classify matrices or discard J=0. -/
theorem nonzero_reduction {p j w : ℝ} (hp : 0≤p) (hphys : p+|j|≤9)
    (hj : j≠0) (hplus : R p j w=0) (hminus : R p (-j) w=0) :
    5<p ∧ p<9 ∧ j^2=(9-p)^3*(p-5)/4 ∧
      w=-(p-9)*(p^2-10*p+27)/2 := by
  have hl : L p j w=0 := by
    have h := difference p j w
    rw [hplus,hminus] at h
    have hprod : (4*j)*L p j w=0 := by linarith
    exact (mul_eq_zero.mp hprod).resolve_left (mul_ne_zero (by norm_num) hj)
  have hpos : 0<j^2+36*p := by nlinarith [sq_pos_of_ne_zero hj]
  have hq : Q p j=0 := by
    have h := elimination_identity p j w
    rw [hplus,hl] at h
    have he : (j^2+36*p)*Q p j=0 := by linarith
    exact (mul_eq_zero.mp he).resolve_left (ne_of_gt hpos)
  have hp9 : p<9 := by linarith [abs_pos.mpr hj]
  have hs : j^2=(9-p)^3*(p-5)/4 := by unfold Q at hq; nlinarith
  have hp5 : 5<p := by
    by_contra h
    have hle : p-5≤0 := by linarith
    have hprod : (9-p)^3*(p-5)≤0 :=
      mul_nonpos_of_nonneg_of_nonpos (pow_nonneg (by linarith) 3) hle
    nlinarith [sq_pos_of_ne_zero hj]
  have hw : w=-(p-9)*(p^2-10*p+27)/2 := by
    have h := W_identity p j w
    rw [hl,hq] at h
    have he : (15-p)*(2*w+(p-9)*(p^2-10*p+27))=0 := by linarith
    have hb := (mul_eq_zero.mp he).resolve_left (by linarith : 15-p≠0)
    nlinarith
  exact ⟨hp5,hp9,hs,hw⟩

/-- The scalar algebraic equations are sufficient for the paired polynomial
zeros, without making a physical existence assertion. -/
theorem algebraic_converse {p j w : ℝ}
    (hj : j^2=(9-p)^3*(p-5)/4)
    (hw : w=-(p-9)*(p^2-10*p+27)/2) :
    R p j w=0 ∧ R p (-j) w=0 := by
  have hq : Q p j=0 := by unfold Q; nlinarith
  have hl : L p j w=0 := by
    have h := W_identity p j w
    have hi : 2*w+(p-9)*(p^2-10*p+27)=0 := by rw [hw]; ring
    rw [hq,hi,mul_zero,sub_zero] at h
    linarith
  by_cases he : p=15
  · subst p
    norm_num at hj
    nlinarith [sq_nonneg j]
  · have h := elimination_identity p j w
    rw [hq,hl] at h
    have hz : R p j w=0 := by
      have he0 : (p-15)^2≠0 := pow_ne_zero 2 (sub_ne_zero.mpr he)
      exact (mul_eq_zero.mp (by simpa using h)).resolve_left he0
    have hd := difference p j w
    rw [hz,hl] at hd
    exact ⟨hz,by linarith⟩

#print axioms difference
#print axioms elimination_identity
#print axioms W_identity
#print axioms nonzero_reduction
#print axioms algebraic_converse
end
end CriticalScalarReduction20261003
