import CircleFullInterface
import CircleForestAssembly0115
import CircleForestChunk0458
import CircleForestChunk0459
import CircleForestChunk0460
import CircleForestChunk0461
import CircleForestChunk0462
import CircleForestChunk0463
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_185641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_185641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185641 := by
  apply coveredState_split_literal (state := state_185641) 0
    state_185642 state_185705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185642
  · exact cover_185705
#print axioms cover_185641

def state_185738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_185738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185738 := by
  apply coveredState_split_literal (state := state_185738) 0
    state_185739 state_185802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185739
  · exact cover_185802
#print axioms cover_185738

def state_185640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_185640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185640 := by
  apply coveredState_split_literal (state := state_185640) 4
    state_185641 state_185738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185641
  · exact cover_185738
#print axioms cover_185640

def state_185843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_185843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185843 := by
  apply coveredState_split_literal (state := state_185843) 4
    state_185844 state_185879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185844
  · exact cover_185879
#print axioms cover_185843

def state_185639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_185639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185639 := by
  apply coveredState_split_literal (state := state_185639) 3
    state_185640 state_185843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185640
  · exact cover_185843
#print axioms cover_185639

def state_184933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_184933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184933 := by
  apply coveredState_split_literal (state := state_184933) 2
    state_184934 state_185639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184934
  · exact cover_185639
#print axioms cover_184933

def state_185927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_185927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185927 := by
  apply coveredState_split_literal (state := state_185927) 0
    state_185928 state_185985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185928
  · exact cover_185985
#print axioms cover_185927

def state_185926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_185926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185926 := by
  apply coveredState_split_literal (state := state_185926) 4
    state_185927 state_186008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185927
  · exact cover_186008
#print axioms cover_185926

def state_186042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_186042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186042 := by
  apply coveredState_split_literal (state := state_186042) 0
    state_186043 state_186098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186043
  · exact cover_186098
#print axioms cover_186042

def state_186041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_186041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186041 := by
  apply coveredState_split_literal (state := state_186041) 4
    state_186042 state_186131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186042
  · exact cover_186131
#print axioms cover_186041

def state_185925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_185925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185925 := by
  apply coveredState_split_literal (state := state_185925) 3
    state_185926 state_186041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185926
  · exact cover_186041
#print axioms cover_185925

def state_186178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_186178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186178 := by
  apply coveredState_split_literal (state := state_186178) 2
    state_186179 state_186204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186179
  · exact cover_186204
#print axioms cover_186178

def state_186263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_186263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186263 := by
  apply coveredState_split_literal (state := state_186263) 2
    state_186264 state_186323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186264
  · exact cover_186323
#print axioms cover_186263

def state_186177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_186177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186177 := by
  apply coveredState_split_literal (state := state_186177) 1
    state_186178 state_186263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186178
  · exact cover_186263
#print axioms cover_186177

def state_186176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_186176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186176 := by
  apply coveredState_split_literal (state := state_186176) 0
    state_186177 state_186356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186177
  · exact cover_186356
#print axioms cover_186176

def state_186434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_186434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186434 := by
  apply coveredState_split_literal (state := state_186434) 4
    state_186435 state_186498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186435
  · exact cover_186498
#print axioms cover_186434

def state_186433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_186433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186433 := by
  apply coveredState_split_literal (state := state_186433) 3
    state_186434 state_186501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186434
  · exact cover_186501
#print axioms cover_186433

def state_186432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_186432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186432 := by
  apply coveredState_split_literal (state := state_186432) 2
    state_186433 state_186510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186433
  · exact cover_186510
#print axioms cover_186432

def state_186394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_186394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186394 := by
  apply coveredState_split_literal (state := state_186394) 1
    state_186395 state_186432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186395
  · exact cover_186432
#print axioms cover_186394

def state_186545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_186545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186545 := by
  apply coveredState_split_literal (state := state_186545) 2
    state_186546 state_186601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186546
  · exact cover_186601
#print axioms cover_186545

def state_186513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_186513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186513 := by
  apply coveredState_split_literal (state := state_186513) 1
    state_186514 state_186545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186514
  · exact cover_186545
#print axioms cover_186513

def state_186393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_186393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186393 := by
  apply coveredState_split_literal (state := state_186393) 0
    state_186394 state_186513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186394
  · exact cover_186513
#print axioms cover_186393

def state_186175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_186175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186175 := by
  apply coveredState_split_literal (state := state_186175) 4
    state_186176 state_186393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186176
  · exact cover_186393
#print axioms cover_186175

def state_186642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_186642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186642 := by
  apply coveredState_split_literal (state := state_186642) 4
    state_186643 state_186706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186643
  · exact cover_186706
#print axioms cover_186642

def state_186641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_186641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186641 := by
  apply coveredState_split_literal (state := state_186641) 3
    state_186642 state_186713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186642
  · exact cover_186713
#print axioms cover_186641

def state_186613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_186613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186613 := by
  apply coveredState_split_literal (state := state_186613) 2
    state_186614 state_186641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186614
  · exact cover_186641
#print axioms cover_186613

def state_186612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_186612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186612 := by
  apply coveredState_split_literal (state := state_186612) 1
    state_186613 state_186718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186613
  · exact cover_186718
#print axioms cover_186612

def state_186734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_186734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186734 := by
  apply coveredState_split_literal (state := state_186734) 2
    state_186735 state_186758
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186735
  · exact cover_186758
#print axioms cover_186734

def state_186733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_186733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186733 := by
  apply coveredState_split_literal (state := state_186733) 1
    state_186734 state_186809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186734
  · exact cover_186809
#print axioms cover_186733

def state_186611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_186611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186611 := by
  apply coveredState_split_literal (state := state_186611) 0
    state_186612 state_186733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186612
  · exact cover_186733
#print axioms cover_186611

def state_186610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_186610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186610 := by
  apply coveredState_split_literal (state := state_186610) 4
    state_186611 state_186828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186611
  · exact cover_186828
#print axioms cover_186610

def state_186174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_186174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_186174 := by
  apply coveredState_split_literal (state := state_186174) 3
    state_186175 state_186610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_186175
  · exact cover_186610
#print axioms cover_186174
end Mub6.Numerical.CircleFullPrototype.Forest
