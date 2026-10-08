import LiftedExpressionDag
import LiftedSideInequalities

/-! Literal translation of the frozen lifted manifest. All 56 complex nodes
and all 40 scalar rows are included. The Lean polynomial identity theorem
checks the concrete translation; this file makes no physical converse claim.
Manifest SHA256: d212b44fc4ee0817eaa22b40a42c72016671f990fef5ce64d9c2be38495e6507
Adapter SHA256: e434929efd0d76ddeed01859d327b54d163a9bbbe318c958733a4d46dd3ae75f
-/
namespace Mub6.Classification.LiftedDagBridge.Concrete
open Mub6.Classification.LiftedDagBridge
open Mub6.Classification.LiftedAtlasPolynomial
open Mub6.Classification.LiftedAdmissibility
open Mub6.Classification.SharedRationalIncidence
open Matrix MvPolynomial
noncomputable section
set_option maxRecDepth 4096
set_option maxHeartbeats 400000

def prefix00 : Dag (Fin 20) 0 := .nil
def expected00 : Fin 0 → Poly := Fin.elim0
theorem binding00 : prefix00.compile z = expected00 := rfl
-- node 0: z0
def prefix01 : Dag (Fin 20) 1 :=
  .snoc prefix00 (.coordinate ⟨0, by decide⟩)
def expected01 : Fin 1 → Poly :=
  Fin.snoc expected00 (z 0)
theorem binding01 : prefix01.compile z = expected01 := by
  rw [prefix01, Dag.compile, binding00]
  rfl
-- node 1: z1
def prefix02 : Dag (Fin 20) 2 :=
  .snoc prefix01 (.coordinate ⟨1, by decide⟩)
def expected02 : Fin 2 → Poly :=
  Fin.snoc expected01 (z 1)
theorem binding02 : prefix02.compile z = expected02 := by
  rw [prefix02, Dag.compile, binding01]
  rfl
-- node 2: z2
def prefix03 : Dag (Fin 20) 3 :=
  .snoc prefix02 (.coordinate ⟨2, by decide⟩)
def expected03 : Fin 3 → Poly :=
  Fin.snoc expected02 (z 2)
theorem binding03 : prefix03.compile z = expected03 := by
  rw [prefix03, Dag.compile, binding02]
  rfl
-- node 3: z3
def prefix04 : Dag (Fin 20) 4 :=
  .snoc prefix03 (.coordinate ⟨3, by decide⟩)
def expected04 : Fin 4 → Poly :=
  Fin.snoc expected03 (z 3)
theorem binding04 : prefix04.compile z = expected04 := by
  rw [prefix04, Dag.compile, binding03]
  rfl
-- node 4: z4
def prefix05 : Dag (Fin 20) 5 :=
  .snoc prefix04 (.coordinate ⟨4, by decide⟩)
def expected05 : Fin 5 → Poly :=
  Fin.snoc expected04 (z 4)
theorem binding05 : prefix05.compile z = expected05 := by
  rw [prefix05, Dag.compile, binding04]
  rfl
-- node 5: z5
def prefix06 : Dag (Fin 20) 6 :=
  .snoc prefix05 (.coordinate ⟨5, by decide⟩)
def expected06 : Fin 6 → Poly :=
  Fin.snoc expected05 (z 5)
theorem binding06 : prefix06.compile z = expected06 := by
  rw [prefix06, Dag.compile, binding05]
  rfl
-- node 6: z6
def prefix07 : Dag (Fin 20) 7 :=
  .snoc prefix06 (.coordinate ⟨6, by decide⟩)
def expected07 : Fin 7 → Poly :=
  Fin.snoc expected06 (z 6)
theorem binding07 : prefix07.compile z = expected07 := by
  rw [prefix07, Dag.compile, binding06]
  rfl
-- node 7: z7
def prefix08 : Dag (Fin 20) 8 :=
  .snoc prefix07 (.coordinate ⟨7, by decide⟩)
def expected08 : Fin 8 → Poly :=
  Fin.snoc expected07 (z 7)
theorem binding08 : prefix08.compile z = expected08 := by
  rw [prefix08, Dag.compile, binding07]
  rfl
-- node 8: z8
def prefix09 : Dag (Fin 20) 9 :=
  .snoc prefix08 (.coordinate ⟨8, by decide⟩)
def expected09 : Fin 9 → Poly :=
  Fin.snoc expected08 (z 8)
theorem binding09 : prefix09.compile z = expected09 := by
  rw [prefix09, Dag.compile, binding08]
  rfl
-- node 9: z9
def prefix10 : Dag (Fin 20) 10 :=
  .snoc prefix09 (.coordinate ⟨9, by decide⟩)
def expected10 : Fin 10 → Poly :=
  Fin.snoc expected09 (z 9)
theorem binding10 : prefix10.compile z = expected10 := by
  rw [prefix10, Dag.compile, binding09]
  rfl
-- node 10: z10
def prefix11 : Dag (Fin 20) 11 :=
  .snoc prefix10 (.coordinate ⟨10, by decide⟩)
def expected11 : Fin 11 → Poly :=
  Fin.snoc expected10 (z 10)
theorem binding11 : prefix11.compile z = expected11 := by
  rw [prefix11, Dag.compile, binding10]
  rfl
-- node 11: z11
def prefix12 : Dag (Fin 20) 12 :=
  .snoc prefix11 (.coordinate ⟨11, by decide⟩)
def expected12 : Fin 12 → Poly :=
  Fin.snoc expected11 (z 11)
theorem binding12 : prefix12.compile z = expected12 := by
  rw [prefix12, Dag.compile, binding11]
  rfl
-- node 12: z12
def prefix13 : Dag (Fin 20) 13 :=
  .snoc prefix12 (.coordinate ⟨12, by decide⟩)
def expected13 : Fin 13 → Poly :=
  Fin.snoc expected12 (z 12)
theorem binding13 : prefix13.compile z = expected13 := by
  rw [prefix13, Dag.compile, binding12]
  rfl
-- node 13: z13
def prefix14 : Dag (Fin 20) 14 :=
  .snoc prefix13 (.coordinate ⟨13, by decide⟩)
def expected14 : Fin 14 → Poly :=
  Fin.snoc expected13 (z 13)
theorem binding14 : prefix14.compile z = expected14 := by
  rw [prefix14, Dag.compile, binding13]
  rfl
-- node 14: z14
def prefix15 : Dag (Fin 20) 15 :=
  .snoc prefix14 (.coordinate ⟨14, by decide⟩)
def expected15 : Fin 15 → Poly :=
  Fin.snoc expected14 (z 14)
theorem binding15 : prefix15.compile z = expected15 := by
  rw [prefix15, Dag.compile, binding14]
  rfl
-- node 15: z15
def prefix16 : Dag (Fin 20) 16 :=
  .snoc prefix15 (.coordinate ⟨15, by decide⟩)
def expected16 : Fin 16 → Poly :=
  Fin.snoc expected15 (z 15)
theorem binding16 : prefix16.compile z = expected16 := by
  rw [prefix16, Dag.compile, binding15]
  rfl
-- node 16: z16
def prefix17 : Dag (Fin 20) 17 :=
  .snoc prefix16 (.coordinate ⟨16, by decide⟩)
def expected17 : Fin 17 → Poly :=
  Fin.snoc expected16 (z 16)
theorem binding17 : prefix17.compile z = expected17 := by
  rw [prefix17, Dag.compile, binding16]
  rfl
-- node 17: z17
def prefix18 : Dag (Fin 20) 18 :=
  .snoc prefix17 (.coordinate ⟨17, by decide⟩)
def expected18 : Fin 18 → Poly :=
  Fin.snoc expected17 (z 17)
theorem binding18 : prefix18.compile z = expected18 := by
  rw [prefix18, Dag.compile, binding17]
  rfl
-- node 18: z18
def prefix19 : Dag (Fin 20) 19 :=
  .snoc prefix18 (.coordinate ⟨18, by decide⟩)
def expected19 : Fin 19 → Poly :=
  Fin.snoc expected18 (z 18)
theorem binding19 : prefix19.compile z = expected19 := by
  rw [prefix19, Dag.compile, binding18]
  rfl
-- node 19: z19
def prefix20 : Dag (Fin 20) 20 :=
  .snoc prefix19 (.coordinate ⟨19, by decide⟩)
def expected20 : Fin 20 → Poly :=
  Fin.snoc expected19 (z 19)
theorem binding20 : prefix20.compile z = expected20 := by
  rw [prefix20, Dag.compile, binding19]
  rfl
-- node 20: horizontal.s
def prefix21 : Dag (Fin 20) 21 :=
  .snoc prefix20 (.neg (.add (.add (.rat 1) (.ref ⟨0, by decide⟩)) (.ref ⟨1, by decide⟩)))
def expected21 : Fin 21 → Poly :=
  Fin.snoc expected20 (horizontalData.s)
theorem binding21 : prefix21.compile z = expected21 := by
  rw [prefix21, Dag.compile, binding20]
  rfl
-- node 21: horizontal.t
def prefix22 : Dag (Fin 20) 22 :=
  .snoc prefix21 (.neg (.add (.add (.rat 1) (.ref ⟨2, by decide⟩)) (.ref ⟨3, by decide⟩)))
def expected22 : Fin 22 → Poly :=
  Fin.snoc expected21 (horizontalData.t)
theorem binding22 : prefix22.compile z = expected22 := by
  rw [prefix22, Dag.compile, binding21]
  rfl
-- node 22: horizontal.r
def prefix23 : Dag (Fin 20) 23 :=
  .snoc prefix22 (.neg (.add (.add (.rat 1) (.mul (.ref ⟨2, by decide⟩) (.conj (.ref ⟨0, by decide⟩)))) (.mul (.ref ⟨3, by decide⟩) (.conj (.ref ⟨1, by decide⟩)))))
def expected23 : Fin 23 → Poly :=
  Fin.snoc expected22 (horizontalData.r)
theorem binding23 : prefix23.compile z = expected23 := by
  rw [prefix23, Dag.compile, binding22]
  rfl
-- node 23: horizontal.alpha
def prefix24 : Dag (Fin 20) 24 :=
  .snoc prefix23 (.sub (.pow (.ref ⟨20, by decide⟩) 2) (.mul (.mul (.rat 3) (.ref ⟨4, by decide⟩)) (.conj (.ref ⟨20, by decide⟩))))
def expected24 : Fin 24 → Poly :=
  Fin.snoc expected23 (alphaPoly horizontalData.s horizontalData.u)
theorem binding24 : prefix24.compile z = expected24 := by
  rw [prefix24, Dag.compile, binding23]
  rfl
-- node 24: horizontal.beta
def prefix25 : Dag (Fin 20) 25 :=
  .snoc prefix24 (.sub (.pow (.ref ⟨21, by decide⟩) 2) (.mul (.mul (.rat 3) (.ref ⟨5, by decide⟩)) (.conj (.ref ⟨21, by decide⟩))))
def expected25 : Fin 25 → Poly :=
  Fin.snoc expected24 (alphaPoly horizontalData.t horizontalData.v)
theorem binding25 : prefix25.compile z = expected25 := by
  rw [prefix25, Dag.compile, binding24]
  rfl
-- node 25: horizontal.gamma
def prefix26 : Dag (Fin 20) 26 :=
  .snoc prefix25 (.sub (.mul (.mul (.rat 2) (.ref ⟨20, by decide⟩)) (.ref ⟨21, by decide⟩)) (.mul (.rat 3) (.ref ⟨6, by decide⟩)))
def expected26 : Fin 26 → Poly :=
  Fin.snoc expected25 (gammaPoly horizontalData.s horizontalData.t horizontalData.W)
theorem binding26 : prefix26.compile z = expected26 := by
  rw [prefix26, Dag.compile, binding25]
  rfl
-- node 26: horizontal.pivot
def prefix27 : Dag (Fin 20) 27 :=
  .snoc prefix26 (.mul (.rat (1/2)) (.add (.ref ⟨25, by decide⟩) (.ref ⟨7, by decide⟩)))
def expected27 : Fin 27 → Poly :=
  Fin.snoc expected26 (pivotPoly horizontalData)
theorem binding27 : prefix27.compile z = expected27 := by
  rw [prefix27, Dag.compile, binding26]
  rfl
-- node 27: horizontal.cube_numerator
def prefix28 : Dag (Fin 20) 28 :=
  .snoc prefix27 (.sub (.add (.mul (.mul (.ref ⟨4, by decide⟩) (.pow (.ref ⟨26, by decide⟩) 2)) (.sub (.ref ⟨26, by decide⟩) (.mul (.ref ⟨23, by decide⟩) (.ref ⟨22, by decide⟩)))) (.mul (.mul (.ref ⟨5, by decide⟩) (.pow (.ref ⟨23, by decide⟩) 2)) (.sub (.mul (.ref ⟨26, by decide⟩) (.conj (.ref ⟨22, by decide⟩))) (.ref ⟨23, by decide⟩)))) (.mul (.rat (1/27)) (.pow (.sub (.mul (.ref ⟨26, by decide⟩) (.ref ⟨20, by decide⟩)) (.mul (.ref ⟨23, by decide⟩) (.ref ⟨21, by decide⟩))) 3)))
def expected28 : Fin 28 → Poly :=
  Fin.snoc expected27 (cubeNumeratorPoly horizontalData)
theorem binding28 : prefix28.compile z = expected28 := by
  rw [prefix28, Dag.compile, binding27]
  rfl
-- node 28: horizontal.delta_square
def prefix29 : Dag (Fin 20) 29 :=
  .snoc prefix28 (.add (.sub (.pow (.ref ⟨7, by decide⟩) 2) (.pow (.ref ⟨25, by decide⟩) 2)) (.mul (.mul (.rat 4) (.ref ⟨23, by decide⟩)) (.ref ⟨24, by decide⟩)))
def expected29 : Fin 29 → Poly :=
  Fin.snoc expected28 (sideEquations horizontalData 0)
theorem binding29 : prefix29.compile z = expected29 := by
  rw [prefix29, Dag.compile, binding28]
  rfl
-- node 29: horizontal.cleared_cube
def prefix30 : Dag (Fin 20) 30 :=
  .snoc prefix29 (.sub (.mul (.pow (.ref ⟨8, by decide⟩) 3) (.pow (.ref ⟨7, by decide⟩) 3)) (.ref ⟨27, by decide⟩))
def expected30 : Fin 30 → Poly :=
  Fin.snoc expected29 (sideEquations horizontalData 1)
theorem binding30 : prefix30.compile z = expected30 := by
  rw [prefix30, Dag.compile, binding29]
  rfl
-- node 30: horizontal.tau_reciprocal
def prefix31 : Dag (Fin 20) 31 :=
  .snoc prefix30 (.sub (.mul (.ref ⟨8, by decide⟩) (.ref ⟨9, by decide⟩)) (.rat 1))
def expected31 : Fin 31 → Poly :=
  Fin.snoc expected30 (sideEquations horizontalData 2)
theorem binding31 : prefix31.compile z = expected31 := by
  rw [prefix31, Dag.compile, binding30]
  rfl
-- node 31: horizontal.pivot_reciprocal
def prefix32 : Dag (Fin 20) 32 :=
  .snoc prefix31 (.sub (.mul (.ref ⟨26, by decide⟩) (.ref ⟨10, by decide⟩)) (.rat 1))
def expected32 : Fin 32 → Poly :=
  Fin.snoc expected31 (sideEquations horizontalData 3)
theorem binding32 : prefix32.compile z = expected32 := by
  rw [prefix32, Dag.compile, binding31]
  rfl
-- node 32: vertical.s
def prefix33 : Dag (Fin 20) 33 :=
  .snoc prefix32 (.neg (.add (.add (.rat 1) (.ref ⟨0, by decide⟩)) (.ref ⟨2, by decide⟩)))
def expected33 : Fin 33 → Poly :=
  Fin.snoc expected32 (verticalData.s)
theorem binding33 : prefix33.compile z = expected33 := by
  rw [prefix33, Dag.compile, binding32]
  rfl
-- node 33: vertical.t
def prefix34 : Dag (Fin 20) 34 :=
  .snoc prefix33 (.neg (.add (.add (.rat 1) (.ref ⟨1, by decide⟩)) (.ref ⟨3, by decide⟩)))
def expected34 : Fin 34 → Poly :=
  Fin.snoc expected33 (verticalData.t)
theorem binding34 : prefix34.compile z = expected34 := by
  rw [prefix34, Dag.compile, binding33]
  rfl
-- node 34: vertical.r
def prefix35 : Dag (Fin 20) 35 :=
  .snoc prefix34 (.neg (.add (.add (.rat 1) (.mul (.ref ⟨1, by decide⟩) (.conj (.ref ⟨0, by decide⟩)))) (.mul (.ref ⟨3, by decide⟩) (.conj (.ref ⟨2, by decide⟩)))))
def expected35 : Fin 35 → Poly :=
  Fin.snoc expected34 (verticalData.r)
theorem binding35 : prefix35.compile z = expected35 := by
  rw [prefix35, Dag.compile, binding34]
  rfl
-- node 35: vertical.alpha
def prefix36 : Dag (Fin 20) 36 :=
  .snoc prefix35 (.sub (.pow (.ref ⟨32, by decide⟩) 2) (.mul (.mul (.rat 3) (.ref ⟨11, by decide⟩)) (.conj (.ref ⟨32, by decide⟩))))
def expected36 : Fin 36 → Poly :=
  Fin.snoc expected35 (alphaPoly verticalData.s verticalData.u)
theorem binding36 : prefix36.compile z = expected36 := by
  rw [prefix36, Dag.compile, binding35]
  rfl
-- node 36: vertical.beta
def prefix37 : Dag (Fin 20) 37 :=
  .snoc prefix36 (.sub (.pow (.ref ⟨33, by decide⟩) 2) (.mul (.mul (.rat 3) (.ref ⟨12, by decide⟩)) (.conj (.ref ⟨33, by decide⟩))))
def expected37 : Fin 37 → Poly :=
  Fin.snoc expected36 (alphaPoly verticalData.t verticalData.v)
theorem binding37 : prefix37.compile z = expected37 := by
  rw [prefix37, Dag.compile, binding36]
  rfl
-- node 37: vertical.gamma
def prefix38 : Dag (Fin 20) 38 :=
  .snoc prefix37 (.sub (.mul (.mul (.rat 2) (.ref ⟨32, by decide⟩)) (.ref ⟨33, by decide⟩)) (.mul (.rat 3) (.ref ⟨13, by decide⟩)))
def expected38 : Fin 38 → Poly :=
  Fin.snoc expected37 (gammaPoly verticalData.s verticalData.t verticalData.W)
theorem binding38 : prefix38.compile z = expected38 := by
  rw [prefix38, Dag.compile, binding37]
  rfl
-- node 38: vertical.pivot
def prefix39 : Dag (Fin 20) 39 :=
  .snoc prefix38 (.mul (.rat (1/2)) (.add (.ref ⟨37, by decide⟩) (.ref ⟨14, by decide⟩)))
def expected39 : Fin 39 → Poly :=
  Fin.snoc expected38 (pivotPoly verticalData)
theorem binding39 : prefix39.compile z = expected39 := by
  rw [prefix39, Dag.compile, binding38]
  rfl
-- node 39: vertical.cube_numerator
def prefix40 : Dag (Fin 20) 40 :=
  .snoc prefix39 (.sub (.add (.mul (.mul (.ref ⟨11, by decide⟩) (.pow (.ref ⟨38, by decide⟩) 2)) (.sub (.ref ⟨38, by decide⟩) (.mul (.ref ⟨35, by decide⟩) (.ref ⟨34, by decide⟩)))) (.mul (.mul (.ref ⟨12, by decide⟩) (.pow (.ref ⟨35, by decide⟩) 2)) (.sub (.mul (.ref ⟨38, by decide⟩) (.conj (.ref ⟨34, by decide⟩))) (.ref ⟨35, by decide⟩)))) (.mul (.rat (1/27)) (.pow (.sub (.mul (.ref ⟨38, by decide⟩) (.ref ⟨32, by decide⟩)) (.mul (.ref ⟨35, by decide⟩) (.ref ⟨33, by decide⟩))) 3)))
def expected40 : Fin 40 → Poly :=
  Fin.snoc expected39 (cubeNumeratorPoly verticalData)
theorem binding40 : prefix40.compile z = expected40 := by
  rw [prefix40, Dag.compile, binding39]
  rfl
-- node 40: vertical.delta_square
def prefix41 : Dag (Fin 20) 41 :=
  .snoc prefix40 (.add (.sub (.pow (.ref ⟨14, by decide⟩) 2) (.pow (.ref ⟨37, by decide⟩) 2)) (.mul (.mul (.rat 4) (.ref ⟨35, by decide⟩)) (.ref ⟨36, by decide⟩)))
def expected41 : Fin 41 → Poly :=
  Fin.snoc expected40 (sideEquations verticalData 0)
theorem binding41 : prefix41.compile z = expected41 := by
  rw [prefix41, Dag.compile, binding40]
  rfl
-- node 41: vertical.cleared_cube
def prefix42 : Dag (Fin 20) 42 :=
  .snoc prefix41 (.sub (.mul (.pow (.ref ⟨15, by decide⟩) 3) (.pow (.ref ⟨14, by decide⟩) 3)) (.ref ⟨39, by decide⟩))
def expected42 : Fin 42 → Poly :=
  Fin.snoc expected41 (sideEquations verticalData 1)
theorem binding42 : prefix42.compile z = expected42 := by
  rw [prefix42, Dag.compile, binding41]
  rfl
-- node 42: vertical.tau_reciprocal
def prefix43 : Dag (Fin 20) 43 :=
  .snoc prefix42 (.sub (.mul (.ref ⟨15, by decide⟩) (.ref ⟨16, by decide⟩)) (.rat 1))
def expected43 : Fin 43 → Poly :=
  Fin.snoc expected42 (sideEquations verticalData 2)
theorem binding43 : prefix43.compile z = expected43 := by
  rw [prefix43, Dag.compile, binding42]
  rfl
-- node 43: vertical.pivot_reciprocal
def prefix44 : Dag (Fin 20) 44 :=
  .snoc prefix43 (.sub (.mul (.ref ⟨38, by decide⟩) (.ref ⟨17, by decide⟩)) (.rat 1))
def expected44 : Fin 44 → Poly :=
  Fin.snoc expected43 (sideEquations verticalData 3)
theorem binding44 : prefix44.compile z = expected44 := by
  rw [prefix44, Dag.compile, binding43]
  rfl
-- node 44: gram.0.0
def prefix45 : Dag (Fin 20) 45 :=
  .snoc prefix44 (.sub (.rat 6) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.rat 1) (.conj (.rat 1)))) (.mul (.rat 1) (.conj (.rat 1)))))
def expected45 : Fin 45 → Poly :=
  Fin.snoc expected44 (gramPoly seedPoly 0 0)
theorem binding45 : prefix45.compile z = expected45 := by
  rw [prefix45, Dag.compile, binding44]
  rfl
-- node 45: gram.0.1
def prefix46 : Dag (Fin 20) 46 :=
  .snoc prefix45 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.rat 1) (.conj (.ref ⟨0, by decide⟩)))) (.mul (.rat 1) (.conj (.ref ⟨1, by decide⟩)))))
def expected46 : Fin 46 → Poly :=
  Fin.snoc expected45 (gramPoly seedPoly 0 1)
theorem binding46 : prefix46.compile z = expected46 := by
  rw [prefix46, Dag.compile, binding45]
  rfl
-- node 46: gram.0.2
def prefix47 : Dag (Fin 20) 47 :=
  .snoc prefix46 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.rat 1) (.conj (.ref ⟨2, by decide⟩)))) (.mul (.rat 1) (.conj (.ref ⟨3, by decide⟩)))))
def expected47 : Fin 47 → Poly :=
  Fin.snoc expected46 (gramPoly seedPoly 0 2)
theorem binding47 : prefix47.compile z = expected47 := by
  rw [prefix47, Dag.compile, binding46]
  rfl
-- node 47: gram.1.0
def prefix48 : Dag (Fin 20) 48 :=
  .snoc prefix47 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨0, by decide⟩) (.conj (.rat 1)))) (.mul (.ref ⟨1, by decide⟩) (.conj (.rat 1)))))
def expected48 : Fin 48 → Poly :=
  Fin.snoc expected47 (gramPoly seedPoly 1 0)
theorem binding48 : prefix48.compile z = expected48 := by
  rw [prefix48, Dag.compile, binding47]
  rfl
-- node 48: gram.1.1
def prefix49 : Dag (Fin 20) 49 :=
  .snoc prefix48 (.sub (.rat 6) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨0, by decide⟩) (.conj (.ref ⟨0, by decide⟩)))) (.mul (.ref ⟨1, by decide⟩) (.conj (.ref ⟨1, by decide⟩)))))
def expected49 : Fin 49 → Poly :=
  Fin.snoc expected48 (gramPoly seedPoly 1 1)
theorem binding49 : prefix49.compile z = expected49 := by
  rw [prefix49, Dag.compile, binding48]
  rfl
-- node 49: gram.1.2
def prefix50 : Dag (Fin 20) 50 :=
  .snoc prefix49 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨0, by decide⟩) (.conj (.ref ⟨2, by decide⟩)))) (.mul (.ref ⟨1, by decide⟩) (.conj (.ref ⟨3, by decide⟩)))))
def expected50 : Fin 50 → Poly :=
  Fin.snoc expected49 (gramPoly seedPoly 1 2)
theorem binding50 : prefix50.compile z = expected50 := by
  rw [prefix50, Dag.compile, binding49]
  rfl
-- node 50: gram.2.0
def prefix51 : Dag (Fin 20) 51 :=
  .snoc prefix50 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨2, by decide⟩) (.conj (.rat 1)))) (.mul (.ref ⟨3, by decide⟩) (.conj (.rat 1)))))
def expected51 : Fin 51 → Poly :=
  Fin.snoc expected50 (gramPoly seedPoly 2 0)
theorem binding51 : prefix51.compile z = expected51 := by
  rw [prefix51, Dag.compile, binding50]
  rfl
-- node 51: gram.2.1
def prefix52 : Dag (Fin 20) 52 :=
  .snoc prefix51 (.sub (.rat 0) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨2, by decide⟩) (.conj (.ref ⟨0, by decide⟩)))) (.mul (.ref ⟨3, by decide⟩) (.conj (.ref ⟨1, by decide⟩)))))
def expected52 : Fin 52 → Poly :=
  Fin.snoc expected51 (gramPoly seedPoly 2 1)
theorem binding52 : prefix52.compile z = expected52 := by
  rw [prefix52, Dag.compile, binding51]
  rfl
-- node 52: gram.2.2
def prefix53 : Dag (Fin 20) 53 :=
  .snoc prefix52 (.sub (.rat 6) (.add (.add (.mul (.rat 1) (.conj (.rat 1))) (.mul (.ref ⟨2, by decide⟩) (.conj (.ref ⟨2, by decide⟩)))) (.mul (.ref ⟨3, by decide⟩) (.conj (.ref ⟨3, by decide⟩)))))
def expected53 : Fin 53 → Poly :=
  Fin.snoc expected52 (gramPoly seedPoly 2 2)
theorem binding53 : prefix53.compile z = expected53 := by
  rw [prefix53, Dag.compile, binding52]
  rfl
-- node 53: gram.determinant
def prefix54 : Dag (Fin 20) 54 :=
  .snoc prefix53 (.sub (.sub (.sub (.add (.add (.mul (.mul (.ref ⟨44, by decide⟩) (.ref ⟨48, by decide⟩)) (.ref ⟨52, by decide⟩)) (.mul (.mul (.ref ⟨45, by decide⟩) (.ref ⟨49, by decide⟩)) (.ref ⟨50, by decide⟩))) (.mul (.mul (.ref ⟨46, by decide⟩) (.ref ⟨47, by decide⟩)) (.ref ⟨51, by decide⟩))) (.mul (.mul (.ref ⟨46, by decide⟩) (.ref ⟨48, by decide⟩)) (.ref ⟨50, by decide⟩))) (.mul (.mul (.ref ⟨45, by decide⟩) (.ref ⟨47, by decide⟩)) (.ref ⟨52, by decide⟩))) (.mul (.mul (.ref ⟨44, by decide⟩) (.ref ⟨49, by decide⟩)) (.ref ⟨51, by decide⟩)))
def expected54 : Fin 54 → Poly :=
  Fin.snoc expected53 (determinantPoly (gramPoly seedPoly))
theorem binding54 : prefix54.compile z = expected54 := by
  rw [prefix54, Dag.compile, binding53]
  rfl
-- node 54: gram_reciprocal
def prefix55 : Dag (Fin 20) 55 :=
  .snoc prefix54 (.sub (.mul (.ref ⟨53, by decide⟩) (.ref ⟨19, by decide⟩)) (.rat 1))
def expected55 : Fin 55 → Poly :=
  Fin.snoc expected54 (globalEquations 0)
theorem binding55 : prefix55.compile z = expected55 := by
  rw [prefix55, Dag.compile, binding54]
  rfl
-- node 55: omega_quadratic
def prefix56 : Dag (Fin 20) 56 :=
  .snoc prefix55 (.add (.add (.pow (.ref ⟨18, by decide⟩) 2) (.ref ⟨18, by decide⟩)) (.rat 1))
def expected56 : Fin 56 → Poly :=
  Fin.snoc expected55 (globalEquations 1)
theorem binding56 : prefix56.compile z = expected56 := by
  rw [prefix56, Dag.compile, binding55]
  rfl

def dag : Dag (Fin 20) 56 := prefix56

def expectedNodes : Fin 56 → Poly :=
  ![z 0,
    z 1,
    z 2,
    z 3,
    z 4,
    z 5,
    z 6,
    z 7,
    z 8,
    z 9,
    z 10,
    z 11,
    z 12,
    z 13,
    z 14,
    z 15,
    z 16,
    z 17,
    z 18,
    z 19,
    horizontalData.s,
    horizontalData.t,
    horizontalData.r,
    alphaPoly horizontalData.s horizontalData.u,
    alphaPoly horizontalData.t horizontalData.v,
    gammaPoly horizontalData.s horizontalData.t horizontalData.W,
    pivotPoly horizontalData,
    cubeNumeratorPoly horizontalData,
    sideEquations horizontalData 0,
    sideEquations horizontalData 1,
    sideEquations horizontalData 2,
    sideEquations horizontalData 3,
    verticalData.s,
    verticalData.t,
    verticalData.r,
    alphaPoly verticalData.s verticalData.u,
    alphaPoly verticalData.t verticalData.v,
    gammaPoly verticalData.s verticalData.t verticalData.W,
    pivotPoly verticalData,
    cubeNumeratorPoly verticalData,
    sideEquations verticalData 0,
    sideEquations verticalData 1,
    sideEquations verticalData 2,
    sideEquations verticalData 3,
    gramPoly seedPoly 0 0,
    gramPoly seedPoly 0 1,
    gramPoly seedPoly 0 2,
    gramPoly seedPoly 1 0,
    gramPoly seedPoly 1 1,
    gramPoly seedPoly 1 2,
    gramPoly seedPoly 2 0,
    gramPoly seedPoly 2 1,
    gramPoly seedPoly 2 2,
    determinantPoly (gramPoly seedPoly),
    globalEquations 0,
    globalEquations 1]

/-- Every manifest node compiles to the corresponding actual lifted polynomial. -/
theorem compiled_nodes : dag.compile z = expectedNodes := by
  rw [dag, binding56]
  funext i
  fin_cases i <;> rfl

-- manifest row 0: phase.z0 = 0
def row00 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨0, by decide⟩)) (.rat 1))
-- manifest row 1: phase.z1 = 0
def row01 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨1, by decide⟩)) (.rat 1))
-- manifest row 2: phase.z2 = 0
def row02 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨2, by decide⟩)) (.rat 1))
-- manifest row 3: phase.z3 = 0
def row03 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨3, by decide⟩)) (.rat 1))
-- manifest row 4: phase.z4 = 0
def row04 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨4, by decide⟩)) (.rat 1))
-- manifest row 5: phase.z5 = 0
def row05 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨5, by decide⟩)) (.rat 1))
-- manifest row 6: phase.z11 = 0
def row06 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨11, by decide⟩)) (.rat 1))
-- manifest row 7: phase.z12 = 0
def row07 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨12, by decide⟩)) (.rat 1))
-- manifest row 8: horizontal.delta_square.re = 0
def row08 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨28, by decide⟩))
-- manifest row 9: horizontal.delta_square.im = 0
def row09 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨28, by decide⟩))
-- manifest row 10: horizontal.cleared_cube.re = 0
def row10 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨29, by decide⟩))
-- manifest row 11: horizontal.cleared_cube.im = 0
def row11 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨29, by decide⟩))
-- manifest row 12: horizontal.tau_reciprocal.re = 0
def row12 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨30, by decide⟩))
-- manifest row 13: horizontal.tau_reciprocal.im = 0
def row13 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨30, by decide⟩))
-- manifest row 14: horizontal.pivot_reciprocal.re = 0
def row14 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨31, by decide⟩))
-- manifest row 15: horizontal.pivot_reciprocal.im = 0
def row15 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨31, by decide⟩))
-- manifest row 16: vertical.delta_square.re = 0
def row16 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨40, by decide⟩))
-- manifest row 17: vertical.delta_square.im = 0
def row17 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨40, by decide⟩))
-- manifest row 18: vertical.cleared_cube.re = 0
def row18 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨41, by decide⟩))
-- manifest row 19: vertical.cleared_cube.im = 0
def row19 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨41, by decide⟩))
-- manifest row 20: vertical.tau_reciprocal.re = 0
def row20 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨42, by decide⟩))
-- manifest row 21: vertical.tau_reciprocal.im = 0
def row21 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨42, by decide⟩))
-- manifest row 22: vertical.pivot_reciprocal.re = 0
def row22 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨43, by decide⟩))
-- manifest row 23: vertical.pivot_reciprocal.im = 0
def row23 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨43, by decide⟩))
-- manifest row 24: gram_reciprocal.re = 0
def row24 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨54, by decide⟩))
-- manifest row 25: gram_reciprocal.im = 0
def row25 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨54, by decide⟩))
-- manifest row 26: omega_quadratic.re = 0
def row26 : RExpr (Fin 20) (Fin 56) :=
  (.re (.ref ⟨55, by decide⟩))
-- manifest row 27: omega_quadratic.im = 0
def row27 : RExpr (Fin 20) (Fin 56) :=
  (.im (.ref ⟨55, by decide⟩))
-- manifest row 28: horizontal.pivot_lower >= 0
def row28 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨26, by decide⟩)) (.rat (81/10)))
-- manifest row 29: horizontal.cube_lower >= 0
def row29 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.pow (.ref ⟨8, by decide⟩) 3)) (.rat (1/1000)))
-- manifest row 30: horizontal.tau_lower >= 0
def row30 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨8, by decide⟩)) (.rat (1/10)))
-- manifest row 31: horizontal.tau_upper >= 0
def row31 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.rat 1) (.normSq (.ref ⟨8, by decide⟩)))
-- manifest row 32: horizontal.inverse_tau_upper >= 0
def row32 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.rat 10) (.normSq (.ref ⟨9, by decide⟩)))
-- manifest row 33: vertical.pivot_lower >= 0
def row33 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨38, by decide⟩)) (.rat (81/10)))
-- manifest row 34: vertical.cube_lower >= 0
def row34 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.pow (.ref ⟨15, by decide⟩) 3)) (.rat (1/1000)))
-- manifest row 35: vertical.tau_lower >= 0
def row35 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.normSq (.ref ⟨15, by decide⟩)) (.rat (1/10)))
-- manifest row 36: vertical.tau_upper >= 0
def row36 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.rat 1) (.normSq (.ref ⟨15, by decide⟩)))
-- manifest row 37: vertical.inverse_tau_upper >= 0
def row37 : RExpr (Fin 20) (Fin 56) :=
  (.sub (.rat 10) (.normSq (.ref ⟨16, by decide⟩)))
-- manifest row 38: horizontal.delta_nonzero > 0
def row38 : RExpr (Fin 20) (Fin 56) :=
  (.normSq (.ref ⟨7, by decide⟩))
-- manifest row 39: vertical.delta_nonzero > 0
def row39 : RExpr (Fin 20) (Fin 56) :=
  (.normSq (.ref ⟨14, by decide⟩))

def equationExpr : NecessaryIndex → RExpr (Fin 20) (Fin 56)
  | .inl i => ![row00,
    row01,
    row02,
    row03,
    row04,
    row05,
    row06,
    row07] i
  | .inr (.inl ((false,i),false)) => ![row08,
    row10,
    row12,
    row14] i
  | .inr (.inl ((false,i),true)) => ![row09,
    row11,
    row13,
    row15] i
  | .inr (.inl ((true,i),false)) => ![row16,
    row18,
    row20,
    row22] i
  | .inr (.inl ((true,i),true)) => ![row17,
    row19,
    row21,
    row23] i
  | .inr (.inr (i,false)) => ![row24,
    row26] i
  | .inr (.inr (i,true)) => ![row25,
    row27] i

def weakExpr : Bool → Fin 5 → RExpr (Fin 20) (Fin 56)
  | false => ![row28,
    row29,
    row30,
    row31,
    row32]
  | true => ![row33,
    row34,
    row35,
    row36,
    row37]

def strictExpr : Bool → RExpr (Fin 20) (Fin 56)
  | false => row38
  | true => row39

def sideData (b : Bool) : SidePolys := if b then verticalData else horizontalData

/-- Exact equality of all 28 scalar polynomial expressions. -/
theorem compiled_equations (i : NecessaryIndex) :
    (equationExpr i).compile z (dag.compile z) = necessaryEquation i := by
  rw [compiled_nodes]
  rcases i with i | (⟨⟨b,i⟩,c⟩ | ⟨i,c⟩)
  · fin_cases i <;> rfl
  · cases b <;> cases c <;> fin_cases i <;> rfl
  · cases c <;> fin_cases i <;> rfl

/-- Exact equality of all ten weak guards. -/
theorem compiled_weak (b : Bool) (i : Fin 5) :
    (weakExpr b i).compile z (dag.compile z) = sideBoundPolynomial (sideData b) i := by
  rw [compiled_nodes]
  cases b <;> fin_cases i <;> rfl

/-- Exact equality of both strict delta guards. -/
theorem compiled_strict (b : Bool) :
    (strictExpr b).compile z (dag.compile z) = normSqPoly (sideData b).delta := by
  rw [compiled_nodes]
  cases b <;> rfl

def coordinates (p : Variable → ℝ) (i : Fin 20) : ℂ := CPoly.value p (z i)
def scalarValue (p : Variable → ℝ) (e : RExpr (Fin 20) (Fin 56)) : ℝ :=
  e.eval (coordinates p) (dag.eval (coordinates p))

theorem equation_value (p : Variable → ℝ) (i : NecessaryIndex) :
    scalarValue p (equationExpr i) = evalReal p (necessaryEquation i) := by
  rw [← compiled_equations]
  exact (Dag.real_sound p z dag (equationExpr i)).symm

theorem weak_value (p : Variable → ℝ) (b : Bool) (i : Fin 5) :
    scalarValue p (weakExpr b i) = evalReal p (sideBoundPolynomial (sideData b) i) := by
  rw [← compiled_weak]
  exact (Dag.real_sound p z dag (weakExpr b i)).symm

theorem strict_value (p : Variable → ℝ) (b : Bool) :
    scalarValue p (strictExpr b) = evalReal p (normSqPoly (sideData b).delta) := by
  rw [← compiled_strict]
  exact (Dag.real_sound p z dag (strictExpr b)).symm

/-- The evaluator uses precisely the original =, >= and > relations. -/
def Satisfies (p : Variable → ℝ) : Prop :=
  (∀ i, scalarValue p (equationExpr i) = 0) ∧
  (∀ b i, 0 ≤ scalarValue p (weakExpr b i)) ∧
  (∀ b, 0 < scalarValue p (strictExpr b))

/-- A bridge to the actual necessary system, with no additional assumptions. -/
theorem satisfies_iff (p : Variable → ℝ) :
    Satisfies p ↔ NecessaryZeros p ∧ PolynomialSideGuards p horizontalData ∧
      PolynomialSideGuards p verticalData := by
  constructor
  · rintro ⟨he,hw,hs⟩
    refine ⟨fun i => (equation_value p i) ▸ he i, ?_, ?_⟩
    · exact ⟨(strict_value p false) ▸ hs false,
        fun i => (weak_value p false i) ▸ hw false i⟩
    · exact ⟨(strict_value p true) ▸ hs true,
        fun i => (weak_value p true i) ▸ hw true i⟩
  · rintro ⟨he,hB,hC⟩
    refine ⟨fun i => (equation_value p i).symm ▸ he i, ?_, ?_⟩
    · intro b i
      cases b
      · exact (weak_value p false i).symm ▸ hB.2 i
      · exact (weak_value p true i).symm ▸ hC.2 i
    · intro b
      cases b
      · exact (strict_value p false).symm ▸ hB.1
      · exact (strict_value p true).symm ▸ hC.1

#print axioms Mub6.Classification.LiftedDagBridge.Concrete.compiled_nodes
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.compiled_equations
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.compiled_weak
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.compiled_strict
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.equation_value
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.weak_value
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.strict_value
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.satisfies_iff
end
end Mub6.Classification.LiftedDagBridge.Concrete
