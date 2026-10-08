import CircleFullInterface
import CircleForestAssembly0077
import CircleForestAssembly0078
import CircleForestChunk0310
import CircleForestChunk0311
import CircleForestChunk0318
import CircleForestChunk0319
import CircleForestChunk0320
import CircleForestChunk0321
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_151611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 27)))
theorem cover_151611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151611 := by
  apply coveredState_split_literal (state := state_151611) 4
    state_151612 state_151681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151612
  · exact cover_151681
#print axioms cover_151611

def state_151261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_151261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151261 := by
  apply coveredState_split_literal (state := state_151261) 3
    state_151262 state_151611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151262
  · exact cover_151611
#print axioms cover_151261

def state_151260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_151260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151260 := by
  apply coveredState_split_literal (state := state_151260) 2
    state_151261 state_151786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151261
  · exact cover_151786
#print axioms cover_151260

def state_151259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_151259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151259 := by
  apply coveredState_split_literal (state := state_151259) 1
    state_151260 state_151823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151260
  · exact cover_151823
#print axioms cover_151259

def state_151930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
theorem cover_151930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151930 := by
  apply coveredState_split_literal (state := state_151930) 0
    state_151931 state_151976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151931
  · exact cover_151976
#print axioms cover_151930

def state_151920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 27)))
theorem cover_151920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151920 := by
  apply coveredState_split_literal (state := state_151920) 4
    state_151921 state_151930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151921
  · exact cover_151930
#print axioms cover_151920

def state_151866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_151866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151866 := by
  apply coveredState_split_literal (state := state_151866) 3
    state_151867 state_151920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151867
  · exact cover_151920
#print axioms cover_151866

def state_151865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_151865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151865 := by
  apply coveredState_split_literal (state := state_151865) 2
    state_151866 state_151995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151866
  · exact cover_151995
#print axioms cover_151865

def state_151864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_151864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151864 := by
  apply coveredState_split_literal (state := state_151864) 1
    state_151865 state_152012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151865
  · exact cover_152012
#print axioms cover_151864

def state_151258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_151258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151258 := by
  apply coveredState_split_literal (state := state_151258) 0
    state_151259 state_151864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151259
  · exact cover_151864
#print axioms cover_151258

def state_151176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
theorem cover_151176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151176 := by
  apply coveredState_split_literal (state := state_151176) 4
    state_151177 state_151258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151177
  · exact cover_151258
#print axioms cover_151176

def state_151084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_151084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151084 := by
  apply coveredState_split_literal (state := state_151084) 3
    state_151085 state_151176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_151085
  · exact cover_151176
#print axioms cover_151084

def state_150796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150796 := by
  apply coveredState_split_literal (state := state_150796) 2
    state_150797 state_151084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150797
  · exact cover_151084
#print axioms cover_150796

def state_150026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150026 := by
  apply coveredState_split_literal (state := state_150026) 1
    state_150027 state_150796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150027
  · exact cover_150796
#print axioms cover_150026

def state_152121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_152121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152121 := by
  apply coveredState_split_literal (state := state_152121) 3
    state_152122 state_152131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152122
  · exact cover_152131
#print axioms cover_152121

def state_152099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_152099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152099 := by
  apply coveredState_split_literal (state := state_152099) 2
    state_152100 state_152121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152100
  · exact cover_152121
#print axioms cover_152099

def state_152055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_152055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152055 := by
  apply coveredState_split_literal (state := state_152055) 1
    state_152056 state_152099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152056
  · exact cover_152099
#print axioms cover_152055

def state_150025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_150025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150025 := by
  apply coveredState_split_literal (state := state_150025) 0
    state_150026 state_152055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150026
  · exact cover_152055
#print axioms cover_150025

def state_149999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_149999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149999 := by
  apply coveredState_split_literal (state := state_149999) 4
    state_150000 state_150025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_150000
  · exact cover_150025
#print axioms cover_149999

def state_149969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_149969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149969 := by
  apply coveredState_split_literal (state := state_149969) 3
    state_149970 state_149999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149970
  · exact cover_149999
#print axioms cover_149969

def state_149909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149909 := by
  apply coveredState_split_literal (state := state_149909) 2
    state_149910 state_149969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149910
  · exact cover_149969
#print axioms cover_149909

def state_149807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149807 := by
  apply coveredState_split_literal (state := state_149807) 1
    state_149808 state_149909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149808
  · exact cover_149909
#print axioms cover_149807

def state_152192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_152192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152192 := by
  apply coveredState_split_literal (state := state_152192) 1
    state_152193 state_152214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152193
  · exact cover_152214
#print axioms cover_152192

def state_149806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_149806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149806 := by
  apply coveredState_split_literal (state := state_149806) 0
    state_149807 state_152192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_149807
  · exact cover_152192
#print axioms cover_149806

def state_152317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_152317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152317 := by
  apply coveredState_split_literal (state := state_152317) 2
    state_152318 state_152379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152318
  · exact cover_152379
#print axioms cover_152317

def state_152410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 14)))
theorem cover_152410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152410 := by
  apply coveredState_split_literal (state := state_152410) 3
    state_152411 state_152420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152411
  · exact cover_152420
#print axioms cover_152410

def state_152386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_152386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152386 := by
  apply coveredState_split_literal (state := state_152386) 2
    state_152387 state_152410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152387
  · exact cover_152410
#print axioms cover_152386

def state_152316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_152316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152316 := by
  apply coveredState_split_literal (state := state_152316) 1
    state_152317 state_152386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152317
  · exact cover_152386
#print axioms cover_152316

def state_152315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
theorem cover_152315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152315 := by
  apply coveredState_split_literal (state := state_152315) 0
    state_152316 state_152475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152316
  · exact cover_152475
#print axioms cover_152315

def state_152314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 7)))
theorem cover_152314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152314 := by
  apply coveredState_split_literal (state := state_152314) 4
    state_152315 state_152500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152315
  · exact cover_152500
#print axioms cover_152314

def state_152304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
theorem cover_152304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152304 := by
  apply coveredState_split_literal (state := state_152304) 3
    state_152305 state_152314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152305
  · exact cover_152314
#print axioms cover_152304

def state_152288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_152288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152288 := by
  apply coveredState_split_literal (state := state_152288) 2
    state_152289 state_152304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_152289
  · exact cover_152304
#print axioms cover_152288
end Mub6.Numerical.CircleFullPrototype.Forest
