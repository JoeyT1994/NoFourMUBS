import D0FullInterface
import D0ForestAssembly0146
import D0ForestChunk0562
import D0ForestChunk0563
import D0ForestChunk0564
import D0ForestChunk0565
import D0ForestChunk0566
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1323858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_1323858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323858 := by
  apply coveredState_split_literal (state := state_1323858) 3
    state_1323859 state_1323960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323859
  · exact cover_1323960
#print axioms cover_1323858

def state_1323857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_1323857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323857 := by
  apply coveredState_split_literal (state := state_1323857) 0
    state_1323858 state_1323971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323858
  · exact cover_1323971
#print axioms cover_1323857

def state_1323697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_1323697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323697 := by
  apply coveredState_split_literal (state := state_1323697) 4
    state_1323698 state_1323857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323698
  · exact cover_1323857
#print axioms cover_1323697

def state_1324024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
theorem cover_1324024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324024 := by
  apply coveredState_split_literal (state := state_1324024) 3
    state_1324025 state_1324084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324025
  · exact cover_1324084
#print axioms cover_1324024

def state_1324023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
theorem cover_1324023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324023 := by
  apply coveredState_split_literal (state := state_1324023) 0
    state_1324024 state_1324101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324024
  · exact cover_1324101
#print axioms cover_1324023

def state_1324022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 51)))
theorem cover_1324022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324022 := by
  apply coveredState_split_literal (state := state_1324022) 2
    state_1324023 state_1324122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324023
  · exact cover_1324122
#print axioms cover_1324022

def state_1324021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 51)))
theorem cover_1324021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324021 := by
  apply coveredState_split_literal (state := state_1324021) 1
    state_1324022 state_1324133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324022
  · exact cover_1324133
#print axioms cover_1324021

def state_1324015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 25)))
theorem cover_1324015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324015 := by
  apply coveredState_split_literal (state := state_1324015) 4
    state_1324016 state_1324021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324016
  · exact cover_1324021
#print axioms cover_1324015

def state_1324014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
theorem cover_1324014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324014 := by
  apply coveredState_split_literal (state := state_1324014) 3
    state_1324015 state_1324146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324015
  · exact cover_1324146
#print axioms cover_1324014

def state_1324013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 25)))
theorem cover_1324013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324013 := by
  apply coveredState_split_literal (state := state_1324013) 0
    state_1324014 state_1324155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324014
  · exact cover_1324155
#print axioms cover_1324013

def state_1324012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 25)))
theorem cover_1324012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324012 := by
  apply coveredState_split_literal (state := state_1324012) 2
    state_1324013 state_1324166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324013
  · exact cover_1324166
#print axioms cover_1324012

def state_1324011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 25)))
theorem cover_1324011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324011 := by
  apply coveredState_split_literal (state := state_1324011) 1
    state_1324012 state_1324177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324012
  · exact cover_1324177
#print axioms cover_1324011

def state_1324003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
theorem cover_1324003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324003 := by
  apply coveredState_split_literal (state := state_1324003) 4
    state_1324004 state_1324011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324004
  · exact cover_1324011
#print axioms cover_1324003

def state_1324002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_1324002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324002 := by
  apply coveredState_split_literal (state := state_1324002) 3
    state_1324003 state_1324194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324003
  · exact cover_1324194
#print axioms cover_1324002

def state_1324001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
theorem cover_1324001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324001 := by
  apply coveredState_split_literal (state := state_1324001) 0
    state_1324002 state_1324203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324002
  · exact cover_1324203
#print axioms cover_1324001

def state_1324228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 32 else 52)))
theorem cover_1324228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324228 := by
  apply coveredState_split_literal (state := state_1324228) 4
    state_1324229 state_1324288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324229
  · exact cover_1324288
#print axioms cover_1324228

def state_1324227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 52)))
theorem cover_1324227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324227 := by
  apply coveredState_split_literal (state := state_1324227) 2
    state_1324228 state_1324299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324228
  · exact cover_1324299
#print axioms cover_1324227

def state_1324226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 52)))
theorem cover_1324226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324226 := by
  apply coveredState_split_literal (state := state_1324226) 1
    state_1324227 state_1324308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324227
  · exact cover_1324308
#print axioms cover_1324226

def state_1324225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 52)))
theorem cover_1324225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324225 := by
  apply coveredState_split_literal (state := state_1324225) 3
    state_1324226 state_1324339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324226
  · exact cover_1324339
#print axioms cover_1324225

def state_1324362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 52)))
theorem cover_1324362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324362 := by
  apply coveredState_split_literal (state := state_1324362) 3
    state_1324363 state_1324384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324363
  · exact cover_1324384
#print axioms cover_1324362

def state_1324224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 52)))
theorem cover_1324224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324224 := by
  apply coveredState_split_literal (state := state_1324224) 0
    state_1324225 state_1324362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324225
  · exact cover_1324362
#print axioms cover_1324224

def state_1324223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 26)))
theorem cover_1324223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324223 := by
  apply coveredState_split_literal (state := state_1324223) 4
    state_1324224 state_1324433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324224
  · exact cover_1324433
#print axioms cover_1324223

def state_1324222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
theorem cover_1324222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324222 := by
  apply coveredState_split_literal (state := state_1324222) 2
    state_1324223 state_1324444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324223
  · exact cover_1324444
#print axioms cover_1324222

def state_1324221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
theorem cover_1324221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324221 := by
  apply coveredState_split_literal (state := state_1324221) 1
    state_1324222 state_1324461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324222
  · exact cover_1324461
#print axioms cover_1324221

def state_1324220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_1324220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324220 := by
  apply coveredState_split_literal (state := state_1324220) 3
    state_1324221 state_1324504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324221
  · exact cover_1324504
#print axioms cover_1324220

def state_1324219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
theorem cover_1324219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324219 := by
  apply coveredState_split_literal (state := state_1324219) 0
    state_1324220 state_1324533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324220
  · exact cover_1324533
#print axioms cover_1324219

def state_1324218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_1324218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324218 := by
  apply coveredState_split_literal (state := state_1324218) 4
    state_1324219 state_1324594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324219
  · exact cover_1324594
#print axioms cover_1324218

def state_1324217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1324217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324217 := by
  apply coveredState_split_literal (state := state_1324217) 2
    state_1324218 state_1324611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324218
  · exact cover_1324611
#print axioms cover_1324217

def state_1324638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1324638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324638 := by
  apply coveredState_split_literal (state := state_1324638) 2
    state_1324639 state_1324666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324639
  · exact cover_1324666
#print axioms cover_1324638

def state_1324216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_1324216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324216 := by
  apply coveredState_split_literal (state := state_1324216) 1
    state_1324217 state_1324638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324217
  · exact cover_1324638
#print axioms cover_1324216

def state_1324215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1324215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324215 := by
  apply coveredState_split_literal (state := state_1324215) 3
    state_1324216 state_1324709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324216
  · exact cover_1324709
#print axioms cover_1324215

def state_1324772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1324772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324772 := by
  apply coveredState_split_literal (state := state_1324772) 3
    state_1324773 state_1324834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324773
  · exact cover_1324834
#print axioms cover_1324772
end Mub6.Numerical.CircleFullD0.Forest
