import LiftedExpressionDag

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
set_option maxHeartbeats 4000000

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

end
end Mub6.Classification.LiftedDagBridge.Concrete
