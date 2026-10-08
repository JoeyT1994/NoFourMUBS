import CircleFullInterface
import CircleForestAssembly0101
import CircleForestAssembly0102
import CircleForestChunk0404
import CircleForestChunk0409
import CircleForestChunk0410
import CircleForestChunk0411
import CircleForestChunk0412
import CircleForestChunk0413
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_174149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 23)))
theorem cover_174149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174149 := by
  apply coveredState_split_literal (state := state_174149) 4
    state_174150 state_174165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174150
  · exact cover_174165
#print axioms cover_174149

def state_174127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 23)))
theorem cover_174127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174127 := by
  apply coveredState_split_literal (state := state_174127) 1
    state_174128 state_174149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174128
  · exact cover_174149
#print axioms cover_174127

def state_174126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 23)))
theorem cover_174126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174126 := by
  apply coveredState_split_literal (state := state_174126) 3
    state_174127 state_174416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174127
  · exact cover_174416
#print axioms cover_174126

def state_174032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_174032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174032 := by
  apply coveredState_split_literal (state := state_174032) 2
    state_174033 state_174126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174033
  · exact cover_174126
#print axioms cover_174032

def state_173960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_173960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173960 := by
  apply coveredState_split_literal (state := state_173960) 0
    state_173961 state_174032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173961
  · exact cover_174032
#print axioms cover_173960

def state_173950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_173950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173950 := by
  apply coveredState_split_literal (state := state_173950) 4
    state_173951 state_173960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173951
  · exact cover_173960
#print axioms cover_173950

def state_174444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_174444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174444 := by
  apply coveredState_split_literal (state := state_174444) 2
    state_174445 state_174458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174445
  · exact cover_174458
#print axioms cover_174444

def state_174585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
theorem cover_174585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174585 := by
  apply coveredState_split_literal (state := state_174585) 2
    state_174586 state_174627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174586
  · exact cover_174627
#print axioms cover_174585

def state_174521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
theorem cover_174521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174521 := by
  apply coveredState_split_literal (state := state_174521) 0
    state_174522 state_174585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174522
  · exact cover_174585
#print axioms cover_174521

def state_174520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
theorem cover_174520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174520 := by
  apply coveredState_split_literal (state := state_174520) 1
    state_174521 state_174654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174521
  · exact cover_174654
#print axioms cover_174520

def state_174512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 23)))
theorem cover_174512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174512 := by
  apply coveredState_split_literal (state := state_174512) 4
    state_174513 state_174520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174513
  · exact cover_174520
#print axioms cover_174512

def state_174511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 23)))
theorem cover_174511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174511 := by
  apply coveredState_split_literal (state := state_174511) 3
    state_174512 state_174659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174512
  · exact cover_174659
#print axioms cover_174511

def state_174509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_174509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174509 := by
  apply coveredState_split_literal (state := state_174509) 2
    state_174510 state_174511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174510
  · exact cover_174511
#print axioms cover_174509

def state_174443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
theorem cover_174443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174443 := by
  apply coveredState_split_literal (state := state_174443) 0
    state_174444 state_174509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174444
  · exact cover_174509
#print axioms cover_174443

def state_174441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_174441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174441 := by
  apply coveredState_split_literal (state := state_174441) 4
    state_174442 state_174443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174442
  · exact cover_174443
#print axioms cover_174441

def state_173949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_173949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173949 := by
  apply coveredState_split_literal (state := state_173949) 1
    state_173950 state_174441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_173950
  · exact cover_174441
#print axioms cover_173949

def state_172863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_172863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172863 := by
  apply coveredState_split_literal (state := state_172863) 3
    state_172864 state_173949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172864
  · exact cover_173949
#print axioms cover_172863

def state_172723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_172723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172723 := by
  apply coveredState_split_literal (state := state_172723) 2
    state_172724 state_172863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172724
  · exact cover_172863
#print axioms cover_172723

def state_172617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_172617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172617 := by
  apply coveredState_split_literal (state := state_172617) 0
    state_172618 state_172723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172618
  · exact cover_172723
#print axioms cover_172617

def state_172579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_172579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172579 := by
  apply coveredState_split_literal (state := state_172579) 4
    state_172580 state_172617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172580
  · exact cover_172617
#print axioms cover_172579

def state_174680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_174680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174680 := by
  apply coveredState_split_literal (state := state_174680) 0
    state_174681 state_174702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174681
  · exact cover_174702
#print axioms cover_174680

def state_174678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_174678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174678 := by
  apply coveredState_split_literal (state := state_174678) 4
    state_174679 state_174680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174679
  · exact cover_174680
#print axioms cover_174678

def state_172578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_172578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172578 := by
  apply coveredState_split_literal (state := state_172578) 1
    state_172579 state_174678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172579
  · exact cover_174678
#print axioms cover_172578

def state_172576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_172576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172576 := by
  apply coveredState_split_literal (state := state_172576) 4
    state_172577 state_172578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172577
  · exact cover_172578
#print axioms cover_172576

def state_172462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_172462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172462 := by
  apply coveredState_split_literal (state := state_172462) 3
    state_172463 state_172576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172463
  · exact cover_172576
#print axioms cover_172462

def state_174783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_174783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174783 := by
  apply coveredState_split_literal (state := state_174783) 0
    state_174784 state_174787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174784
  · exact cover_174787
#print axioms cover_174783

def state_174777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_174777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174777 := by
  apply coveredState_split_literal (state := state_174777) 4
    state_174778 state_174783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174778
  · exact cover_174783
#print axioms cover_174777

def state_174776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_174776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174776 := by
  apply coveredState_split_literal (state := state_174776) 2
    state_174777 state_174848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174777
  · exact cover_174848
#print axioms cover_174776

def state_174775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_174775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174775 := by
  apply coveredState_split_literal (state := state_174775) 1
    state_174776 state_174849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174776
  · exact cover_174849
#print axioms cover_174775

def state_174769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_174769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174769 := by
  apply coveredState_split_literal (state := state_174769) 4
    state_174770 state_174775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174770
  · exact cover_174775
#print axioms cover_174769

def state_174765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_174765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174765 := by
  apply coveredState_split_literal (state := state_174765) 3
    state_174766 state_174769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174766
  · exact cover_174769
#print axioms cover_174765

def state_172461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172461 := by
  apply coveredState_split_literal (state := state_172461) 2
    state_172462 state_174765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172462
  · exact cover_174765
#print axioms cover_172461
end Mub6.Numerical.CircleFullPrototype.Forest
