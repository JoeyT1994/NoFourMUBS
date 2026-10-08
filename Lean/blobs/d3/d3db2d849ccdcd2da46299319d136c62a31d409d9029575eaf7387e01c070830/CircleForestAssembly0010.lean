import CircleFullInterface
import CircleForestAssembly0009
import CircleForestChunk0043
import CircleForestChunk0044
import CircleForestChunk0045
import CircleForestChunk0046
import CircleForestChunk0047
import CircleForestChunk0048
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_947772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
theorem cover_947772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947772 := by
  apply coveredState_split_literal (state := state_947772) 0
    state_947773 state_947782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947773
  · exact cover_947782
#print axioms cover_947772

def state_948040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 54)))
theorem cover_948040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948040 := by
  apply coveredState_split_literal (state := state_948040) 1
    state_948041 state_948078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948041
  · exact cover_948078
#print axioms cover_948040

def state_948030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 54)))
theorem cover_948030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948030 := by
  apply coveredState_split_literal (state := state_948030) 2
    state_948031 state_948040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948031
  · exact cover_948040
#print axioms cover_948030

def state_948002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 54)))
theorem cover_948002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948002 := by
  apply coveredState_split_literal (state := state_948002) 0
    state_948003 state_948030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948003
  · exact cover_948030
#print axioms cover_948002

def state_948001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 54)))
theorem cover_948001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948001 := by
  apply coveredState_split_literal (state := state_948001) 3
    state_948002 state_948113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948002
  · exact cover_948113
#print axioms cover_948001

def state_948000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
theorem cover_948000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948000 := by
  apply coveredState_split_literal (state := state_948000) 4
    state_948001 state_948126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948001
  · exact cover_948126
#print axioms cover_948000

def state_947976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
theorem cover_947976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947976 := by
  apply coveredState_split_literal (state := state_947976) 1
    state_947977 state_948000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947977
  · exact cover_948000
#print axioms cover_947976

def state_948145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
theorem cover_948145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948145 := by
  apply coveredState_split_literal (state := state_948145) 1
    state_948146 state_948153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948146
  · exact cover_948153
#print axioms cover_948145

def state_948144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_948144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948144 := by
  apply coveredState_split_literal (state := state_948144) 2
    state_948145 state_948214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948145
  · exact cover_948214
#print axioms cover_948144

def state_948134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_948134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948134 := by
  apply coveredState_split_literal (state := state_948134) 0
    state_948135 state_948144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948135
  · exact cover_948144
#print axioms cover_948134

def state_948298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_948298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948298 := by
  apply coveredState_split_literal (state := state_948298) 2
    state_948299 state_948318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948299
  · exact cover_948318
#print axioms cover_948298

def state_948297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
theorem cover_948297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948297 := by
  apply coveredState_split_literal (state := state_948297) 0
    state_948298 state_948363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948298
  · exact cover_948363
#print axioms cover_948297

def state_948296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 108)))
theorem cover_948296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948296 := by
  apply coveredState_split_literal (state := state_948296) 3
    state_948297 state_948404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948297
  · exact cover_948404
#print axioms cover_948296

def state_948295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_948295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948295 := by
  apply coveredState_split_literal (state := state_948295) 4
    state_948296 state_948413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948296
  · exact cover_948413
#print axioms cover_948295

def state_948287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
theorem cover_948287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948287 := by
  apply coveredState_split_literal (state := state_948287) 1
    state_948288 state_948295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948288
  · exact cover_948295
#print axioms cover_948287

def state_948271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_948271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948271 := by
  apply coveredState_split_literal (state := state_948271) 2
    state_948272 state_948287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948272
  · exact cover_948287
#print axioms cover_948271

def state_948257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
theorem cover_948257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948257 := by
  apply coveredState_split_literal (state := state_948257) 0
    state_948258 state_948271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948258
  · exact cover_948271
#print axioms cover_948257

def state_948133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_948133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948133 := by
  apply coveredState_split_literal (state := state_948133) 3
    state_948134 state_948257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948134
  · exact cover_948257
#print axioms cover_948133

def state_948132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_948132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948132 := by
  apply coveredState_split_literal (state := state_948132) 4
    state_948133 state_948418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948133
  · exact cover_948418
#print axioms cover_948132

def state_948424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
theorem cover_948424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948424 := by
  apply coveredState_split_literal (state := state_948424) 2
    state_948425 state_948482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948425
  · exact cover_948482
#print axioms cover_948424

def state_948573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 108)))
theorem cover_948573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948573 := by
  apply coveredState_split_literal (state := state_948573) 1
    state_948574 state_948609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948574
  · exact cover_948609
#print axioms cover_948573

def state_948557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 108)))
theorem cover_948557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948557 := by
  apply coveredState_split_literal (state := state_948557) 2
    state_948558 state_948573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948558
  · exact cover_948573
#print axioms cover_948557

def state_948650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 108)))
theorem cover_948650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948650 := by
  apply coveredState_split_literal (state := state_948650) 2
    state_948651 state_948662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948651
  · exact cover_948662
#print axioms cover_948650

def state_948556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 108)))
theorem cover_948556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948556 := by
  apply coveredState_split_literal (state := state_948556) 0
    state_948557 state_948650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948557
  · exact cover_948650
#print axioms cover_948556

def state_948512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 108)))
theorem cover_948512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948512 := by
  apply coveredState_split_literal (state := state_948512) 3
    state_948513 state_948556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948513
  · exact cover_948556
#print axioms cover_948512

def state_948511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
theorem cover_948511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948511 := by
  apply coveredState_split_literal (state := state_948511) 4
    state_948512 state_948715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948512
  · exact cover_948715
#print axioms cover_948511

def state_948792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 109)))
theorem cover_948792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948792 := by
  apply coveredState_split_literal (state := state_948792) 3
    state_948793 state_948806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948793
  · exact cover_948806
#print axioms cover_948792

def state_948732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
theorem cover_948732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948732 := by
  apply coveredState_split_literal (state := state_948732) 4
    state_948733 state_948792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948733
  · exact cover_948792
#print axioms cover_948732

def state_948510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
theorem cover_948510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948510 := by
  apply coveredState_split_literal (state := state_948510) 1
    state_948511 state_948732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948511
  · exact cover_948732
#print axioms cover_948510

def state_948875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
theorem cover_948875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948875 := by
  apply coveredState_split_literal (state := state_948875) 1
    state_948876 state_948939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948876
  · exact cover_948939
#print axioms cover_948875

def state_948874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 108)))
theorem cover_948874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948874 := by
  apply coveredState_split_literal (state := state_948874) 2
    state_948875 state_948988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948875
  · exact cover_948988
#print axioms cover_948874

def state_949008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
theorem cover_949008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949008 := by
  apply coveredState_split_literal (state := state_949008) 1
    state_949009 state_949058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_949009
  · exact cover_949058
#print axioms cover_949008
end Mub6.Numerical.CircleFullD0.Forest
