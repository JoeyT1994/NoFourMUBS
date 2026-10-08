import D0FullInterface
import D0ForestAssembly0018
import D0ForestChunk0039
import D0ForestChunk0040
import D0ForestChunk0041
import D0ForestChunk0042
import D0ForestChunk0043
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2257782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2257782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257782 := by
  apply coveredState_split_literal (state := state_2257782) 3
    state_2257783 state_2260318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257783
  · exact cover_2260318
#print axioms cover_2257782

def state_2255590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2255590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255590 := by
  apply coveredState_split_literal (state := state_2255590) 0
    state_2255591 state_2257782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255591
  · exact cover_2257782
#print axioms cover_2255590

def state_2254382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_2254382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254382 := by
  apply coveredState_split_literal (state := state_2254382) 4
    state_2254383 state_2255590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254383
  · exact cover_2255590
#print axioms cover_2254382

def state_2254220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_2254220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254220 := by
  apply coveredState_split_literal (state := state_2254220) 3
    state_2254221 state_2254382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254221
  · exact cover_2254382
#print axioms cover_2254220

def state_2261987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2261987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261987 := by
  apply coveredState_split_literal (state := state_2261987) 3
    state_2261988 state_2262603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261988
  · exact cover_2262603
#print axioms cover_2261987

def state_2261986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2261986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261986 := by
  apply coveredState_split_literal (state := state_2261986) 2
    state_2261987 state_2263156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261987
  · exact cover_2263156
#print axioms cover_2261986

def state_2263286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
theorem cover_2263286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263286 := by
  apply coveredState_split_literal (state := state_2263286) 1
    state_2263287 state_2264170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263287
  · exact cover_2264170
#print axioms cover_2263286

def state_2263206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 27)))
theorem cover_2263206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263206 := by
  apply coveredState_split_literal (state := state_2263206) 3
    state_2263207 state_2263286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263207
  · exact cover_2263286
#print axioms cover_2263206

def state_2263205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2263205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263205 := by
  apply coveredState_split_literal (state := state_2263205) 2
    state_2263206 state_2264947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263206
  · exact cover_2264947
#print axioms cover_2263205

def state_2263204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
theorem cover_2263204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263204 := by
  apply coveredState_split_literal (state := state_2263204) 0
    state_2263205 state_2264994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263205
  · exact cover_2264994
#print axioms cover_2263204

def state_2263166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2263166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263166 := by
  apply coveredState_split_literal (state := state_2263166) 4
    state_2263167 state_2263204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263167
  · exact cover_2263204
#print axioms cover_2263166

def state_2263165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
theorem cover_2263165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263165 := by
  apply coveredState_split_literal (state := state_2263165) 1
    state_2263166 state_2265207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263166
  · exact cover_2265207
#print axioms cover_2263165

def state_2263164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2263164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263164 := by
  apply coveredState_split_literal (state := state_2263164) 3
    state_2263165 state_2265506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263165
  · exact cover_2265506
#print axioms cover_2263164

def state_2263163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2263163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263163 := by
  apply coveredState_split_literal (state := state_2263163) 2
    state_2263164 state_2266137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263164
  · exact cover_2266137
#print axioms cover_2263163

def state_2261985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2261985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261985 := by
  apply coveredState_split_literal (state := state_2261985) 0
    state_2261986 state_2263163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261986
  · exact cover_2263163
#print axioms cover_2261985

def state_2261967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
theorem cover_2261967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261967 := by
  apply coveredState_split_literal (state := state_2261967) 4
    state_2261968 state_2261985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261968
  · exact cover_2261985
#print axioms cover_2261967

def state_2261885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2261885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261885 := by
  apply coveredState_split_literal (state := state_2261885) 3
    state_2261886 state_2261967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261886
  · exact cover_2261967
#print axioms cover_2261885

def state_2254219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2254219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254219 := by
  apply coveredState_split_literal (state := state_2254219) 2
    state_2254220 state_2261885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254220
  · exact cover_2261885
#print axioms cover_2254219

def state_2248445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2248445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248445 := by
  apply coveredState_split_literal (state := state_2248445) 1
    state_2248446 state_2254219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248446
  · exact cover_2254219
#print axioms cover_2248445

def state_2268174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2268174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268174 := by
  apply coveredState_split_literal (state := state_2268174) 0
    state_2268175 state_2269062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268175
  · exact cover_2269062
#print axioms cover_2268174

def state_2269677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269677 := by
  apply coveredState_split_literal (state := state_2269677) 4
    state_2269678 state_2270577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269678
  · exact cover_2270577
#print axioms cover_2269677

def state_2269549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2269549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269549 := by
  apply coveredState_split_literal (state := state_2269549) 0
    state_2269550 state_2269677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2269550
  · exact cover_2269677
#print axioms cover_2269549

def state_2268173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2268173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268173 := by
  apply coveredState_split_literal (state := state_2268173) 1
    state_2268174 state_2269549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268174
  · exact cover_2269549
#print axioms cover_2268173

def state_2268172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2268172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268172 := by
  apply coveredState_split_literal (state := state_2268172) 3
    state_2268173 state_2270902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268173
  · exact cover_2270902
#print axioms cover_2268172

def state_2268171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2268171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268171 := by
  apply coveredState_split_literal (state := state_2268171) 2
    state_2268172 state_2271311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268172
  · exact cover_2271311
#print axioms cover_2268171

def state_2268170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2268170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268170 := by
  apply coveredState_split_literal (state := state_2268170) 4
    state_2268171 state_2271838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268171
  · exact cover_2271838
#print axioms cover_2268170

def state_2267664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2267664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267664 := by
  apply coveredState_split_literal (state := state_2267664) 0
    state_2267665 state_2268170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267665
  · exact cover_2268170
#print axioms cover_2267664

def state_2267302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2267302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267302 := by
  apply coveredState_split_literal (state := state_2267302) 3
    state_2267303 state_2267664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267303
  · exact cover_2267664
#print axioms cover_2267302

def state_2267056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2267056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267056 := by
  apply coveredState_split_literal (state := state_2267056) 2
    state_2267057 state_2267302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267057
  · exact cover_2267302
#print axioms cover_2267056

def state_2266164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2266164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266164 := by
  apply coveredState_split_literal (state := state_2266164) 1
    state_2266165 state_2267056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266165
  · exact cover_2267056
#print axioms cover_2266164

def state_2248444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2248444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248444 := by
  apply coveredState_split_literal (state := state_2248444) 4
    state_2248445 state_2266164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248445
  · exact cover_2266164
#print axioms cover_2248444

def state_2248348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2248348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248348 := by
  apply coveredState_split_literal (state := state_2248348) 3
    state_2248349 state_2248444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248349
  · exact cover_2248444
#print axioms cover_2248348

def state_2245820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245820 := by
  apply coveredState_split_literal (state := state_2245820) 2
    state_2245821 state_2248348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245821
  · exact cover_2248348
#print axioms cover_2245820

def state_2245819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2245819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245819 := by
  apply coveredState_split_literal (state := state_2245819) 1
    state_2245820 state_2272001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245820
  · exact cover_2272001
#print axioms cover_2245819

def state_2274027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2274027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274027 := by
  apply coveredState_split_literal (state := state_2274027) 2
    state_2274028 state_2274841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274028
  · exact cover_2274841
#print axioms cover_2274027

def state_2274026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2274026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274026 := by
  apply coveredState_split_literal (state := state_2274026) 4
    state_2274027 state_2275746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2274027
  · exact cover_2275746
#print axioms cover_2274026

def state_2273256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_2273256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273256 := by
  apply coveredState_split_literal (state := state_2273256) 3
    state_2273257 state_2274026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273257
  · exact cover_2274026
#print axioms cover_2273256

def state_2273144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273144 := by
  apply coveredState_split_literal (state := state_2273144) 2
    state_2273145 state_2273256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273145
  · exact cover_2273256
#print axioms cover_2273144

def state_2273090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273090 := by
  apply coveredState_split_literal (state := state_2273090) 1
    state_2273091 state_2273144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273091
  · exact cover_2273144
#print axioms cover_2273090

def state_2273089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_2273089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273089 := by
  apply coveredState_split_literal (state := state_2273089) 0
    state_2273090 state_2276391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2273090
  · exact cover_2276391
#print axioms cover_2273089

def state_2272669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_2272669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272669 := by
  apply coveredState_split_literal (state := state_2272669) 4
    state_2272670 state_2273089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272670
  · exact cover_2273089
#print axioms cover_2272669

def state_2272447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_2272447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272447 := by
  apply coveredState_split_literal (state := state_2272447) 3
    state_2272448 state_2272669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272448
  · exact cover_2272669
#print axioms cover_2272447

def state_2272363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2272363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272363 := by
  apply coveredState_split_literal (state := state_2272363) 2
    state_2272364 state_2272447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2272364
  · exact cover_2272447
#print axioms cover_2272363

def state_2277284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277284 := by
  apply coveredState_split_literal (state := state_2277284) 4
    state_2277285 state_2277762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277285
  · exact cover_2277762
#print axioms cover_2277284

def state_2277283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277283 := by
  apply coveredState_split_literal (state := state_2277283) 1
    state_2277284 state_2278563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277284
  · exact cover_2278563
#print axioms cover_2277283

def state_2277259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2277259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277259 := by
  apply coveredState_split_literal (state := state_2277259) 3
    state_2277260 state_2277283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277260
  · exact cover_2277283
#print axioms cover_2277259

def state_2277143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2277143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277143 := by
  apply coveredState_split_literal (state := state_2277143) 0
    state_2277144 state_2277259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277144
  · exact cover_2277259
#print axioms cover_2277143

def state_2277097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
theorem cover_2277097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277097 := by
  apply coveredState_split_literal (state := state_2277097) 2
    state_2277098 state_2277143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277098
  · exact cover_2277143
#print axioms cover_2277097

def state_2276817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2276817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276817 := by
  apply coveredState_split_literal (state := state_2276817) 4
    state_2276818 state_2277097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276818
  · exact cover_2277097
#print axioms cover_2276817

def state_2276816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2276816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276816 := by
  apply coveredState_split_literal (state := state_2276816) 1
    state_2276817 state_2278614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276817
  · exact cover_2278614
#print axioms cover_2276816

def state_2280676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
theorem cover_2280676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280676 := by
  apply coveredState_split_literal (state := state_2280676) 0
    state_2280677 state_2281660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280677
  · exact cover_2281660
#print axioms cover_2280676

def state_2280675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
theorem cover_2280675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280675 := by
  apply coveredState_split_literal (state := state_2280675) 3
    state_2280676 state_2282007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280676
  · exact cover_2282007
#print axioms cover_2280675

def state_2280221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2280221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280221 := by
  apply coveredState_split_literal (state := state_2280221) 2
    state_2280222 state_2280675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280222
  · exact cover_2280675
#print axioms cover_2280221

def state_2283139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
theorem cover_2283139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283139 := by
  apply coveredState_split_literal (state := state_2283139) 0
    state_2283140 state_2283795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283140
  · exact cover_2283795
#print axioms cover_2283139

def state_2283138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
theorem cover_2283138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283138 := by
  apply coveredState_split_literal (state := state_2283138) 3
    state_2283139 state_2284414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283139
  · exact cover_2284414
#print axioms cover_2283138

def state_2282748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2282748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282748 := by
  apply coveredState_split_literal (state := state_2282748) 2
    state_2282749 state_2283138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282749
  · exact cover_2283138
#print axioms cover_2282748

def state_2282747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282747 := by
  apply coveredState_split_literal (state := state_2282747) 4
    state_2282748 state_2284601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282748
  · exact cover_2284601
#print axioms cover_2282747

def state_2282531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282531 := by
  apply coveredState_split_literal (state := state_2282531) 1
    state_2282532 state_2282747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282532
  · exact cover_2282747
#print axioms cover_2282531

def state_2282177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282177 := by
  apply coveredState_split_literal (state := state_2282177) 0
    state_2282178 state_2282531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282178
  · exact cover_2282531
#print axioms cover_2282177

def state_2282176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
theorem cover_2282176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282176 := by
  apply coveredState_split_literal (state := state_2282176) 3
    state_2282177 state_2285520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282177
  · exact cover_2285520
#print axioms cover_2282176

def state_2282102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
theorem cover_2282102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282102 := by
  apply coveredState_split_literal (state := state_2282102) 2
    state_2282103 state_2282176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282103
  · exact cover_2282176
#print axioms cover_2282102

def state_2280220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2280220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280220 := by
  apply coveredState_split_literal (state := state_2280220) 4
    state_2280221 state_2282102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280221
  · exact cover_2282102
#print axioms cover_2280220

def state_2280219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2280219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280219 := by
  apply coveredState_split_literal (state := state_2280219) 1
    state_2280220 state_2285611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280220
  · exact cover_2285611
#print axioms cover_2280219

def state_2279673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
theorem cover_2279673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279673 := by
  apply coveredState_split_literal (state := state_2279673) 0
    state_2279674 state_2280219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2279674
  · exact cover_2280219
#print axioms cover_2279673
end Mub6.Numerical.CircleFullD0.Forest
