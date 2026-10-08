import CircleFullInterface
import CircleForestAssembly0410
import CircleForestChunk1598
import CircleForestChunk1600
import CircleForestChunk1601
import CircleForestChunk1602
import CircleForestChunk1603
import CircleForestChunk1604
import CircleForestChunk1605
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2257329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2257329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257329 := by
  apply coveredState_split_literal (state := state_2257329) 1
    state_2257330 state_2257455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257330
  · exact cover_2257455
#print axioms cover_2257329

def state_2257328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2257328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257328 := by
  apply coveredState_split_literal (state := state_2257328) 3
    state_2257329 state_2257460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257329
  · exact cover_2257460
#print axioms cover_2257328

def state_2257531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
theorem cover_2257531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257531 := by
  apply coveredState_split_literal (state := state_2257531) 4
    state_2257532 state_2257571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257532
  · exact cover_2257571
#print axioms cover_2257531

def state_2257469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2257469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257469 := by
  apply coveredState_split_literal (state := state_2257469) 2
    state_2257470 state_2257531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257470
  · exact cover_2257531
#print axioms cover_2257469

def state_2257468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2257468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257468 := by
  apply coveredState_split_literal (state := state_2257468) 1
    state_2257469 state_2257628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257469
  · exact cover_2257628
#print axioms cover_2257468

def state_2257467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2257467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257467 := by
  apply coveredState_split_literal (state := state_2257467) 3
    state_2257468 state_2257669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257468
  · exact cover_2257669
#print axioms cover_2257467

def state_2257327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
theorem cover_2257327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257327 := by
  apply coveredState_split_literal (state := state_2257327) 0
    state_2257328 state_2257467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257328
  · exact cover_2257467
#print axioms cover_2257327

def state_2257326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 27)))
theorem cover_2257326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257326 := by
  apply coveredState_split_literal (state := state_2257326) 4
    state_2257327 state_2257704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257327
  · exact cover_2257704
#print axioms cover_2257326

def state_2257312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2257312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257312 := by
  apply coveredState_split_literal (state := state_2257312) 2
    state_2257313 state_2257326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257313
  · exact cover_2257326
#print axioms cover_2257312

def state_2257311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
theorem cover_2257311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257311 := by
  apply coveredState_split_literal (state := state_2257311) 1
    state_2257312 state_2257755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257312
  · exact cover_2257755
#print axioms cover_2257311

def state_2257310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2257310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257310 := by
  apply coveredState_split_literal (state := state_2257310) 3
    state_2257311 state_2257770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257311
  · exact cover_2257770
#print axioms cover_2257310

def state_2257288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2257288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257288 := by
  apply coveredState_split_literal (state := state_2257288) 0
    state_2257289 state_2257310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257289
  · exact cover_2257310
#print axioms cover_2257288

def state_2256750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2256750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256750 := by
  apply coveredState_split_literal (state := state_2256750) 4
    state_2256751 state_2257288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256751
  · exact cover_2257288
#print axioms cover_2256750

def state_2256704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2256704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256704 := by
  apply coveredState_split_literal (state := state_2256704) 2
    state_2256705 state_2256750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256705
  · exact cover_2256750
#print axioms cover_2256704

def state_2256703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2256703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256703 := by
  apply coveredState_split_literal (state := state_2256703) 1
    state_2256704 state_2257777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256704
  · exact cover_2257777
#print axioms cover_2256703

def state_2255591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2255591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255591 := by
  apply coveredState_split_literal (state := state_2255591) 3
    state_2255592 state_2256703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255592
  · exact cover_2256703
#print axioms cover_2255591

def state_2257786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 26)))
theorem cover_2257786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257786 := by
  apply coveredState_split_literal (state := state_2257786) 0
    state_2257787 state_2257842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257787
  · exact cover_2257842
#print axioms cover_2257786

def state_2257785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 13)))
theorem cover_2257785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257785 := by
  apply coveredState_split_literal (state := state_2257785) 4
    state_2257786 state_2257851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257786
  · exact cover_2257851
#print axioms cover_2257785

def state_2257926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 52)))
theorem cover_2257926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257926 := by
  apply coveredState_split_literal (state := state_2257926) 3
    state_2257927 state_2257938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257927
  · exact cover_2257938
#print axioms cover_2257926

def state_2257925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 52)))
theorem cover_2257925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257925 := by
  apply coveredState_split_literal (state := state_2257925) 0
    state_2257926 state_2257999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257926
  · exact cover_2257999
#print axioms cover_2257925

def state_2258076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
theorem cover_2258076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258076 := by
  apply coveredState_split_literal (state := state_2258076) 2
    state_2258077 state_2258080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258077
  · exact cover_2258080
#print axioms cover_2258076

def state_2258075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
theorem cover_2258075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258075 := by
  apply coveredState_split_literal (state := state_2258075) 1
    state_2258076 state_2258141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258076
  · exact cover_2258141
#print axioms cover_2258075

def state_2258041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2258041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258041 := by
  apply coveredState_split_literal (state := state_2258041) 3
    state_2258042 state_2258075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258042
  · exact cover_2258075
#print axioms cover_2258041

def state_2258040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
theorem cover_2258040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258040 := by
  apply coveredState_split_literal (state := state_2258040) 0
    state_2258041 state_2258170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258041
  · exact cover_2258170
#print axioms cover_2258040

def state_2257924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 26)))
theorem cover_2257924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257924 := by
  apply coveredState_split_literal (state := state_2257924) 4
    state_2257925 state_2258040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257925
  · exact cover_2258040
#print axioms cover_2257924

def state_2258273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
theorem cover_2258273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258273 := by
  apply coveredState_split_literal (state := state_2258273) 3
    state_2258274 state_2258293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258274
  · exact cover_2258293
#print axioms cover_2258273

def state_2258272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
theorem cover_2258272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258272 := by
  apply coveredState_split_literal (state := state_2258272) 0
    state_2258273 state_2258352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258273
  · exact cover_2258352
#print axioms cover_2258272

def state_2258248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 53)))
theorem cover_2258248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258248 := by
  apply coveredState_split_literal (state := state_2258248) 4
    state_2258249 state_2258272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258249
  · exact cover_2258272
#print axioms cover_2258248

def state_2258247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
theorem cover_2258247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258247 := by
  apply coveredState_split_literal (state := state_2258247) 2
    state_2258248 state_2258367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258248
  · exact cover_2258367
#print axioms cover_2258247

def state_2258381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 53)))
theorem cover_2258381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258381 := by
  apply coveredState_split_literal (state := state_2258381) 4
    state_2258382 state_2258405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258382
  · exact cover_2258405
#print axioms cover_2258381

def state_2258380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
theorem cover_2258380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258380 := by
  apply coveredState_split_literal (state := state_2258380) 2
    state_2258381 state_2258456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258381
  · exact cover_2258456
#print axioms cover_2258380

def state_2258246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
theorem cover_2258246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258246 := by
  apply coveredState_split_literal (state := state_2258246) 1
    state_2258247 state_2258380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258247
  · exact cover_2258380
#print axioms cover_2258246
end Mub6.Numerical.CircleFullD0.Forest
