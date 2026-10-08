import CircleFullInterface
import CircleForestAssembly0166
import CircleForestAssembly0168
import CircleForestChunk0659
import CircleForestChunk0660
import CircleForestChunk0661
import CircleForestChunk0662
import CircleForestChunk0663
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_763833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_763833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763833 := by
  apply coveredState_split_literal (state := state_763833) 4
    state_763834 state_763897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763834
  · exact cover_763897
#print axioms cover_763833

def state_763123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_763123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763123 := by
  apply coveredState_split_literal (state := state_763123) 3
    state_763124 state_763833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_763124
  · exact cover_763833
#print axioms cover_763123

def state_761619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_761619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761619 := by
  apply coveredState_split_literal (state := state_761619) 2
    state_761620 state_763123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761620
  · exact cover_763123
#print axioms cover_761619

def state_759585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_759585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759585 := by
  apply coveredState_split_literal (state := state_759585) 1
    state_759586 state_761619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_759586
  · exact cover_761619
#print axioms cover_759585

def state_764023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_764023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764023 := by
  apply coveredState_split_literal (state := state_764023) 1
    state_764024 state_764071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764024
  · exact cover_764071
#print axioms cover_764023

def state_764022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_764022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764022 := by
  apply coveredState_split_literal (state := state_764022) 0
    state_764023 state_764102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764023
  · exact cover_764102
#print axioms cover_764022

def state_764140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_764140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764140 := by
  apply coveredState_split_literal (state := state_764140) 3
    state_764141 state_764200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764141
  · exact cover_764200
#print axioms cover_764140

def state_764139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764139 := by
  apply coveredState_split_literal (state := state_764139) 2
    state_764140 state_764209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764140
  · exact cover_764209
#print axioms cover_764139

def state_764286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 13)))
theorem cover_764286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764286 := by
  apply coveredState_split_literal (state := state_764286) 0
    state_764287 state_764338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764287
  · exact cover_764338
#print axioms cover_764286

def state_764285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 4 else 13)))
theorem cover_764285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764285 := by
  apply coveredState_split_literal (state := state_764285) 3
    state_764286 state_764353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764286
  · exact cover_764353
#print axioms cover_764285

def state_764284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 13)))
theorem cover_764284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764284 := by
  apply coveredState_split_literal (state := state_764284) 2
    state_764285 state_764370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764285
  · exact cover_764370
#print axioms cover_764284

def state_764262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_764262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764262 := by
  apply coveredState_split_literal (state := state_764262) 4
    state_764263 state_764284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764263
  · exact cover_764284
#print axioms cover_764262

def state_764395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 13)))
theorem cover_764395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764395 := by
  apply coveredState_split_literal (state := state_764395) 2
    state_764396 state_764449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764396
  · exact cover_764449
#print axioms cover_764395

def state_764389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_764389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764389 := by
  apply coveredState_split_literal (state := state_764389) 4
    state_764390 state_764395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764390
  · exact cover_764395
#print axioms cover_764389

def state_764261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_764261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764261 := by
  apply coveredState_split_literal (state := state_764261) 1
    state_764262 state_764389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764262
  · exact cover_764389
#print axioms cover_764261

def state_764235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_764235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764235 := by
  apply coveredState_split_literal (state := state_764235) 0
    state_764236 state_764261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764236
  · exact cover_764261
#print axioms cover_764235

def state_764468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 7)))
theorem cover_764468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764468 := by
  apply coveredState_split_literal (state := state_764468) 0
    state_764469 state_764492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764469
  · exact cover_764492
#print axioms cover_764468

def state_764234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
theorem cover_764234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764234 := by
  apply coveredState_split_literal (state := state_764234) 4
    state_764235 state_764468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764235
  · exact cover_764468
#print axioms cover_764234

def state_764233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_764233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764233 := by
  apply coveredState_split_literal (state := state_764233) 3
    state_764234 state_764537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764234
  · exact cover_764537
#print axioms cover_764233

def state_764232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764232 := by
  apply coveredState_split_literal (state := state_764232) 2
    state_764233 state_764562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764233
  · exact cover_764562
#print axioms cover_764232

def state_764138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764138 := by
  apply coveredState_split_literal (state := state_764138) 1
    state_764139 state_764232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764139
  · exact cover_764232
#print axioms cover_764138

def state_764610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
theorem cover_764610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764610 := by
  apply coveredState_split_literal (state := state_764610) 1
    state_764611 state_764632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764611
  · exact cover_764632
#print axioms cover_764610

def state_764609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
theorem cover_764609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764609 := by
  apply coveredState_split_literal (state := state_764609) 4
    state_764610 state_764689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764610
  · exact cover_764689
#print axioms cover_764609

def state_764608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_764608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764608 := by
  apply coveredState_split_literal (state := state_764608) 3
    state_764609 state_764714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764609
  · exact cover_764714
#print axioms cover_764608

def state_764607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764607 := by
  apply coveredState_split_literal (state := state_764607) 2
    state_764608 state_764739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764608
  · exact cover_764739
#print axioms cover_764607

def state_764589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764589 := by
  apply coveredState_split_literal (state := state_764589) 1
    state_764590 state_764607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764590
  · exact cover_764607
#print axioms cover_764589

def state_764137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_764137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764137 := by
  apply coveredState_split_literal (state := state_764137) 0
    state_764138 state_764589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764138
  · exact cover_764589
#print axioms cover_764137

def state_764021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_764021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764021 := by
  apply coveredState_split_literal (state := state_764021) 4
    state_764022 state_764137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764022
  · exact cover_764137
#print axioms cover_764021

def state_764790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_764790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764790 := by
  apply coveredState_split_literal (state := state_764790) 3
    state_764791 state_764852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764791
  · exact cover_764852
#print axioms cover_764790

def state_764912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 8)))
theorem cover_764912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764912 := by
  apply coveredState_split_literal (state := state_764912) 0
    state_764913 state_764964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764913
  · exact cover_764964
#print axioms cover_764912

def state_764911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 4)))
theorem cover_764911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764911 := by
  apply coveredState_split_literal (state := state_764911) 4
    state_764912 state_764979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764912
  · exact cover_764979
#print axioms cover_764911

def state_764910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 4)))
theorem cover_764910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764910 := by
  apply coveredState_split_literal (state := state_764910) 1
    state_764911 state_764996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_764911
  · exact cover_764996
#print axioms cover_764910
end Mub6.Numerical.CircleFullPrototype.Forest
