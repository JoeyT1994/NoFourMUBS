import CircleFullInterface
import CircleForestAssembly0461
import CircleForestChunk1812
import CircleForestChunk1813
import CircleForestChunk1814
import CircleForestChunk1815
import CircleForestChunk1816
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2308077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
theorem cover_2308077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308077 := by
  apply coveredState_split_literal (state := state_2308077) 3
    state_2308078 state_2308275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308078
  · exact cover_2308275
#print axioms cover_2308077

def state_2308337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 56 else 46)))
theorem cover_2308337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308337 := by
  apply coveredState_split_literal (state := state_2308337) 2
    state_2308338 state_2308385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308338
  · exact cover_2308385
#print axioms cover_2308337

def state_2308336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 46)))
theorem cover_2308336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308336 := by
  apply coveredState_split_literal (state := state_2308336) 3
    state_2308337 state_2308428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308337
  · exact cover_2308428
#print axioms cover_2308336

def state_2308306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 46)))
theorem cover_2308306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308306 := by
  apply coveredState_split_literal (state := state_2308306) 1
    state_2308307 state_2308336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308307
  · exact cover_2308336
#print axioms cover_2308306

def state_2308305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 46)))
theorem cover_2308305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308305 := by
  apply coveredState_split_literal (state := state_2308305) 0
    state_2308306 state_2308429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308306
  · exact cover_2308429
#print axioms cover_2308305

def state_2308304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 23)))
theorem cover_2308304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308304 := by
  apply coveredState_split_literal (state := state_2308304) 4
    state_2308305 state_2308454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308305
  · exact cover_2308454
#print axioms cover_2308304

def state_2308490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
theorem cover_2308490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308490 := by
  apply coveredState_split_literal (state := state_2308490) 0
    state_2308491 state_2308548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308491
  · exact cover_2308548
#print axioms cover_2308490

def state_2308489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_2308489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308489 := by
  apply coveredState_split_literal (state := state_2308489) 4
    state_2308490 state_2308565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308490
  · exact cover_2308565
#print axioms cover_2308489

def state_2308303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 23)))
theorem cover_2308303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308303 := by
  apply coveredState_split_literal (state := state_2308303) 2
    state_2308304 state_2308489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308304
  · exact cover_2308489
#print axioms cover_2308303

def state_2308302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_2308302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308302 := by
  apply coveredState_split_literal (state := state_2308302) 3
    state_2308303 state_2308574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308303
  · exact cover_2308574
#print axioms cover_2308302

def state_2308076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2308076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308076 := by
  apply coveredState_split_literal (state := state_2308076) 4
    state_2308077 state_2308302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308077
  · exact cover_2308302
#print axioms cover_2308076

def state_2308054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2308054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308054 := by
  apply coveredState_split_literal (state := state_2308054) 1
    state_2308055 state_2308076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308055
  · exact cover_2308076
#print axioms cover_2308054

def state_2308053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_2308053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308053 := by
  apply coveredState_split_literal (state := state_2308053) 0
    state_2308054 state_2308591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308054
  · exact cover_2308591
#print axioms cover_2308053

def state_2308052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_2308052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308052 := by
  apply coveredState_split_literal (state := state_2308052) 3
    state_2308053 state_2308634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308053
  · exact cover_2308634
#print axioms cover_2308052

def state_2308663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2308663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308663 := by
  apply coveredState_split_literal (state := state_2308663) 4
    state_2308664 state_2308697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308664
  · exact cover_2308697
#print axioms cover_2308663

def state_2308659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2308659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308659 := by
  apply coveredState_split_literal (state := state_2308659) 1
    state_2308660 state_2308663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308660
  · exact cover_2308663
#print axioms cover_2308659

def state_2308658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_2308658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308658 := by
  apply coveredState_split_literal (state := state_2308658) 0
    state_2308659 state_2308728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308659
  · exact cover_2308728
#print axioms cover_2308658

def state_2308657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_2308657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308657 := by
  apply coveredState_split_literal (state := state_2308657) 3
    state_2308658 state_2308741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308658
  · exact cover_2308741
#print axioms cover_2308657

def state_2308051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_2308051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308051 := by
  apply coveredState_split_literal (state := state_2308051) 2
    state_2308052 state_2308657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308052
  · exact cover_2308657
#print axioms cover_2308051

def state_2308011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_2308011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308011 := by
  apply coveredState_split_literal (state := state_2308011) 4
    state_2308012 state_2308051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308012
  · exact cover_2308051
#print axioms cover_2308011

def state_2308792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 21)))
theorem cover_2308792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308792 := by
  apply coveredState_split_literal (state := state_2308792) 2
    state_2308793 state_2308826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308793
  · exact cover_2308826
#print axioms cover_2308792

def state_2308782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308782 := by
  apply coveredState_split_literal (state := state_2308782) 4
    state_2308783 state_2308792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308783
  · exact cover_2308792
#print axioms cover_2308782

def state_2308878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
theorem cover_2308878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308878 := by
  apply coveredState_split_literal (state := state_2308878) 0
    state_2308879 state_2308912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308879
  · exact cover_2308912
#print axioms cover_2308878

def state_2308877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 21)))
theorem cover_2308877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308877 := by
  apply coveredState_split_literal (state := state_2308877) 3
    state_2308878 state_2308951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308878
  · exact cover_2308951
#print axioms cover_2308877

def state_2308867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 21)))
theorem cover_2308867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308867 := by
  apply coveredState_split_literal (state := state_2308867) 2
    state_2308868 state_2308877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308868
  · exact cover_2308877
#print axioms cover_2308867

def state_2308857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308857 := by
  apply coveredState_split_literal (state := state_2308857) 4
    state_2308858 state_2308867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308858
  · exact cover_2308867
#print axioms cover_2308857

def state_2308781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308781 := by
  apply coveredState_split_literal (state := state_2308781) 1
    state_2308782 state_2308857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308782
  · exact cover_2308857
#print axioms cover_2308781

def state_2308984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308984 := by
  apply coveredState_split_literal (state := state_2308984) 4
    state_2308985 state_2308992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308985
  · exact cover_2308992
#print axioms cover_2308984

def state_2308978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308978 := by
  apply coveredState_split_literal (state := state_2308978) 1
    state_2308979 state_2308984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308979
  · exact cover_2308984
#print axioms cover_2308978

def state_2308780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_2308780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308780 := by
  apply coveredState_split_literal (state := state_2308780) 0
    state_2308781 state_2308978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308781
  · exact cover_2308978
#print axioms cover_2308780

def state_2308779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 10)))
theorem cover_2308779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308779 := by
  apply coveredState_split_literal (state := state_2308779) 3
    state_2308780 state_2309053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308780
  · exact cover_2309053
#print axioms cover_2308779

def state_2308755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
theorem cover_2308755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308755 := by
  apply coveredState_split_literal (state := state_2308755) 2
    state_2308756 state_2308779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2308756
  · exact cover_2308779
#print axioms cover_2308755
end Mub6.Numerical.CircleFullD0.Forest
