import CircleFullInterface
import CircleForestAssembly0382
import CircleForestChunk1491
import CircleForestChunk1492
import CircleForestChunk1493
import CircleForestChunk1494
import CircleForestChunk1495
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1658711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1658711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658711 := by
  apply coveredState_split_literal (state := state_1658711) 4
    state_1658712 state_1658769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658712
  · exact cover_1658769
#print axioms cover_1658711

def state_1658710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1658710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658710 := by
  apply coveredState_split_literal (state := state_1658710) 1
    state_1658711 state_1658862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658711
  · exact cover_1658862
#print axioms cover_1658710

def state_1658709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_1658709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658709 := by
  apply coveredState_split_literal (state := state_1658709) 3
    state_1658710 state_1658863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658710
  · exact cover_1658863
#print axioms cover_1658709

def state_1658925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
theorem cover_1658925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658925 := by
  apply coveredState_split_literal (state := state_1658925) 4
    state_1658926 state_1658955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658926
  · exact cover_1658955
#print axioms cover_1658925

def state_1658881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
theorem cover_1658881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658881 := by
  apply coveredState_split_literal (state := state_1658881) 1
    state_1658882 state_1658925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658882
  · exact cover_1658925
#print axioms cover_1658881

def state_1658880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
theorem cover_1658880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658880 := by
  apply coveredState_split_literal (state := state_1658880) 2
    state_1658881 state_1658990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658881
  · exact cover_1658990
#print axioms cover_1658880

def state_1658879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1658879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658879 := by
  apply coveredState_split_literal (state := state_1658879) 3
    state_1658880 state_1659015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658880
  · exact cover_1659015
#print axioms cover_1658879

def state_1658871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1658871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658871 := by
  apply coveredState_split_literal (state := state_1658871) 0
    state_1658872 state_1658879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658872
  · exact cover_1658879
#print axioms cover_1658871

def state_1659044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1659044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659044 := by
  apply coveredState_split_literal (state := state_1659044) 3
    state_1659045 state_1659084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659045
  · exact cover_1659084
#print axioms cover_1659044

def state_1659040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
theorem cover_1659040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659040 := by
  apply coveredState_split_literal (state := state_1659040) 0
    state_1659041 state_1659044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659041
  · exact cover_1659044
#print axioms cover_1659040

def state_1658870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1658870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658870 := by
  apply coveredState_split_literal (state := state_1658870) 4
    state_1658871 state_1659040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658871
  · exact cover_1659040
#print axioms cover_1658870

def state_1658869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1658869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658869 := by
  apply coveredState_split_literal (state := state_1658869) 1
    state_1658870 state_1659143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658870
  · exact cover_1659143
#print axioms cover_1658869

def state_1658868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_1658868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658868 := by
  apply coveredState_split_literal (state := state_1658868) 3
    state_1658869 state_1659180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658869
  · exact cover_1659180
#print axioms cover_1658868

def state_1658708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1658708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658708 := by
  apply coveredState_split_literal (state := state_1658708) 2
    state_1658709 state_1658868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658709
  · exact cover_1658868
#print axioms cover_1658708

def state_1658706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1658706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658706 := by
  apply coveredState_split_literal (state := state_1658706) 0
    state_1658707 state_1658708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658707
  · exact cover_1658708
#print axioms cover_1658706

def state_1658646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1658646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658646 := by
  apply coveredState_split_literal (state := state_1658646) 4
    state_1658647 state_1658706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658647
  · exact cover_1658706
#print axioms cover_1658646

def state_1658645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1658645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658645 := by
  apply coveredState_split_literal (state := state_1658645) 1
    state_1658646 state_1659181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658646
  · exact cover_1659181
#print axioms cover_1658645

def state_1658644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_1658644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658644 := by
  apply coveredState_split_literal (state := state_1658644) 3
    state_1658645 state_1659190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658645
  · exact cover_1659190
#print axioms cover_1658644

def state_1658643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1658643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658643 := by
  apply coveredState_split_literal (state := state_1658643) 2
    state_1658644 state_1659199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658644
  · exact cover_1659199
#print axioms cover_1658643

def state_1658615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1658615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658615 := by
  apply coveredState_split_literal (state := state_1658615) 4
    state_1658616 state_1658643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658616
  · exact cover_1658643
#print axioms cover_1658615

def state_1658614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1658614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658614 := by
  apply coveredState_split_literal (state := state_1658614) 1
    state_1658615 state_1659220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1658615
  · exact cover_1659220
#print axioms cover_1658614

def state_1659279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1659279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659279 := by
  apply coveredState_split_literal (state := state_1659279) 4
    state_1659280 state_1659287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659280
  · exact cover_1659287
#print axioms cover_1659279

def state_1659278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
theorem cover_1659278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659278 := by
  apply coveredState_split_literal (state := state_1659278) 1
    state_1659279 state_1659350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659279
  · exact cover_1659350
#print axioms cover_1659278

def state_1659277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 23)))
theorem cover_1659277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659277 := by
  apply coveredState_split_literal (state := state_1659277) 3
    state_1659278 state_1659377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659278
  · exact cover_1659377
#print axioms cover_1659277

def state_1659414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
theorem cover_1659414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659414 := by
  apply coveredState_split_literal (state := state_1659414) 1
    state_1659415 state_1659448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659415
  · exact cover_1659448
#print axioms cover_1659414

def state_1659499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
theorem cover_1659499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659499 := by
  apply coveredState_split_literal (state := state_1659499) 1
    state_1659500 state_1659519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659500
  · exact cover_1659519
#print axioms cover_1659499

def state_1659413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
theorem cover_1659413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659413 := by
  apply coveredState_split_literal (state := state_1659413) 2
    state_1659414 state_1659499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659414
  · exact cover_1659499
#print axioms cover_1659413

def state_1659412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1659412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659412 := by
  apply coveredState_split_literal (state := state_1659412) 3
    state_1659413 state_1659570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659413
  · exact cover_1659570
#print axioms cover_1659412

def state_1659411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
theorem cover_1659411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659411 := by
  apply coveredState_split_literal (state := state_1659411) 0
    state_1659412 state_1659589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659412
  · exact cover_1659589
#print axioms cover_1659411

def state_1659652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
theorem cover_1659652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659652 := by
  apply coveredState_split_literal (state := state_1659652) 0
    state_1659653 state_1659716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659653
  · exact cover_1659716
#print axioms cover_1659652

def state_1659651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_1659651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659651 := by
  apply coveredState_split_literal (state := state_1659651) 4
    state_1659652 state_1659721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659652
  · exact cover_1659721
#print axioms cover_1659651

def state_1659593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
theorem cover_1659593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659593 := by
  apply coveredState_split_literal (state := state_1659593) 1
    state_1659594 state_1659651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1659594
  · exact cover_1659651
#print axioms cover_1659593
end Mub6.Numerical.CircleFullD0.Forest
