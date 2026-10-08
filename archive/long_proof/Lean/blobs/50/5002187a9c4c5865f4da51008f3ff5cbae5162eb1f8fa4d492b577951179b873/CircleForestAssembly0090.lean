import CircleFullInterface
import CircleForestAssembly0089
import CircleForestChunk0360
import CircleForestChunk0361
import CircleForestChunk0362
import CircleForestChunk0363
import CircleForestChunk0364
import CircleForestChunk0365
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_161870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_161870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161870 := by
  apply coveredState_split_literal (state := state_161870) 4
    state_161871 state_162000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161871
  · exact cover_162000
#print axioms cover_161870

def state_161869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_161869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161869 := by
  apply coveredState_split_literal (state := state_161869) 3
    state_161870 state_162045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161870
  · exact cover_162045
#print axioms cover_161869

def state_162206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 53 else 27)))
theorem cover_162206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162206 := by
  apply coveredState_split_literal (state := state_162206) 1
    state_162207 state_162264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162207
  · exact cover_162264
#print axioms cover_162206

def state_162194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 27)))
theorem cover_162194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162194 := by
  apply coveredState_split_literal (state := state_162194) 3
    state_162195 state_162206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162195
  · exact cover_162206
#print axioms cover_162194

def state_162193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 27)))
theorem cover_162193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162193 := by
  apply coveredState_split_literal (state := state_162193) 0
    state_162194 state_162319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162194
  · exact cover_162319
#print axioms cover_162193

def state_162192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 27)))
theorem cover_162192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162192 := by
  apply coveredState_split_literal (state := state_162192) 2
    state_162193 state_162328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162193
  · exact cover_162328
#print axioms cover_162192

def state_162191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 27)))
theorem cover_162191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162191 := by
  apply coveredState_split_literal (state := state_162191) 1
    state_162192 state_162349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162192
  · exact cover_162349
#print axioms cover_162191

def state_162167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 13)))
theorem cover_162167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162167 := by
  apply coveredState_split_literal (state := state_162167) 4
    state_162168 state_162191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162168
  · exact cover_162191
#print axioms cover_162167

def state_162380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 53)))
theorem cover_162380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162380 := by
  apply coveredState_split_literal (state := state_162380) 1
    state_162381 state_162434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162381
  · exact cover_162434
#print axioms cover_162380

def state_162368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 26)))
theorem cover_162368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162368 := by
  apply coveredState_split_literal (state := state_162368) 4
    state_162369 state_162380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162369
  · exact cover_162380
#print axioms cover_162368

def state_162367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 26)))
theorem cover_162367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162367 := by
  apply coveredState_split_literal (state := state_162367) 0
    state_162368 state_162495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162368
  · exact cover_162495
#print axioms cover_162367

def state_162366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
theorem cover_162366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162366 := by
  apply coveredState_split_literal (state := state_162366) 2
    state_162367 state_162506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162367
  · exact cover_162506
#print axioms cover_162366

def state_162365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
theorem cover_162365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162365 := by
  apply coveredState_split_literal (state := state_162365) 1
    state_162366 state_162517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162366
  · exact cover_162517
#print axioms cover_162365

def state_162626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 54 else 27)))
theorem cover_162626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162626 := by
  apply coveredState_split_literal (state := state_162626) 4
    state_162627 state_162676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162627
  · exact cover_162676
#print axioms cover_162626

def state_162625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
theorem cover_162625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162625 := by
  apply coveredState_split_literal (state := state_162625) 3
    state_162626 state_162701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162626
  · exact cover_162701
#print axioms cover_162625

def state_162595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_162595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162595 := by
  apply coveredState_split_literal (state := state_162595) 2
    state_162596 state_162625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162596
  · exact cover_162625
#print axioms cover_162595

def state_162545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_162545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162545 := by
  apply coveredState_split_literal (state := state_162545) 1
    state_162546 state_162595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162546
  · exact cover_162595
#print axioms cover_162545

def state_162544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_162544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162544 := by
  apply coveredState_split_literal (state := state_162544) 0
    state_162545 state_162754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162545
  · exact cover_162754
#print axioms cover_162544

def state_162820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162820 := by
  apply coveredState_split_literal (state := state_162820) 2
    state_162821 state_162878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162821
  · exact cover_162878
#print axioms cover_162820

def state_162802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162802 := by
  apply coveredState_split_literal (state := state_162802) 1
    state_162803 state_162820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162803
  · exact cover_162820
#print axioms cover_162802

def state_162801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162801 := by
  apply coveredState_split_literal (state := state_162801) 0
    state_162802 state_162885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162802
  · exact cover_162885
#print axioms cover_162801

def state_162543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_162543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162543 := by
  apply coveredState_split_literal (state := state_162543) 2
    state_162544 state_162801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162544
  · exact cover_162801
#print axioms cover_162543

def state_162914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
theorem cover_162914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162914 := by
  apply coveredState_split_literal (state := state_162914) 1
    state_162915 state_162976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162915
  · exact cover_162976
#print axioms cover_162914

def state_162898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_162898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162898 := by
  apply coveredState_split_literal (state := state_162898) 2
    state_162899 state_162914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162899
  · exact cover_162914
#print axioms cover_162898

def state_162897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
theorem cover_162897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162897 := by
  apply coveredState_split_literal (state := state_162897) 0
    state_162898 state_162981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162898
  · exact cover_162981
#print axioms cover_162897

def state_163013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 55 else 27)))
theorem cover_163013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163013 := by
  apply coveredState_split_literal (state := state_163013) 4
    state_163014 state_163033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163014
  · exact cover_163033
#print axioms cover_163013

def state_162991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 27 else 27)))
theorem cover_162991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162991 := by
  apply coveredState_split_literal (state := state_162991) 3
    state_162992 state_163013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162992
  · exact cover_163013
#print axioms cover_162991

def state_162990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162990 := by
  apply coveredState_split_literal (state := state_162990) 2
    state_162991 state_163086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162991
  · exact cover_163086
#print axioms cover_162990

def state_162989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162989 := by
  apply coveredState_split_literal (state := state_162989) 1
    state_162990 state_163105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162990
  · exact cover_163105
#print axioms cover_162989

def state_162988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
theorem cover_162988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162988 := by
  apply coveredState_split_literal (state := state_162988) 0
    state_162989 state_163124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162989
  · exact cover_163124
#print axioms cover_162988

def state_162896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_162896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162896 := by
  apply coveredState_split_literal (state := state_162896) 2
    state_162897 state_162988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162897
  · exact cover_162988
#print axioms cover_162896

def state_162542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
theorem cover_162542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162542 := by
  apply coveredState_split_literal (state := state_162542) 1
    state_162543 state_162896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162543
  · exact cover_162896
#print axioms cover_162542
end Mub6.Numerical.CircleFullPrototype.Forest
