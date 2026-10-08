import CircleFullInterface
import CircleForestChunk0242
import CircleForestChunk0243
import CircleForestChunk0244
import CircleForestChunk0245
import CircleForestChunk0246
import CircleForestChunk0247
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_133503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_133503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133503 := by
  apply coveredState_split_literal (state := state_133503) 0
    state_133504 state_133545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133504
  · exact cover_133545
#print axioms cover_133503

def state_133502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_133502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133502 := by
  apply coveredState_split_literal (state := state_133502) 4
    state_133503 state_133586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133503
  · exact cover_133586
#print axioms cover_133502

def state_133501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_133501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133501 := by
  apply coveredState_split_literal (state := state_133501) 3
    state_133502 state_133613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133502
  · exact cover_133613
#print axioms cover_133501

def state_133643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
theorem cover_133643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133643 := by
  apply coveredState_split_literal (state := state_133643) 3
    state_133644 state_133677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133644
  · exact cover_133677
#print axioms cover_133643

def state_133642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_133642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133642 := by
  apply coveredState_split_literal (state := state_133642) 4
    state_133643 state_133732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133643
  · exact cover_133732
#print axioms cover_133642

def state_133641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_133641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133641 := by
  apply coveredState_split_literal (state := state_133641) 3
    state_133642 state_133739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133642
  · exact cover_133739
#print axioms cover_133641

def state_133640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133640 := by
  apply coveredState_split_literal (state := state_133640) 2
    state_133641 state_133786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133641
  · exact cover_133786
#print axioms cover_133640

def state_133807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133807 := by
  apply coveredState_split_literal (state := state_133807) 2
    state_133808 state_133833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133808
  · exact cover_133833
#print axioms cover_133807

def state_133639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133639 := by
  apply coveredState_split_literal (state := state_133639) 1
    state_133640 state_133807
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133640
  · exact cover_133807
#print axioms cover_133639

def state_133879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_133879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133879 := by
  apply coveredState_split_literal (state := state_133879) 4
    state_133880 state_133931
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133880
  · exact cover_133931
#print axioms cover_133879

def state_134021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 13)))
theorem cover_134021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134021 := by
  apply coveredState_split_literal (state := state_134021) 3
    state_134022 state_134079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134022
  · exact cover_134079
#print axioms cover_134021

def state_134009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_134009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134009 := by
  apply coveredState_split_literal (state := state_134009) 2
    state_134010 state_134021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134010
  · exact cover_134021
#print axioms cover_134009

def state_133993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_133993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133993 := by
  apply coveredState_split_literal (state := state_133993) 1
    state_133994 state_134009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133994
  · exact cover_134009
#print axioms cover_133993

def state_133992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_133992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133992 := by
  apply coveredState_split_literal (state := state_133992) 0
    state_133993 state_134092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133993
  · exact cover_134092
#print axioms cover_133992

def state_133960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_133960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133960 := by
  apply coveredState_split_literal (state := state_133960) 4
    state_133961 state_133992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133961
  · exact cover_133992
#print axioms cover_133960

def state_133878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_133878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133878 := by
  apply coveredState_split_literal (state := state_133878) 3
    state_133879 state_133960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133879
  · exact cover_133960
#print axioms cover_133878

def state_134230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_134230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134230 := by
  apply coveredState_split_literal (state := state_134230) 3
    state_134231 state_134256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134231
  · exact cover_134256
#print axioms cover_134230

def state_134224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_134224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134224 := by
  apply coveredState_split_literal (state := state_134224) 1
    state_134225 state_134230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134225
  · exact cover_134230
#print axioms cover_134224

def state_134223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134223 := by
  apply coveredState_split_literal (state := state_134223) 2
    state_134224 state_134305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134224
  · exact cover_134305
#print axioms cover_134223

def state_134191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134191 := by
  apply coveredState_split_literal (state := state_134191) 0
    state_134192 state_134223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134192
  · exact cover_134223
#print axioms cover_134191

def state_134169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_134169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134169 := by
  apply coveredState_split_literal (state := state_134169) 4
    state_134170 state_134191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134170
  · exact cover_134191
#print axioms cover_134169

def state_134131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_134131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134131 := by
  apply coveredState_split_literal (state := state_134131) 3
    state_134132 state_134169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134132
  · exact cover_134169
#print axioms cover_134131

def state_133877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133877 := by
  apply coveredState_split_literal (state := state_133877) 2
    state_133878 state_134131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133878
  · exact cover_134131
#print axioms cover_133877

def state_134414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 13)))
theorem cover_134414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134414 := by
  apply coveredState_split_literal (state := state_134414) 3
    state_134415 state_134460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134415
  · exact cover_134460
#print axioms cover_134414

def state_134408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_134408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134408 := by
  apply coveredState_split_literal (state := state_134408) 2
    state_134409 state_134414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134409
  · exact cover_134414
#print axioms cover_134408

def state_134407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_134407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134407 := by
  apply coveredState_split_literal (state := state_134407) 1
    state_134408 state_134491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134408
  · exact cover_134491
#print axioms cover_134407

def state_134373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_134373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134373 := by
  apply coveredState_split_literal (state := state_134373) 0
    state_134374 state_134407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134374
  · exact cover_134407
#print axioms cover_134373

def state_134371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_134371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134371 := by
  apply coveredState_split_literal (state := state_134371) 4
    state_134372 state_134373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134372
  · exact cover_134373
#print axioms cover_134371

def state_134315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_134315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134315 := by
  apply coveredState_split_literal (state := state_134315) 3
    state_134316 state_134371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134316
  · exact cover_134371
#print axioms cover_134315

def state_134559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
theorem cover_134559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134559 := by
  apply coveredState_split_literal (state := state_134559) 0
    state_134560 state_134579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134560
  · exact cover_134579
#print axioms cover_134559

def state_134503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
theorem cover_134503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134503 := by
  apply coveredState_split_literal (state := state_134503) 4
    state_134504 state_134559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134504
  · exact cover_134559
#print axioms cover_134503

def state_134629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
theorem cover_134629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134629 := by
  apply coveredState_split_literal (state := state_134629) 0
    state_134630 state_134649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134630
  · exact cover_134649
#print axioms cover_134629
end Mub6.Numerical.CircleFullPrototype.Forest
