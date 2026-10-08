import CircleFullInterface
import CircleForestAssembly0136
import CircleForestChunk0531
import CircleForestChunk0532
import CircleForestChunk0533
import CircleForestChunk0534
import CircleForestChunk0535
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1316508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 49)))
theorem cover_1316508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316508 := by
  apply coveredState_split_literal (state := state_1316508) 0
    state_1316509 state_1316562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316509
  · exact cover_1316562
#print axioms cover_1316508

def state_1316504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 49)))
theorem cover_1316504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316504 := by
  apply coveredState_split_literal (state := state_1316504) 2
    state_1316505 state_1316508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316505
  · exact cover_1316508
#print axioms cover_1316504

def state_1316464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 49)))
theorem cover_1316464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316464 := by
  apply coveredState_split_literal (state := state_1316464) 1
    state_1316465 state_1316504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316465
  · exact cover_1316504
#print axioms cover_1316464

def state_1316460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
theorem cover_1316460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316460 := by
  apply coveredState_split_literal (state := state_1316460) 3
    state_1316461 state_1316464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316461
  · exact cover_1316464
#print axioms cover_1316460

def state_1316342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1316342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316342 := by
  apply coveredState_split_literal (state := state_1316342) 4
    state_1316343 state_1316460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316343
  · exact cover_1316460
#print axioms cover_1316342

def state_1316341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1316341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316341 := by
  apply coveredState_split_literal (state := state_1316341) 0
    state_1316342 state_1316579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316342
  · exact cover_1316579
#print axioms cover_1316341

def state_1316331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1316331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316331 := by
  apply coveredState_split_literal (state := state_1316331) 2
    state_1316332 state_1316341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316332
  · exact cover_1316341
#print axioms cover_1316331

def state_1316291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1316291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316291 := by
  apply coveredState_split_literal (state := state_1316291) 1
    state_1316292 state_1316331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316292
  · exact cover_1316331
#print axioms cover_1316291

def state_1316290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1316290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316290 := by
  apply coveredState_split_literal (state := state_1316290) 4
    state_1316291 state_1316602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316291
  · exact cover_1316602
#print axioms cover_1316290

def state_1316278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1316278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316278 := by
  apply coveredState_split_literal (state := state_1316278) 3
    state_1316279 state_1316290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316279
  · exact cover_1316290
#print axioms cover_1316278

def state_1315706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1315706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315706 := by
  apply coveredState_split_literal (state := state_1315706) 0
    state_1315707 state_1316278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315707
  · exact cover_1316278
#print axioms cover_1315706

def state_1316644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1316644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316644 := by
  apply coveredState_split_literal (state := state_1316644) 4
    state_1316645 state_1316696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316645
  · exact cover_1316696
#print axioms cover_1316644

def state_1316632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1316632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316632 := by
  apply coveredState_split_literal (state := state_1316632) 3
    state_1316633 state_1316644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316633
  · exact cover_1316644
#print axioms cover_1316632

def state_1316746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
theorem cover_1316746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316746 := by
  apply coveredState_split_literal (state := state_1316746) 3
    state_1316747 state_1316748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316747
  · exact cover_1316748
#print axioms cover_1316746

def state_1316724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1316724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316724 := by
  apply coveredState_split_literal (state := state_1316724) 4
    state_1316725 state_1316746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316725
  · exact cover_1316746
#print axioms cover_1316724

def state_1316723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
theorem cover_1316723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316723 := by
  apply coveredState_split_literal (state := state_1316723) 0
    state_1316724 state_1316811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316724
  · exact cover_1316811
#print axioms cover_1316723

def state_1316722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1316722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316722 := by
  apply coveredState_split_literal (state := state_1316722) 2
    state_1316723 state_1316830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316723
  · exact cover_1316830
#print axioms cover_1316722

def state_1316720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
theorem cover_1316720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316720 := by
  apply coveredState_split_literal (state := state_1316720) 1
    state_1316721 state_1316722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316721
  · exact cover_1316722
#print axioms cover_1316720

def state_1316719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1316719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316719 := by
  apply coveredState_split_literal (state := state_1316719) 4
    state_1316720 state_1316831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316720
  · exact cover_1316831
#print axioms cover_1316719

def state_1316717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1316717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316717 := by
  apply coveredState_split_literal (state := state_1316717) 3
    state_1316718 state_1316719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316718
  · exact cover_1316719
#print axioms cover_1316717

def state_1316631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1316631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316631 := by
  apply coveredState_split_literal (state := state_1316631) 0
    state_1316632 state_1316717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316632
  · exact cover_1316717
#print axioms cover_1316631

def state_1315705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315705 := by
  apply coveredState_split_literal (state := state_1315705) 2
    state_1315706 state_1316631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315706
  · exact cover_1316631
#print axioms cover_1315705

def state_1316918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1316918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316918 := by
  apply coveredState_split_literal (state := state_1316918) 4
    state_1316919 state_1316946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316919
  · exact cover_1316946
#print axioms cover_1316918

def state_1316917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1316917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316917 := by
  apply coveredState_split_literal (state := state_1316917) 0
    state_1316918 state_1316989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316918
  · exact cover_1316989
#print axioms cover_1316917

def state_1316913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1316913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316913 := by
  apply coveredState_split_literal (state := state_1316913) 2
    state_1316914 state_1316917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316914
  · exact cover_1316917
#print axioms cover_1316913

def state_1316912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1316912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316912 := by
  apply coveredState_split_literal (state := state_1316912) 1
    state_1316913 state_1317008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316913
  · exact cover_1317008
#print axioms cover_1316912

def state_1316911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1316911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316911 := by
  apply coveredState_split_literal (state := state_1316911) 4
    state_1316912 state_1317015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316912
  · exact cover_1317015
#print axioms cover_1316911

def state_1316909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1316909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316909 := by
  apply coveredState_split_literal (state := state_1316909) 3
    state_1316910 state_1316911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316910
  · exact cover_1316911
#print axioms cover_1316909

def state_1316857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1316857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316857 := by
  apply coveredState_split_literal (state := state_1316857) 0
    state_1316858 state_1316909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316858
  · exact cover_1316909
#print axioms cover_1316857

def state_1317218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 99)))
theorem cover_1317218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317218 := by
  apply coveredState_split_literal (state := state_1317218) 3
    state_1317219 state_1317238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317219
  · exact cover_1317238
#print axioms cover_1317218

def state_1317186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1317186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317186 := by
  apply coveredState_split_literal (state := state_1317186) 4
    state_1317187 state_1317218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317187
  · exact cover_1317218
#print axioms cover_1317186

def state_1317162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
theorem cover_1317162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317162 := by
  apply coveredState_split_literal (state := state_1317162) 0
    state_1317163 state_1317186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1317163
  · exact cover_1317186
#print axioms cover_1317162
end Mub6.Numerical.CircleFullD0.Forest
