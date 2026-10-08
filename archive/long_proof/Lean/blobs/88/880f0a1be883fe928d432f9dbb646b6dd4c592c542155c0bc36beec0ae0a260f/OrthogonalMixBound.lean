import RankOneMetric

/-! An elementary real bound replacing angle geometry for two orthogonal
projective balls. No arccos or numerical optimization is used. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

theorem circle_mix_step (a b c s t r : ℝ)
    (ha : (1:ℝ)/2≤a) (hb : (1:ℝ)/2≤b) (hc : (1:ℝ)/2≤c)
    (hs : 0≤s) (ht : 0≤t) (htr : t≤r) (hsr : s≤r) (hr : r≤(1:ℝ)/4)
    (he : a^2+t^2=c^2+r^2) : a*s+t*b≤c*s+r*b := by
  have hab : (1:ℝ)/2≤(a+c)*b := by
    have h := mul_le_mul (show (1:ℝ)≤a+c by linarith) hb
      (by norm_num : (0:ℝ)≤1/2) (by linarith : 0≤a+c)
    nlinarith
  have hrs : (r+t)*s≤(1:ℝ)/8 := by
    have h := mul_le_mul (show r+t≤(1:ℝ)/2 by linarith)
      (show s≤(1:ℝ)/4 by linarith) hs (by norm_num : (0:ℝ)≤1/2)
    nlinarith
  have hcoeff : 0≤(a+c)*b-(r+t)*s := by linarith
  have hprod := mul_nonneg (sub_nonneg.mpr htr) hcoeff
  have hid : r^2-t^2=a^2-c^2 := by linarith
  have halg : (a+c)*((r-t)*b-(a-c)*s)=
      (r-t)*((a+c)*b-(r+t)*s) := by
    calc
      _ = (r-t)*((a+c)*b-(r+t)*s)+((r^2-t^2)-(a^2-c^2))*s := by ring
      _ = _ := by rw [hid]; ring
  rw [←halg] at hprod
  have hlast : 0≤(r-t)*b-(a-c)*s :=
    (mul_nonneg_iff_of_pos_left (by linarith : 0<a+c)).mp hprod
  linarith

theorem orthogonal_circle_mix_bound (a b c s t : ℝ)
    (ha : 0≤a) (hb : 0≤b) (hc : 0≤c) (hs : 0≤s) (ht : 0≤t)
    (hsa : s≤(5:ℝ)/27) (hta : t≤(5:ℝ)/27)
    (ha2 : a^2+t^2=1) (hb2 : b^2+s^2=1)
    (hc2 : c^2+((5:ℝ)/27)^2=1) :
    a*s+t*b≤(10:ℝ)/27*c := by
  have hs2 := sq_le_sq₀ hs (by norm_num : (0:ℝ)≤5/27) |>.2 hsa
  have ht2 := sq_le_sq₀ ht (by norm_num : (0:ℝ)≤5/27) |>.2 hta
  have hal : (1:ℝ)/2≤a := by nlinarith
  have hbl : (1:ℝ)/2≤b := by nlinarith
  have hcl : (1:ℝ)/2≤c := by nlinarith
  have h1 := circle_mix_step a b c s t (5/27) hal hbl hcl hs ht hta hsa
    (by norm_num) (by linarith)
  have h2 := circle_mix_step b c c (5/27) s (5/27) hbl hcl hcl
    (by norm_num) hs hsa (by rfl) (by norm_num) (by linarith)
  linarith

end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.circle_mix_step
#print axioms Seed0024ClusterTube20261007.orthogonal_circle_mix_bound
