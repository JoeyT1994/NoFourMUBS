import CircleFullInterface
import CircleForestAssembly0253
import CircleForestChunk0961
import CircleForestChunk0971
import CircleForestChunk0972
import CircleForestChunk0973
import CircleForestChunk0974
import CircleForestChunk0975
import CircleForestChunk0976
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1533704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 9)))
theorem cover_1533704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533704 := by
  apply coveredState_split_literal (state := state_1533704) 1
    state_1533705 state_1533734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533705
  · exact cover_1533734
#print axioms cover_1533704

def state_1533797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
theorem cover_1533797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533797 := by
  apply coveredState_split_literal (state := state_1533797) 0
    state_1533798 state_1533851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533798
  · exact cover_1533851
#print axioms cover_1533797

def state_1533796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 9)))
theorem cover_1533796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533796 := by
  apply coveredState_split_literal (state := state_1533796) 4
    state_1533797 state_1533888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533797
  · exact cover_1533888
#print axioms cover_1533796

def state_1533794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1533794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533794 := by
  apply coveredState_split_literal (state := state_1533794) 3
    state_1533795 state_1533796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533795
  · exact cover_1533796
#print axioms cover_1533794

def state_1534007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 18)))
theorem cover_1534007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534007 := by
  apply coveredState_split_literal (state := state_1534007) 4
    state_1534008 state_1534067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534008
  · exact cover_1534067
#print axioms cover_1534007

def state_1533969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 18)))
theorem cover_1533969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533969 := by
  apply coveredState_split_literal (state := state_1533969) 3
    state_1533970 state_1534007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533970
  · exact cover_1534007
#print axioms cover_1533969

def state_1533925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
theorem cover_1533925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533925 := by
  apply coveredState_split_literal (state := state_1533925) 2
    state_1533926 state_1533969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533926
  · exact cover_1533969
#print axioms cover_1533925

def state_1534132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 18)))
theorem cover_1534132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534132 := by
  apply coveredState_split_literal (state := state_1534132) 4
    state_1534133 state_1534178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534133
  · exact cover_1534178
#print axioms cover_1534132

def state_1534126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 18)))
theorem cover_1534126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534126 := by
  apply coveredState_split_literal (state := state_1534126) 3
    state_1534127 state_1534132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534127
  · exact cover_1534132
#print axioms cover_1534126

def state_1534112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
theorem cover_1534112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534112 := by
  apply coveredState_split_literal (state := state_1534112) 2
    state_1534113 state_1534126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534113
  · exact cover_1534126
#print axioms cover_1534112

def state_1533924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
theorem cover_1533924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533924 := by
  apply coveredState_split_literal (state := state_1533924) 0
    state_1533925 state_1534112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533925
  · exact cover_1534112
#print axioms cover_1533924

def state_1534236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
theorem cover_1534236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534236 := by
  apply coveredState_split_literal (state := state_1534236) 2
    state_1534237 state_1534276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534237
  · exact cover_1534276
#print axioms cover_1534236

def state_1534319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
theorem cover_1534319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534319 := by
  apply coveredState_split_literal (state := state_1534319) 2
    state_1534320 state_1534353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534320
  · exact cover_1534353
#print axioms cover_1534319

def state_1534235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 19)))
theorem cover_1534235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534235 := by
  apply coveredState_split_literal (state := state_1534235) 0
    state_1534236 state_1534319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534236
  · exact cover_1534319
#print axioms cover_1534235

def state_1533923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 9)))
theorem cover_1533923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533923 := by
  apply coveredState_split_literal (state := state_1533923) 4
    state_1533924 state_1534235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533924
  · exact cover_1534235
#print axioms cover_1533923

def state_1533889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1533889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533889 := by
  apply coveredState_split_literal (state := state_1533889) 3
    state_1533890 state_1533923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533890
  · exact cover_1533923
#print axioms cover_1533889

def state_1533793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 9)))
theorem cover_1533793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533793 := by
  apply coveredState_split_literal (state := state_1533793) 1
    state_1533794 state_1533889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533794
  · exact cover_1533889
#print axioms cover_1533793

def state_1533703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1533703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533703 := by
  apply coveredState_split_literal (state := state_1533703) 2
    state_1533704 state_1533793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533704
  · exact cover_1533793
#print axioms cover_1533703

def state_1533702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
theorem cover_1533702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533702 := by
  apply coveredState_split_literal (state := state_1533702) 0
    state_1533703 state_1534384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1533703
  · exact cover_1534384
#print axioms cover_1533702

def state_1531396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1531396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531396 := by
  apply coveredState_split_literal (state := state_1531396) 4
    state_1531397 state_1533702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531397
  · exact cover_1533702
#print axioms cover_1531396

def state_1531358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1531358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531358 := by
  apply coveredState_split_literal (state := state_1531358) 3
    state_1531359 state_1531396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531359
  · exact cover_1531396
#print axioms cover_1531358

def state_1534488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 32)))
theorem cover_1534488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534488 := by
  apply coveredState_split_literal (state := state_1534488) 1
    state_1534489 state_1534540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534489
  · exact cover_1534540
#print axioms cover_1534488

def state_1534487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 32)))
theorem cover_1534487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534487 := by
  apply coveredState_split_literal (state := state_1534487) 0
    state_1534488 state_1534565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534488
  · exact cover_1534565
#print axioms cover_1534487

def state_1534579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
theorem cover_1534579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534579 := by
  apply coveredState_split_literal (state := state_1534579) 1
    state_1534580 state_1534621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534580
  · exact cover_1534621
#print axioms cover_1534579

def state_1534684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
theorem cover_1534684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534684 := by
  apply coveredState_split_literal (state := state_1534684) 1
    state_1534685 state_1534714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534685
  · exact cover_1534714
#print axioms cover_1534684

def state_1534578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
theorem cover_1534578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534578 := by
  apply coveredState_split_literal (state := state_1534578) 0
    state_1534579 state_1534684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534579
  · exact cover_1534684
#print axioms cover_1534578

def state_1534486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 16)))
theorem cover_1534486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534486 := by
  apply coveredState_split_literal (state := state_1534486) 4
    state_1534487 state_1534578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534487
  · exact cover_1534578
#print axioms cover_1534486

def state_1534485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 16)))
theorem cover_1534485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534485 := by
  apply coveredState_split_literal (state := state_1534485) 3
    state_1534486 state_1534759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534486
  · exact cover_1534759
#print axioms cover_1534485

def state_1534484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
theorem cover_1534484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534484 := by
  apply coveredState_split_literal (state := state_1534484) 2
    state_1534485 state_1534766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534485
  · exact cover_1534766
#print axioms cover_1534484

def state_1534483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
theorem cover_1534483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534483 := by
  apply coveredState_split_literal (state := state_1534483) 1
    state_1534484 state_1534775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534484
  · exact cover_1534775
#print axioms cover_1534483

def state_1534482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
theorem cover_1534482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534482 := by
  apply coveredState_split_literal (state := state_1534482) 0
    state_1534483 state_1534834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534483
  · exact cover_1534834
#print axioms cover_1534482

def state_1534880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 17)))
theorem cover_1534880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534880 := by
  apply coveredState_split_literal (state := state_1534880) 3
    state_1534881 state_1534932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534881
  · exact cover_1534932
#print axioms cover_1534880
end Mub6.Numerical.CircleFullD0.Forest
