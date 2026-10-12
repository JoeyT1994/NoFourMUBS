import NoFourMUBs.Reuse.Archive.CriticalReconstructionData

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

/-- Exact record identity from the three reciprocal lambda pairs, actual row
products, and actual permanent/reciprocal-permanent. No scalar spectrum or
sheet formula is assumed here. The four matrix bindings are explicit. -/
theorem dataOf_reconstruction (x y : Fin 3 → ℂ) (z l0 l1 l2 b0 b1 b2 : ℂ)
    (h0 : l0*b0=1) (h1 : l1*b1=1) (h2 : l2*b2=1)
    (hu : rowProd x=l0*b1) (hv : rowProd y=l0*b2)
    (hp : perm x y=l0*z) (hP : perm (invRow x) (invRow y)=b0*z) :
    dataOf x y = reconstructionData
      (dataOf x y).s (dataOf x y).S (dataOf x y).t (dataOf x y).T
      (dataOf x y).r (dataOf x y).Q z l0 l1 l2 b0 b1 b2 := by
  have hn0 : l0≠0 := by intro hz; simp [hz] at h0
  have hn1 : l1≠0 := by intro hz; simp [hz] at h1
  have hn2 : l2≠0 := by intro hz; simp [hz] at h2
  have hb0 : b0=1/l0 := (eq_div_iff hn0).2 (by simpa [mul_comm] using h0)
  have hb1 : b1=1/l1 := (eq_div_iff hn1).2 (by simpa [mul_comm] using h1)
  have hb2 : b2=1/l2 := (eq_div_iff hn2).2 (by simpa [mul_comm] using h2)
  simp only [hb0,hb1,hb2] at hu hv hp hP ⊢
  dsimp only [dataOf,reconstructionData]
  simp only [hu,hv,hp,hP]
  congr 1 <;> field_simp [hn0,hn1,hn2] <;> ring

end
#print axioms dataOf_reconstruction
end CriticalNewtonGauge20261003
