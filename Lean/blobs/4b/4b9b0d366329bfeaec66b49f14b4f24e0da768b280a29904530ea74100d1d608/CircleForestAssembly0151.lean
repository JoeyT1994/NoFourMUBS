import CircleFullInterface
import CircleForestAssembly0150
import CircleForestChunk0589
import CircleForestChunk0590
import CircleForestChunk0591
import CircleForestChunk0592
import CircleForestChunk0593
import CircleForestChunk0594
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_380320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_380320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380320 := by
  apply coveredState_split_literal (state := state_380320) 2
    state_380321 state_380396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380321
  · exact cover_380396
#print axioms cover_380320

def state_380319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_380319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380319 := by
  apply coveredState_split_literal (state := state_380319) 1
    state_380320 state_380419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380320
  · exact cover_380419
#print axioms cover_380319

def state_380318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_380318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380318 := by
  apply coveredState_split_literal (state := state_380318) 4
    state_380319 state_380420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380319
  · exact cover_380420
#print axioms cover_380318

def state_380317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_380317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380317 := by
  apply coveredState_split_literal (state := state_380317) 3
    state_380318 state_380461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380318
  · exact cover_380461
#print axioms cover_380317

def state_380165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380165 := by
  apply coveredState_split_literal (state := state_380165) 2
    state_380166 state_380317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380166
  · exact cover_380317
#print axioms cover_380165

def state_380164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380164 := by
  apply coveredState_split_literal (state := state_380164) 1
    state_380165 state_380478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380165
  · exact cover_380478
#print axioms cover_380164

def state_380487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_380487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380487 := by
  apply coveredState_split_literal (state := state_380487) 3
    state_380488 state_380509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380488
  · exact cover_380509
#print axioms cover_380487

def state_380561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_380561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380561 := by
  apply coveredState_split_literal (state := state_380561) 1
    state_380562 state_380619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380562
  · exact cover_380619
#print axioms cover_380561

def state_380560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
theorem cover_380560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380560 := by
  apply coveredState_split_literal (state := state_380560) 0
    state_380561 state_380680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380561
  · exact cover_380680
#print axioms cover_380560

def state_380559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_380559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380559 := by
  apply coveredState_split_literal (state := state_380559) 4
    state_380560 state_380725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380560
  · exact cover_380725
#print axioms cover_380559

def state_380780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_380780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380780 := by
  apply coveredState_split_literal (state := state_380780) 3
    state_380781 state_380802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380781
  · exact cover_380802
#print axioms cover_380780

def state_380779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_380779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380779 := by
  apply coveredState_split_literal (state := state_380779) 1
    state_380780 state_380857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380780
  · exact cover_380857
#print axioms cover_380779

def state_380778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_380778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380778 := by
  apply coveredState_split_literal (state := state_380778) 4
    state_380779 state_380866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380779
  · exact cover_380866
#print axioms cover_380778

def state_380760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_380760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380760 := by
  apply coveredState_split_literal (state := state_380760) 3
    state_380761 state_380778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380761
  · exact cover_380778
#print axioms cover_380760

def state_380759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_380759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380759 := by
  apply coveredState_split_literal (state := state_380759) 2
    state_380760 state_380873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380760
  · exact cover_380873
#print axioms cover_380759

def state_380758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_380758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380758 := by
  apply coveredState_split_literal (state := state_380758) 1
    state_380759 state_380908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380759
  · exact cover_380908
#print axioms cover_380758

def state_380757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_380757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380757 := by
  apply coveredState_split_literal (state := state_380757) 0
    state_380758 state_380909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380758
  · exact cover_380909
#print axioms cover_380757

def state_380756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_380756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380756 := by
  apply coveredState_split_literal (state := state_380756) 4
    state_380757 state_380944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380757
  · exact cover_380944
#print axioms cover_380756

def state_380558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_380558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380558 := by
  apply coveredState_split_literal (state := state_380558) 3
    state_380559 state_380756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380559
  · exact cover_380756
#print axioms cover_380558

def state_380486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380486 := by
  apply coveredState_split_literal (state := state_380486) 2
    state_380487 state_380558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380487
  · exact cover_380558
#print axioms cover_380486

def state_380951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380951 := by
  apply coveredState_split_literal (state := state_380951) 2
    state_380952 state_380975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380952
  · exact cover_380975
#print axioms cover_380951

def state_380485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380485 := by
  apply coveredState_split_literal (state := state_380485) 1
    state_380486 state_380951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380486
  · exact cover_380951
#print axioms cover_380485

def state_380163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_380163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380163 := by
  apply coveredState_split_literal (state := state_380163) 0
    state_380164 state_380485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_380164
  · exact cover_380485
#print axioms cover_380163

def state_379599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_379599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379599 := by
  apply coveredState_split_literal (state := state_379599) 4
    state_379600 state_380163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379600
  · exact cover_380163
#print axioms cover_379599

def state_381249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_381249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381249 := by
  apply coveredState_split_literal (state := state_381249) 3
    state_381250 state_381277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381250
  · exact cover_381277
#print axioms cover_381249

def state_381241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_381241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381241 := by
  apply coveredState_split_literal (state := state_381241) 2
    state_381242 state_381249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381242
  · exact cover_381249
#print axioms cover_381241

def state_381179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_381179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381179 := by
  apply coveredState_split_literal (state := state_381179) 1
    state_381180 state_381241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381180
  · exact cover_381241
#print axioms cover_381179

def state_381143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_381143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381143 := by
  apply coveredState_split_literal (state := state_381143) 0
    state_381144 state_381179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381144
  · exact cover_381179
#print axioms cover_381143

def state_381105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_381105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381105 := by
  apply coveredState_split_literal (state := state_381105) 4
    state_381106 state_381143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381106
  · exact cover_381143
#print axioms cover_381105

def state_381104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_381104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381104 := by
  apply coveredState_split_literal (state := state_381104) 3
    state_381105 state_381340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381105
  · exact cover_381340
#print axioms cover_381104

def state_381078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_381078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381078 := by
  apply coveredState_split_literal (state := state_381078) 2
    state_381079 state_381104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381079
  · exact cover_381104
#print axioms cover_381078

def state_381393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_381393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381393 := by
  apply coveredState_split_literal (state := state_381393) 3
    state_381394 state_381433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381394
  · exact cover_381433
#print axioms cover_381393
end Mub6.Numerical.CircleFullPrototype.Forest
