import CircleFullInterface
import CircleForestAssembly0050
import CircleForestAssembly0051
import CircleForestAssembly0052
import CircleForestChunk0202
import CircleForestChunk0209
import CircleForestChunk0210
import CircleForestChunk0211
import CircleForestChunk0212
import CircleForestChunk0213
import CircleForestChunk0214
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_71589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_71589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71589 := by
  apply coveredState_split_literal (state := state_71589) 3
    state_71590 state_71639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71590
  · exact cover_71639
#print axioms cover_71589

def state_71588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 10)))
theorem cover_71588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71588 := by
  apply coveredState_split_literal (state := state_71588) 4
    state_71589 state_71900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71589
  · exact cover_71900
#print axioms cover_71588

def state_71955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
theorem cover_71955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71955 := by
  apply coveredState_split_literal (state := state_71955) 4
    state_71956 state_72011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71956
  · exact cover_72011
#print axioms cover_71955

def state_71587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_71587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71587 := by
  apply coveredState_split_literal (state := state_71587) 2
    state_71588 state_71955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71588
  · exact cover_71955
#print axioms cover_71587

def state_71567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_71567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71567 := by
  apply coveredState_split_literal (state := state_71567) 3
    state_71568 state_71587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71568
  · exact cover_71587
#print axioms cover_71567

def state_71255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_71255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71255 := by
  apply coveredState_split_literal (state := state_71255) 1
    state_71256 state_71567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_71256
  · exact cover_71567
#print axioms cover_71255

def state_69913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69913 := by
  apply coveredState_split_literal (state := state_69913) 0
    state_69914 state_71255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69914
  · exact cover_71255
#print axioms cover_69913

def state_69912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_69912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69912 := by
  apply coveredState_split_literal (state := state_69912) 4
    state_69913 state_72060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69913
  · exact cover_72060
#print axioms cover_69912

def state_69874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_69874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69874 := by
  apply coveredState_split_literal (state := state_69874) 3
    state_69875 state_69912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69875
  · exact cover_69912
#print axioms cover_69874

def state_69873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69873 := by
  apply coveredState_split_literal (state := state_69873) 2
    state_69874 state_72083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69874
  · exact cover_72083
#print axioms cover_69873

def state_72114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_72114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72114 := by
  apply coveredState_split_literal (state := state_72114) 2
    state_72115 state_72174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72115
  · exact cover_72174
#print axioms cover_72114

def state_69872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69872 := by
  apply coveredState_split_literal (state := state_69872) 1
    state_69873 state_72114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69873
  · exact cover_72114
#print axioms cover_69872

def state_72186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_72186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72186 := by
  apply coveredState_split_literal (state := state_72186) 2
    state_72187 state_72246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72187
  · exact cover_72246
#print axioms cover_72186

def state_72185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_72185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72185 := by
  apply coveredState_split_literal (state := state_72185) 1
    state_72186 state_72255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72186
  · exact cover_72255
#print axioms cover_72185

def state_69871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69871 := by
  apply coveredState_split_literal (state := state_69871) 0
    state_69872 state_72185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69872
  · exact cover_72185
#print axioms cover_69871

def state_69605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_69605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69605 := by
  apply coveredState_split_literal (state := state_69605) 4
    state_69606 state_69871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69606
  · exact cover_69871
#print axioms cover_69605

def state_69487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_69487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69487 := by
  apply coveredState_split_literal (state := state_69487) 3
    state_69488 state_69605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69488
  · exact cover_69605
#print axioms cover_69487

def state_68781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68781 := by
  apply coveredState_split_literal (state := state_68781) 2
    state_68782 state_69487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68782
  · exact cover_69487
#print axioms cover_68781

def state_72306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_72306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72306 := by
  apply coveredState_split_literal (state := state_72306) 2
    state_72307 state_72346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72307
  · exact cover_72346
#print axioms cover_72306

def state_68780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68780 := by
  apply coveredState_split_literal (state := state_68780) 1
    state_68781 state_72306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68781
  · exact cover_72306
#print axioms cover_68780

def state_72384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_72384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72384 := by
  apply coveredState_split_literal (state := state_72384) 2
    state_72385 state_72402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72385
  · exact cover_72402
#print axioms cover_72384

def state_72383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_72383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72383 := by
  apply coveredState_split_literal (state := state_72383) 1
    state_72384 state_72463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72384
  · exact cover_72463
#print axioms cover_72383

def state_68779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68779 := by
  apply coveredState_split_literal (state := state_68779) 0
    state_68780 state_72383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68780
  · exact cover_72383
#print axioms cover_68779

def state_72575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_72575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72575 := by
  apply coveredState_split_literal (state := state_72575) 3
    state_72576 state_72627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72576
  · exact cover_72627
#print axioms cover_72575

def state_72539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_72539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72539 := by
  apply coveredState_split_literal (state := state_72539) 2
    state_72540 state_72575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72540
  · exact cover_72575
#print axioms cover_72539

def state_72479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_72479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72479 := by
  apply coveredState_split_literal (state := state_72479) 1
    state_72480 state_72539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72480
  · exact cover_72539
#print axioms cover_72479

def state_72478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_72478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72478 := by
  apply coveredState_split_literal (state := state_72478) 0
    state_72479 state_72650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72479
  · exact cover_72650
#print axioms cover_72478

def state_68778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_68778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68778 := by
  apply coveredState_split_literal (state := state_68778) 4
    state_68779 state_72478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68779
  · exact cover_72478
#print axioms cover_68778

def state_72695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_72695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72695 := by
  apply coveredState_split_literal (state := state_72695) 0
    state_72696 state_72727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72696
  · exact cover_72727
#print axioms cover_72695

def state_72774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
theorem cover_72774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72774 := by
  apply coveredState_split_literal (state := state_72774) 0
    state_72775 state_72820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72775
  · exact cover_72820
#print axioms cover_72774

def state_72768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_72768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72768 := by
  apply coveredState_split_literal (state := state_72768) 2
    state_72769 state_72774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72769
  · exact cover_72774
#print axioms cover_72768

def state_72767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_72767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72767 := by
  apply coveredState_split_literal (state := state_72767) 4
    state_72768 state_72865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72768
  · exact cover_72865
#print axioms cover_72767
end Mub6.Numerical.CircleFullPrototype.Forest
