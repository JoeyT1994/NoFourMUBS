import NoFourMUBs.Reuse.Archive.CriticalNewtonCore

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalNewton20261003
noncomputable section

theorem actual_m4_p2 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-4) (2) = newton_m4_p2 (dataOf x y) := by
  norm_num [moment,newton_m4_p2,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m3_p0 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-3) (0) = newton_m3_p0 (dataOf x y) := by
  norm_num [moment,newton_m3_p0,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m3_p1 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-3) (1) = newton_m3_p1 (dataOf x y) := by
  norm_num [moment,newton_m3_p1,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m3_p2 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-3) (2) = newton_m3_p2 (dataOf x y) := by
  norm_num [moment,newton_m3_p2,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m3_p3 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-3) (3) = newton_m3_p3 (dataOf x y) := by
  norm_num [moment,newton_m3_p3,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m2_m2 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-2) (-2) = newton_m2_m2 (dataOf x y) := by
  norm_num [moment,newton_m2_m2,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem actual_m2_m1 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (-2) (-1) = newton_m2_m1 (dataOf x y) := by
  norm_num [moment,newton_m2_m1,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

end
#print axioms actual_m4_p2
#print axioms actual_m3_p0
#print axioms actual_m3_p1
#print axioms actual_m3_p2
#print axioms actual_m3_p3
#print axioms actual_m2_m2
#print axioms actual_m2_m1
end CriticalNewton20261003
