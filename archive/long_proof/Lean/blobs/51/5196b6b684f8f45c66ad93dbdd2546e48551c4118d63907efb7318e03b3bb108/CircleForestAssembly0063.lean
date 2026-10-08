import CircleFullInterface
import CircleForestAssembly0062
import CircleForestChunk0252
import CircleForestChunk0255
import CircleForestChunk0256
import CircleForestChunk0257
import CircleForestChunk0258
import CircleForestChunk0259
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_998806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_998806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998806 := by
  apply coveredState_split_literal (state := state_998806) 4
    state_998807 state_998862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998807
  · exact cover_998862
#print axioms cover_998806

def state_998805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_998805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998805 := by
  apply coveredState_split_literal (state := state_998805) 0
    state_998806 state_998935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998806
  · exact cover_998935
#print axioms cover_998805

def state_998795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
theorem cover_998795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998795 := by
  apply coveredState_split_literal (state := state_998795) 1
    state_998796 state_998805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998796
  · exact cover_998805
#print axioms cover_998795

def state_998725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 87)))
theorem cover_998725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998725 := by
  apply coveredState_split_literal (state := state_998725) 2
    state_998726 state_998795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998726
  · exact cover_998795
#print axioms cover_998725

def state_998724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 87)))
theorem cover_998724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998724 := by
  apply coveredState_split_literal (state := state_998724) 3
    state_998725 state_998952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998725
  · exact cover_998952
#print axioms cover_998724

def state_998594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_998594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998594 := by
  apply coveredState_split_literal (state := state_998594) 4
    state_998595 state_998724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998595
  · exact cover_998724
#print axioms cover_998594

def state_998593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_998593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998593 := by
  apply coveredState_split_literal (state := state_998593) 0
    state_998594 state_998975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998594
  · exact cover_998975
#print axioms cover_998593

def state_998999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 87)))
theorem cover_998999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998999 := by
  apply coveredState_split_literal (state := state_998999) 3
    state_999000 state_999055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999000
  · exact cover_999055
#print axioms cover_998999

def state_998995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_998995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998995 := by
  apply coveredState_split_literal (state := state_998995) 4
    state_998996 state_998999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998996
  · exact cover_998999
#print axioms cover_998995

def state_998994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_998994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998994 := by
  apply coveredState_split_literal (state := state_998994) 0
    state_998995 state_999082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998995
  · exact cover_999082
#print axioms cover_998994

def state_998592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
theorem cover_998592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998592 := by
  apply coveredState_split_literal (state := state_998592) 1
    state_998593 state_998994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998593
  · exact cover_998994
#print axioms cover_998592

def state_999141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 87)))
theorem cover_999141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999141 := by
  apply coveredState_split_literal (state := state_999141) 3
    state_999142 state_999157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999142
  · exact cover_999157
#print axioms cover_999141

def state_999089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_999089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999089 := by
  apply coveredState_split_literal (state := state_999089) 4
    state_999090 state_999141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999090
  · exact cover_999141
#print axioms cover_999089

def state_999088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_999088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999088 := by
  apply coveredState_split_literal (state := state_999088) 0
    state_999089 state_999220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999089
  · exact cover_999220
#print axioms cover_999088

def state_999229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_999229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999229 := by
  apply coveredState_split_literal (state := state_999229) 0
    state_999230 state_999271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999230
  · exact cover_999271
#print axioms cover_999229

def state_999087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 43)))
theorem cover_999087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999087 := by
  apply coveredState_split_literal (state := state_999087) 1
    state_999088 state_999229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999088
  · exact cover_999229
#print axioms cover_999087

def state_998591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 43)))
theorem cover_998591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998591 := by
  apply coveredState_split_literal (state := state_998591) 2
    state_998592 state_999087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998592
  · exact cover_999087
#print axioms cover_998591

def state_998513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 21)))
theorem cover_998513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998513 := by
  apply coveredState_split_literal (state := state_998513) 4
    state_998514 state_998591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998514
  · exact cover_998591
#print axioms cover_998513

def state_997987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997987 := by
  apply coveredState_split_literal (state := state_997987) 3
    state_997988 state_998513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997988
  · exact cover_998513
#print axioms cover_997987

def state_997986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997986 := by
  apply coveredState_split_literal (state := state_997986) 0
    state_997987 state_999294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997987
  · exact cover_999294
#print axioms cover_997986

def state_997985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_997985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997985 := by
  apply coveredState_split_literal (state := state_997985) 2
    state_997986 state_999327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997986
  · exact cover_999327
#print axioms cover_997985

def state_997973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_997973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997973 := by
  apply coveredState_split_literal (state := state_997973) 4
    state_997974 state_997985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997974
  · exact cover_997985
#print axioms cover_997973

def state_999397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 42)))
theorem cover_999397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999397 := by
  apply coveredState_split_literal (state := state_999397) 1
    state_999398 state_999459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999398
  · exact cover_999459
#print axioms cover_999397

def state_999383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 42)))
theorem cover_999383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999383 := by
  apply coveredState_split_literal (state := state_999383) 2
    state_999384 state_999397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999384
  · exact cover_999397
#print axioms cover_999383

def state_999501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_999501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999501 := by
  apply coveredState_split_literal (state := state_999501) 4
    state_999502 state_999555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999502
  · exact cover_999555
#print axioms cover_999501

def state_999500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_999500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999500 := by
  apply coveredState_split_literal (state := state_999500) 0
    state_999501 state_999612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999501
  · exact cover_999612
#print axioms cover_999500

def state_999499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
theorem cover_999499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999499 := by
  apply coveredState_split_literal (state := state_999499) 3
    state_999500 state_999633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999500
  · exact cover_999633
#print axioms cover_999499

def state_999654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 87)))
theorem cover_999654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999654 := by
  apply coveredState_split_literal (state := state_999654) 2
    state_999655 state_999684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999655
  · exact cover_999684
#print axioms cover_999654

def state_999640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_999640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999640 := by
  apply coveredState_split_literal (state := state_999640) 4
    state_999641 state_999654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999641
  · exact cover_999654
#print axioms cover_999640

def state_999639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
theorem cover_999639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999639 := by
  apply coveredState_split_literal (state := state_999639) 0
    state_999640 state_999723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999640
  · exact cover_999723
#print axioms cover_999639

def state_999638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
theorem cover_999638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999638 := by
  apply coveredState_split_literal (state := state_999638) 3
    state_999639 state_999738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999639
  · exact cover_999738
#print axioms cover_999638

def state_999498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 43)))
theorem cover_999498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999498 := by
  apply coveredState_split_literal (state := state_999498) 1
    state_999499 state_999638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_999499
  · exact cover_999638
#print axioms cover_999498
end Mub6.Numerical.CircleFullD0.Forest
