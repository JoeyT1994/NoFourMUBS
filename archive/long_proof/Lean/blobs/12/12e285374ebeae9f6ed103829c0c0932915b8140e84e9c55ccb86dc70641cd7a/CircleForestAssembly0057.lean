import CircleFullInterface
import CircleForestAssembly0056
import CircleForestChunk0230
import CircleForestChunk0231
import CircleForestChunk0232
import CircleForestChunk0233
import CircleForestChunk0234
import CircleForestChunk0235
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_992915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 42)))
theorem cover_992915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992915 := by
  apply coveredState_split_literal (state := state_992915) 4
    state_992916 state_992963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992916
  · exact cover_992963
#print axioms cover_992915

def state_992885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 42)))
theorem cover_992885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992885 := by
  apply coveredState_split_literal (state := state_992885) 1
    state_992886 state_992915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992886
  · exact cover_992915
#print axioms cover_992885

def state_993148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 42)))
theorem cover_993148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993148 := by
  apply coveredState_split_literal (state := state_993148) 4
    state_993149 state_993174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993149
  · exact cover_993174
#print axioms cover_993148

def state_993138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 42)))
theorem cover_993138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993138 := by
  apply coveredState_split_literal (state := state_993138) 1
    state_993139 state_993148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993139
  · exact cover_993148
#print axioms cover_993138

def state_992884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
theorem cover_992884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992884 := by
  apply coveredState_split_literal (state := state_992884) 3
    state_992885 state_993138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992885
  · exact cover_993138
#print axioms cover_992884

def state_992836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
theorem cover_992836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992836 := by
  apply coveredState_split_literal (state := state_992836) 0
    state_992837 state_992884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992837
  · exact cover_992884
#print axioms cover_992836

def state_992762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
theorem cover_992762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992762 := by
  apply coveredState_split_literal (state := state_992762) 2
    state_992763 state_992836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992763
  · exact cover_992836
#print axioms cover_992762

def state_993291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
theorem cover_993291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993291 := by
  apply coveredState_split_literal (state := state_993291) 2
    state_993292 state_993339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993292
  · exact cover_993339
#print axioms cover_993291

def state_993285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
theorem cover_993285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993285 := by
  apply coveredState_split_literal (state := state_993285) 1
    state_993286 state_993291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993286
  · exact cover_993291
#print axioms cover_993285

def state_993284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 43)))
theorem cover_993284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993284 := by
  apply coveredState_split_literal (state := state_993284) 4
    state_993285 state_993368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993285
  · exact cover_993368
#print axioms cover_993284

def state_993283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_993283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993283 := by
  apply coveredState_split_literal (state := state_993283) 3
    state_993284 state_993381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993284
  · exact cover_993381
#print axioms cover_993283

def state_993245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
theorem cover_993245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993245 := by
  apply coveredState_split_literal (state := state_993245) 0
    state_993246 state_993283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993246
  · exact cover_993283
#print axioms cover_993245

def state_993215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
theorem cover_993215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993215 := by
  apply coveredState_split_literal (state := state_993215) 2
    state_993216 state_993245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993216
  · exact cover_993245
#print axioms cover_993215

def state_992761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 21)))
theorem cover_992761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992761 := by
  apply coveredState_split_literal (state := state_992761) 4
    state_992762 state_993215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992762
  · exact cover_993215
#print axioms cover_992761

def state_992760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_992760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992760 := by
  apply coveredState_split_literal (state := state_992760) 3
    state_992761 state_993406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992761
  · exact cover_993406
#print axioms cover_992760

def state_992734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_992734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992734 := by
  apply coveredState_split_literal (state := state_992734) 1
    state_992735 state_992760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992735
  · exact cover_992760
#print axioms cover_992734

def state_992678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
theorem cover_992678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992678 := by
  apply coveredState_split_literal (state := state_992678) 0
    state_992679 state_992734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992679
  · exact cover_992734
#print axioms cover_992678

def state_992654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 21)))
theorem cover_992654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992654 := by
  apply coveredState_split_literal (state := state_992654) 2
    state_992655 state_992678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992655
  · exact cover_992678
#print axioms cover_992654

def state_992442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 10)))
theorem cover_992442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992442 := by
  apply coveredState_split_literal (state := state_992442) 4
    state_992443 state_992654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992443
  · exact cover_992654
#print axioms cover_992442

def state_992441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
theorem cover_992441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992441 := by
  apply coveredState_split_literal (state := state_992441) 3
    state_992442 state_993449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_992442
  · exact cover_993449
#print axioms cover_992441

def state_993594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 85)))
theorem cover_993594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993594 := by
  apply coveredState_split_literal (state := state_993594) 0
    state_993595 state_993616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993595
  · exact cover_993616
#print axioms cover_993594

def state_993554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 85)))
theorem cover_993554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993554 := by
  apply coveredState_split_literal (state := state_993554) 2
    state_993555 state_993594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993555
  · exact cover_993594
#print axioms cover_993554

def state_993553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 85)))
theorem cover_993553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993553 := by
  apply coveredState_split_literal (state := state_993553) 1
    state_993554 state_993661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993554
  · exact cover_993661
#print axioms cover_993553

def state_993547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 42)))
theorem cover_993547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993547 := by
  apply coveredState_split_literal (state := state_993547) 4
    state_993548 state_993553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993548
  · exact cover_993553
#print axioms cover_993547

def state_993546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
theorem cover_993546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993546 := by
  apply coveredState_split_literal (state := state_993546) 3
    state_993547 state_993664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993547
  · exact cover_993664
#print axioms cover_993546

def state_993532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
theorem cover_993532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993532 := by
  apply coveredState_split_literal (state := state_993532) 0
    state_993533 state_993546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993533
  · exact cover_993546
#print axioms cover_993532

def state_993518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
theorem cover_993518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993518 := by
  apply coveredState_split_literal (state := state_993518) 2
    state_993519 state_993532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993519
  · exact cover_993532
#print axioms cover_993518

def state_993517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
theorem cover_993517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993517 := by
  apply coveredState_split_literal (state := state_993517) 1
    state_993518 state_993723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993518
  · exact cover_993723
#print axioms cover_993517

def state_993890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 172)))
theorem cover_993890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993890 := by
  apply coveredState_split_literal (state := state_993890) 2
    state_993891 state_993914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993891
  · exact cover_993914
#print axioms cover_993890

def state_993889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 172)))
theorem cover_993889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993889 := by
  apply coveredState_split_literal (state := state_993889) 1
    state_993890 state_993957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993890
  · exact cover_993957
#print axioms cover_993889

def state_993888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 86)))
theorem cover_993888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993888 := by
  apply coveredState_split_literal (state := state_993888) 4
    state_993889 state_993968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993889
  · exact cover_993968
#print axioms cover_993888

def state_993887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 86)))
theorem cover_993887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993887 := by
  apply coveredState_split_literal (state := state_993887) 3
    state_993888 state_993969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_993888
  · exact cover_993969
#print axioms cover_993887
end Mub6.Numerical.CircleFullD0.Forest
