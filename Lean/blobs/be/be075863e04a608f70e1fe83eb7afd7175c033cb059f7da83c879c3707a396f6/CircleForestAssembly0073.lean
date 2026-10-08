import CircleFullInterface
import CircleForestAssembly0072
import CircleForestChunk0289
import CircleForestChunk0290
import CircleForestChunk0292
import CircleForestChunk0293
import CircleForestChunk0294
import CircleForestChunk0295
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_145595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
theorem cover_145595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145595 := by
  apply coveredState_split_literal (state := state_145595) 2
    state_145596 state_145659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145596
  · exact cover_145659
#print axioms cover_145595

def state_145594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
theorem cover_145594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145594 := by
  apply coveredState_split_literal (state := state_145594) 1
    state_145595 state_145666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145595
  · exact cover_145666
#print axioms cover_145594

def state_145574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
theorem cover_145574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145574 := by
  apply coveredState_split_literal (state := state_145574) 0
    state_145575 state_145594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145575
  · exact cover_145594
#print axioms cover_145574

def state_145556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 20)))
theorem cover_145556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145556 := by
  apply coveredState_split_literal (state := state_145556) 4
    state_145557 state_145574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145557
  · exact cover_145574
#print axioms cover_145556

def state_145552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 20)))
theorem cover_145552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145552 := by
  apply coveredState_split_literal (state := state_145552) 3
    state_145553 state_145556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145553
  · exact cover_145556
#print axioms cover_145552

def state_145482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_145482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145482 := by
  apply coveredState_split_literal (state := state_145482) 2
    state_145483 state_145552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145483
  · exact cover_145552
#print axioms cover_145482

def state_145106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_145106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145106 := by
  apply coveredState_split_literal (state := state_145106) 1
    state_145107 state_145482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145107
  · exact cover_145482
#print axioms cover_145106

def state_145024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_145024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145024 := by
  apply coveredState_split_literal (state := state_145024) 0
    state_145025 state_145106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145025
  · exact cover_145106
#print axioms cover_145024

def state_144992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 20)))
theorem cover_144992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144992 := by
  apply coveredState_split_literal (state := state_144992) 3
    state_144993 state_145024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144993
  · exact cover_145024
#print axioms cover_144992

def state_144991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
theorem cover_144991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144991 := by
  apply coveredState_split_literal (state := state_144991) 2
    state_144992 state_145675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144992
  · exact cover_145675
#print axioms cover_144991

def state_144990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
theorem cover_144990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144990 := by
  apply coveredState_split_literal (state := state_144990) 1
    state_144991 state_145720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144991
  · exact cover_145720
#print axioms cover_144990

def state_145755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 21)))
theorem cover_145755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145755 := by
  apply coveredState_split_literal (state := state_145755) 3
    state_145756 state_145763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145756
  · exact cover_145763
#print axioms cover_145755

def state_145754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
theorem cover_145754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145754 := by
  apply coveredState_split_literal (state := state_145754) 2
    state_145755 state_145820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145755
  · exact cover_145820
#print axioms cover_145754

def state_145753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
theorem cover_145753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145753 := by
  apply coveredState_split_literal (state := state_145753) 1
    state_145754 state_145837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145754
  · exact cover_145837
#print axioms cover_145753

def state_144989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_144989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144989 := by
  apply coveredState_split_literal (state := state_144989) 4
    state_144990 state_145753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144990
  · exact cover_145753
#print axioms cover_144989

def state_144935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_144935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144935 := by
  apply coveredState_split_literal (state := state_144935) 0
    state_144936 state_144989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144936
  · exact cover_144989
#print axioms cover_144935

def state_145931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 20)))
theorem cover_145931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145931 := by
  apply coveredState_split_literal (state := state_145931) 4
    state_145932 state_145995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145932
  · exact cover_145995
#print axioms cover_145931

def state_145885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_145885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145885 := by
  apply coveredState_split_literal (state := state_145885) 2
    state_145886 state_145931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145886
  · exact cover_145931
#print axioms cover_145885

def state_146000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_146000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146000 := by
  apply coveredState_split_literal (state := state_146000) 2
    state_146001 state_146036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146001
  · exact cover_146036
#print axioms cover_146000

def state_145884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_145884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145884 := by
  apply coveredState_split_literal (state := state_145884) 1
    state_145885 state_146000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145885
  · exact cover_146000
#print axioms cover_145884

def state_145856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
theorem cover_145856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145856 := by
  apply coveredState_split_literal (state := state_145856) 0
    state_145857 state_145884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145857
  · exact cover_145884
#print axioms cover_145856

def state_145855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 20)))
theorem cover_145855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145855 := by
  apply coveredState_split_literal (state := state_145855) 3
    state_145856 state_146085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145856
  · exact cover_146085
#print axioms cover_145855

def state_145854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 20)))
theorem cover_145854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145854 := by
  apply coveredState_split_literal (state := state_145854) 2
    state_145855 state_146112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145855
  · exact cover_146112
#print axioms cover_145854

def state_145853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 20)))
theorem cover_145853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145853 := by
  apply coveredState_split_literal (state := state_145853) 1
    state_145854 state_146163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145854
  · exact cover_146163
#print axioms cover_145853

def state_146184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 21)))
theorem cover_146184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146184 := by
  apply coveredState_split_literal (state := state_146184) 1
    state_146185 state_146244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146185
  · exact cover_146244
#print axioms cover_146184

def state_145852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_145852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145852 := by
  apply coveredState_split_literal (state := state_145852) 4
    state_145853 state_146184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145853
  · exact cover_146184
#print axioms cover_145852

def state_145848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
theorem cover_145848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145848 := by
  apply coveredState_split_literal (state := state_145848) 0
    state_145849 state_145852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_145849
  · exact cover_145852
#print axioms cover_145848

def state_144934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_144934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144934 := by
  apply coveredState_split_literal (state := state_144934) 3
    state_144935 state_145848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144935
  · exact cover_145848
#print axioms cover_144934

def state_144933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_144933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144933 := by
  apply coveredState_split_literal (state := state_144933) 2
    state_144934 state_146273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144934
  · exact cover_146273
#print axioms cover_144933

def state_144932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
theorem cover_144932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144932 := by
  apply coveredState_split_literal (state := state_144932) 1
    state_144933 state_146288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144933
  · exact cover_146288
#print axioms cover_144932

def state_146308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_146308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146308 := by
  apply coveredState_split_literal (state := state_146308) 2
    state_146309 state_146356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146309
  · exact cover_146356
#print axioms cover_146308

def state_146307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_146307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146307 := by
  apply coveredState_split_literal (state := state_146307) 1
    state_146308 state_146373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_146308
  · exact cover_146373
#print axioms cover_146307
end Mub6.Numerical.CircleFullPrototype.Forest
