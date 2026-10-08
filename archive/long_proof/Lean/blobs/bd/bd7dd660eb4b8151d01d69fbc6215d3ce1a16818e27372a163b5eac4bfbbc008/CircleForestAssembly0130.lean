import CircleFullInterface
import CircleForestAssembly0129
import CircleForestChunk0504
import CircleForestChunk0505
import CircleForestChunk0506
import CircleForestChunk0507
import CircleForestChunk0508
import CircleForestChunk0509
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1309967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1309967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309967 := by
  apply coveredState_split_literal (state := state_1309967) 3
    state_1309968 state_1310029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309968
  · exact cover_1310029
#print axioms cover_1309967

def state_1310102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
theorem cover_1310102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310102 := by
  apply coveredState_split_literal (state := state_1310102) 1
    state_1310103 state_1310152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310103
  · exact cover_1310152
#print axioms cover_1310102

def state_1310101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
theorem cover_1310101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310101 := by
  apply coveredState_split_literal (state := state_1310101) 4
    state_1310102 state_1310181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310102
  · exact cover_1310181
#print axioms cover_1310101

def state_1310203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 48)))
theorem cover_1310203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310203 := by
  apply coveredState_split_literal (state := state_1310203) 0
    state_1310204 state_1310247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310204
  · exact cover_1310247
#print axioms cover_1310203

def state_1310321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 48)))
theorem cover_1310321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310321 := by
  apply coveredState_split_literal (state := state_1310321) 4
    state_1310322 state_1310359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310322
  · exact cover_1310359
#print axioms cover_1310321

def state_1310320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
theorem cover_1310320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310320 := by
  apply coveredState_split_literal (state := state_1310320) 3
    state_1310321 state_1310388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310321
  · exact cover_1310388
#print axioms cover_1310320

def state_1310276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
theorem cover_1310276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310276 := by
  apply coveredState_split_literal (state := state_1310276) 0
    state_1310277 state_1310320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310277
  · exact cover_1310320
#print axioms cover_1310276

def state_1310202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
theorem cover_1310202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310202 := by
  apply coveredState_split_literal (state := state_1310202) 2
    state_1310203 state_1310276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310203
  · exact cover_1310276
#print axioms cover_1310202

def state_1310445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
theorem cover_1310445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310445 := by
  apply coveredState_split_literal (state := state_1310445) 0
    state_1310446 state_1310469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310446
  · exact cover_1310469
#print axioms cover_1310445

def state_1310423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
theorem cover_1310423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310423 := by
  apply coveredState_split_literal (state := state_1310423) 2
    state_1310424 state_1310445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310424
  · exact cover_1310445
#print axioms cover_1310423

def state_1310201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
theorem cover_1310201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310201 := by
  apply coveredState_split_literal (state := state_1310201) 1
    state_1310202 state_1310423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310202
  · exact cover_1310423
#print axioms cover_1310201

def state_1310511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1310511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310511 := by
  apply coveredState_split_literal (state := state_1310511) 2
    state_1310512 state_1310531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310512
  · exact cover_1310531
#print axioms cover_1310511

def state_1310622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1310622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310622 := by
  apply coveredState_split_literal (state := state_1310622) 3
    state_1310623 state_1310656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310623
  · exact cover_1310656
#print axioms cover_1310622

def state_1310610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
theorem cover_1310610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310610 := by
  apply coveredState_split_literal (state := state_1310610) 0
    state_1310611 state_1310622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310611
  · exact cover_1310622
#print axioms cover_1310610

def state_1310580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1310580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310580 := by
  apply coveredState_split_literal (state := state_1310580) 2
    state_1310581 state_1310610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310581
  · exact cover_1310610
#print axioms cover_1310580

def state_1310510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
theorem cover_1310510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310510 := by
  apply coveredState_split_literal (state := state_1310510) 1
    state_1310511 state_1310580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310511
  · exact cover_1310580
#print axioms cover_1310510

def state_1310200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
theorem cover_1310200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310200 := by
  apply coveredState_split_literal (state := state_1310200) 4
    state_1310201 state_1310510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310201
  · exact cover_1310510
#print axioms cover_1310200

def state_1310100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1310100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310100 := by
  apply coveredState_split_literal (state := state_1310100) 3
    state_1310101 state_1310200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310101
  · exact cover_1310200
#print axioms cover_1310100

def state_1309966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
theorem cover_1309966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309966 := by
  apply coveredState_split_literal (state := state_1309966) 0
    state_1309967 state_1310100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309967
  · exact cover_1310100
#print axioms cover_1309966

def state_1310713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1310713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310713 := by
  apply coveredState_split_literal (state := state_1310713) 0
    state_1310714 state_1310729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310714
  · exact cover_1310729
#print axioms cover_1310713

def state_1309965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1309965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309965 := by
  apply coveredState_split_literal (state := state_1309965) 4
    state_1309966 state_1310713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309966
  · exact cover_1310713
#print axioms cover_1309965

def state_1309871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1309871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309871 := by
  apply coveredState_split_literal (state := state_1309871) 2
    state_1309872 state_1309965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309872
  · exact cover_1309965
#print axioms cover_1309871

def state_1310778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1310778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310778 := by
  apply coveredState_split_literal (state := state_1310778) 2
    state_1310779 state_1310794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310779
  · exact cover_1310794
#print axioms cover_1310778

def state_1309870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1309870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309870 := by
  apply coveredState_split_literal (state := state_1309870) 1
    state_1309871 state_1310778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309871
  · exact cover_1310778
#print axioms cover_1309870

def state_1309834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309834 := by
  apply coveredState_split_literal (state := state_1309834) 3
    state_1309835 state_1309870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309835
  · exact cover_1309870
#print axioms cover_1309834

def state_1309758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1309758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309758 := by
  apply coveredState_split_literal (state := state_1309758) 0
    state_1309759 state_1309834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309759
  · exact cover_1309834
#print axioms cover_1309758

def state_1309757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1309757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309757 := by
  apply coveredState_split_literal (state := state_1309757) 4
    state_1309758 state_1310851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309758
  · exact cover_1310851
#print axioms cover_1309757

def state_1310878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1310878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310878 := by
  apply coveredState_split_literal (state := state_1310878) 4
    state_1310879 state_1310934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310879
  · exact cover_1310934
#print axioms cover_1310878

def state_1310877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1310877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310877 := by
  apply coveredState_split_literal (state := state_1310877) 1
    state_1310878 state_1310943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310878
  · exact cover_1310943
#print axioms cover_1310877

def state_1310873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1310873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310873 := by
  apply coveredState_split_literal (state := state_1310873) 3
    state_1310874 state_1310877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310874
  · exact cover_1310877
#print axioms cover_1310873

def state_1310869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1310869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310869 := by
  apply coveredState_split_literal (state := state_1310869) 0
    state_1310870 state_1310873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310870
  · exact cover_1310873
#print axioms cover_1310869

def state_1310868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1310868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310868 := by
  apply coveredState_split_literal (state := state_1310868) 4
    state_1310869 state_1310952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310869
  · exact cover_1310952
#print axioms cover_1310868
end Mub6.Numerical.CircleFullD0.Forest
