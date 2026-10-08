import CircleFullInterface
import CircleForestAssembly0411
import CircleForestChunk1602
import CircleForestChunk1604
import CircleForestChunk1605
import CircleForestChunk1606
import CircleForestChunk1607
import CircleForestChunk1608
import CircleForestChunk1609
import CircleForestChunk1610
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2258218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
theorem cover_2258218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258218 := by
  apply coveredState_split_literal (state := state_2258218) 3
    state_2258219 state_2258246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258219
  · exact cover_2258246
#print axioms cover_2258218

def state_2258481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
theorem cover_2258481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258481 := by
  apply coveredState_split_literal (state := state_2258481) 3
    state_2258482 state_2258495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258482
  · exact cover_2258495
#print axioms cover_2258481

def state_2258217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
theorem cover_2258217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258217 := by
  apply coveredState_split_literal (state := state_2258217) 0
    state_2258218 state_2258481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258218
  · exact cover_2258481
#print axioms cover_2258217

def state_2258201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 26)))
theorem cover_2258201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258201 := by
  apply coveredState_split_literal (state := state_2258201) 4
    state_2258202 state_2258217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258202
  · exact cover_2258217
#print axioms cover_2258201

def state_2257923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2257923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257923 := by
  apply coveredState_split_literal (state := state_2257923) 2
    state_2257924 state_2258201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257924
  · exact cover_2258201
#print axioms cover_2257923

def state_2258546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2258546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258546 := by
  apply coveredState_split_literal (state := state_2258546) 2
    state_2258547 state_2258570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258547
  · exact cover_2258570
#print axioms cover_2258546

def state_2257922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2257922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257922 := by
  apply coveredState_split_literal (state := state_2257922) 1
    state_2257923 state_2258546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257923
  · exact cover_2258546
#print axioms cover_2257922

def state_2257866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2257866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257866 := by
  apply coveredState_split_literal (state := state_2257866) 3
    state_2257867 state_2257922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257867
  · exact cover_2257922
#print axioms cover_2257866

def state_2258645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
theorem cover_2258645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258645 := by
  apply coveredState_split_literal (state := state_2258645) 1
    state_2258646 state_2258671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258646
  · exact cover_2258671
#print axioms cover_2258645

def state_2258629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2258629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258629 := by
  apply coveredState_split_literal (state := state_2258629) 3
    state_2258630 state_2258645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258630
  · exact cover_2258645
#print axioms cover_2258629

def state_2257865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
theorem cover_2257865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257865 := by
  apply coveredState_split_literal (state := state_2257865) 0
    state_2257866 state_2258629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257866
  · exact cover_2258629
#print axioms cover_2257865

def state_2258747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 44 else 27)))
theorem cover_2258747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258747 := by
  apply coveredState_split_literal (state := state_2258747) 0
    state_2258748 state_2258803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258748
  · exact cover_2258803
#print axioms cover_2258747

def state_2258727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
theorem cover_2258727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258727 := by
  apply coveredState_split_literal (state := state_2258727) 2
    state_2258728 state_2258747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258728
  · exact cover_2258747
#print axioms cover_2258727

def state_2258726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
theorem cover_2258726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258726 := by
  apply coveredState_split_literal (state := state_2258726) 1
    state_2258727 state_2258830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258727
  · exact cover_2258830
#print axioms cover_2258726

def state_2258961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
theorem cover_2258961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258961 := by
  apply coveredState_split_literal (state := state_2258961) 2
    state_2258962 state_2258995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258962
  · exact cover_2258995
#print axioms cover_2258961

def state_2258929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
theorem cover_2258929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258929 := by
  apply coveredState_split_literal (state := state_2258929) 1
    state_2258930 state_2258961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258930
  · exact cover_2258961
#print axioms cover_2258929

def state_2259165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259165 := by
  apply coveredState_split_literal (state := state_2259165) 4
    state_2259166 state_2259189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259166
  · exact cover_2259189
#print axioms cover_2259165

def state_2259298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
theorem cover_2259298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259298 := by
  apply coveredState_split_literal (state := state_2259298) 3
    state_2259299 state_2259344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259299
  · exact cover_2259344
#print axioms cover_2259298

def state_2259242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259242 := by
  apply coveredState_split_literal (state := state_2259242) 4
    state_2259243 state_2259298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259243
  · exact cover_2259298
#print axioms cover_2259242

def state_2259164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259164 := by
  apply coveredState_split_literal (state := state_2259164) 0
    state_2259165 state_2259242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259165
  · exact cover_2259242
#print axioms cover_2259164

def state_2259104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259104 := by
  apply coveredState_split_literal (state := state_2259104) 2
    state_2259105 state_2259164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259105
  · exact cover_2259164
#print axioms cover_2259104

def state_2259050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259050 := by
  apply coveredState_split_literal (state := state_2259050) 1
    state_2259051 state_2259104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259051
  · exact cover_2259104
#print axioms cover_2259050

def state_2258928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2258928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258928 := by
  apply coveredState_split_literal (state := state_2258928) 3
    state_2258929 state_2259050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258929
  · exact cover_2259050
#print axioms cover_2258928

def state_2259380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 55)))
theorem cover_2259380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259380 := by
  apply coveredState_split_literal (state := state_2259380) 1
    state_2259381 state_2259386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259381
  · exact cover_2259386
#print axioms cover_2259380

def state_2259379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
theorem cover_2259379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259379 := by
  apply coveredState_split_literal (state := state_2259379) 3
    state_2259380 state_2259445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259380
  · exact cover_2259445
#print axioms cover_2259379

def state_2258927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2258927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258927 := by
  apply coveredState_split_literal (state := state_2258927) 4
    state_2258928 state_2259379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258928
  · exact cover_2259379
#print axioms cover_2258927

def state_2259584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259584 := by
  apply coveredState_split_literal (state := state_2259584) 4
    state_2259585 state_2259610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259585
  · exact cover_2259610
#print axioms cover_2259584

def state_2259583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
theorem cover_2259583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259583 := by
  apply coveredState_split_literal (state := state_2259583) 0
    state_2259584 state_2259667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259584
  · exact cover_2259667
#print axioms cover_2259583

def state_2259557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259557 := by
  apply coveredState_split_literal (state := state_2259557) 2
    state_2259558 state_2259583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259558
  · exact cover_2259583
#print axioms cover_2259557

def state_2259545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
theorem cover_2259545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259545 := by
  apply coveredState_split_literal (state := state_2259545) 1
    state_2259546 state_2259557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259546
  · exact cover_2259557
#print axioms cover_2259545

def state_2259487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
theorem cover_2259487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259487 := by
  apply coveredState_split_literal (state := state_2259487) 3
    state_2259488 state_2259545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259488
  · exact cover_2259545
#print axioms cover_2259487

def state_2259486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 27)))
theorem cover_2259486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259486 := by
  apply coveredState_split_literal (state := state_2259486) 4
    state_2259487 state_2259674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2259487
  · exact cover_2259674
#print axioms cover_2259486
end Mub6.Numerical.CircleFullD0.Forest
