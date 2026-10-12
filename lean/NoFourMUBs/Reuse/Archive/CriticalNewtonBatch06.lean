import NoFourMUBs.Reuse.Archive.CriticalNewtonCore

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalNewton20261003
noncomputable section

theorem actual_p4_m2 (x y : Fin 3 → ℂ)
    (hx : ∀ j, x j≠0) (hy : ∀ j, y j≠0) :
    moment x y (4) (-2) = newton_p4_m2 (dataOf x y) := by
  norm_num [moment,newton_p4_m2,dataOf,rowSum,rowProd,perm,invRow,ratio,
    zpow_neg, zpow_ofNat] <;>
    field_simp [hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

end
#print axioms actual_p4_m2
end CriticalNewton20261003
