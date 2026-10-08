import D0FullInterface
import D0ForestAssembly0019
import D0ForestChunk0085
import D0ForestChunk0086
import D0ForestChunk0087
import D0ForestChunk0088
import D0ForestChunk0089
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_957869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 54)))
theorem cover_957869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957869 := by
  apply coveredState_split_literal (state := state_957869) 4
    state_957870 state_957879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957870
  · exact cover_957879
#print axioms cover_957869

def state_957799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 54)))
theorem cover_957799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957799 := by
  apply coveredState_split_literal (state := state_957799) 3
    state_957800 state_957869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957800
  · exact cover_957869
#print axioms cover_957799

def state_957798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_957798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957798 := by
  apply coveredState_split_literal (state := state_957798) 2
    state_957799 state_958026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957799
  · exact cover_958026
#print axioms cover_957798

def state_957668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_957668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957668 := by
  apply coveredState_split_literal (state := state_957668) 1
    state_957669 state_957798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957669
  · exact cover_957798
#print axioms cover_957668

def state_957667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
theorem cover_957667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957667 := by
  apply coveredState_split_literal (state := state_957667) 0
    state_957668 state_958049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957668
  · exact cover_958049
#print axioms cover_957667

def state_958073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_958073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958073 := by
  apply coveredState_split_literal (state := state_958073) 2
    state_958074 state_958129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958074
  · exact cover_958129
#print axioms cover_958073

def state_958069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_958069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958069 := by
  apply coveredState_split_literal (state := state_958069) 1
    state_958070 state_958073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958070
  · exact cover_958073
#print axioms cover_958069

def state_958068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
theorem cover_958068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958068 := by
  apply coveredState_split_literal (state := state_958068) 0
    state_958069 state_958156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958069
  · exact cover_958156
#print axioms cover_958068

def state_957666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
theorem cover_957666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957666 := by
  apply coveredState_split_literal (state := state_957666) 4
    state_957667 state_958068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957667
  · exact cover_958068
#print axioms cover_957666

def state_958215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
theorem cover_958215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958215 := by
  apply coveredState_split_literal (state := state_958215) 2
    state_958216 state_958231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958216
  · exact cover_958231
#print axioms cover_958215

def state_958163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
theorem cover_958163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958163 := by
  apply coveredState_split_literal (state := state_958163) 1
    state_958164 state_958215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958164
  · exact cover_958215
#print axioms cover_958163

def state_958162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
theorem cover_958162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958162 := by
  apply coveredState_split_literal (state := state_958162) 0
    state_958163 state_958294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958163
  · exact cover_958294
#print axioms cover_958162

def state_958303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
theorem cover_958303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958303 := by
  apply coveredState_split_literal (state := state_958303) 0
    state_958304 state_958345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958304
  · exact cover_958345
#print axioms cover_958303

def state_958161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
theorem cover_958161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958161 := by
  apply coveredState_split_literal (state := state_958161) 4
    state_958162 state_958303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958162
  · exact cover_958303
#print axioms cover_958161

def state_957665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 27)))
theorem cover_957665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957665 := by
  apply coveredState_split_literal (state := state_957665) 3
    state_957666 state_958161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957666
  · exact cover_958161
#print axioms cover_957665

def state_957193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957193 := by
  apply coveredState_split_literal (state := state_957193) 2
    state_957194 state_957665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957194
  · exact cover_957665
#print axioms cover_957193

def state_957061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957061 := by
  apply coveredState_split_literal (state := state_957061) 1
    state_957062 state_957193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957062
  · exact cover_957193
#print axioms cover_957061

def state_957060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957060 := by
  apply coveredState_split_literal (state := state_957060) 0
    state_957061 state_958368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957061
  · exact cover_958368
#print axioms cover_957060

def state_957059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_957059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957059 := by
  apply coveredState_split_literal (state := state_957059) 3
    state_957060 state_958401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957060
  · exact cover_958401
#print axioms cover_957059

def state_956889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_956889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956889 := by
  apply coveredState_split_literal (state := state_956889) 4
    state_956890 state_957059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956890
  · exact cover_957059
#print axioms cover_956889

def state_958425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
theorem cover_958425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958425 := by
  apply coveredState_split_literal (state := state_958425) 3
    state_958426 state_958463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958426
  · exact cover_958463
#print axioms cover_958425

def state_958507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_958507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958507 := by
  apply coveredState_split_literal (state := state_958507) 3
    state_958508 state_958521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958508
  · exact cover_958521
#print axioms cover_958507

def state_958623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
theorem cover_958623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958623 := by
  apply coveredState_split_literal (state := state_958623) 1
    state_958624 state_958677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958624
  · exact cover_958677
#print axioms cover_958623

def state_958622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
theorem cover_958622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958622 := by
  apply coveredState_split_literal (state := state_958622) 0
    state_958623 state_958734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958623
  · exact cover_958734
#print axioms cover_958622

def state_958768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_958768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958768 := by
  apply coveredState_split_literal (state := state_958768) 3
    state_958769 state_958798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958769
  · exact cover_958798
#print axioms cover_958768

def state_958754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_958754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958754 := by
  apply coveredState_split_literal (state := state_958754) 1
    state_958755 state_958768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958755
  · exact cover_958768
#print axioms cover_958754

def state_958753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
theorem cover_958753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958753 := by
  apply coveredState_split_literal (state := state_958753) 0
    state_958754 state_958837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958754
  · exact cover_958837
#print axioms cover_958753

def state_958621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 27)))
theorem cover_958621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958621 := by
  apply coveredState_split_literal (state := state_958621) 4
    state_958622 state_958753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958622
  · exact cover_958753
#print axioms cover_958621

def state_958620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 27)))
theorem cover_958620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958620 := by
  apply coveredState_split_literal (state := state_958620) 2
    state_958621 state_958852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958621
  · exact cover_958852
#print axioms cover_958620

def state_958584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_958584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958584 := by
  apply coveredState_split_literal (state := state_958584) 3
    state_958585 state_958620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958585
  · exact cover_958620
#print axioms cover_958584

def state_958506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_958506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958506 := by
  apply coveredState_split_literal (state := state_958506) 1
    state_958507 state_958584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958507
  · exact cover_958584
#print axioms cover_958506

def state_958505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
theorem cover_958505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958505 := by
  apply coveredState_split_literal (state := state_958505) 0
    state_958506 state_958879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_958506
  · exact cover_958879
#print axioms cover_958505
end Mub6.Numerical.CircleFullD0.Forest
