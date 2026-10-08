import CircleFullInterface
import CircleForestAssembly0065
import CircleForestChunk0262
import CircleForestChunk0263
import CircleForestChunk0264
import CircleForestChunk0265
import CircleForestChunk0266
import CircleForestChunk0267
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_137443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_137443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137443 := by
  apply coveredState_split_literal (state := state_137443) 3
    state_137444 state_137797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_137444
  · exact cover_137797
#print axioms cover_137443

def state_132169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_132169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132169 := by
  apply coveredState_split_literal (state := state_132169) 2
    state_132170 state_137443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132170
  · exact cover_137443
#print axioms cover_132169

def state_138311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_138311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138311 := by
  apply coveredState_split_literal (state := state_138311) 2
    state_138312 state_138343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138312
  · exact cover_138343
#print axioms cover_138311

def state_138310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_138310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138310 := by
  apply coveredState_split_literal (state := state_138310) 1
    state_138311 state_138386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138311
  · exact cover_138386
#print axioms cover_138310

def state_138309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_138309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138309 := by
  apply coveredState_split_literal (state := state_138309) 0
    state_138310 state_138409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138310
  · exact cover_138409
#print axioms cover_138309

def state_138569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_138569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138569 := by
  apply coveredState_split_literal (state := state_138569) 3
    state_138570 state_138627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138570
  · exact cover_138627
#print axioms cover_138569

def state_138523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_138523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138523 := by
  apply coveredState_split_literal (state := state_138523) 2
    state_138524 state_138569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138524
  · exact cover_138569
#print axioms cover_138523

def state_138682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_138682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138682 := by
  apply coveredState_split_literal (state := state_138682) 2
    state_138683 state_138726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138683
  · exact cover_138726
#print axioms cover_138682

def state_138522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_138522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138522 := by
  apply coveredState_split_literal (state := state_138522) 1
    state_138523 state_138682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138523
  · exact cover_138682
#print axioms cover_138522

def state_138460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_138460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138460 := by
  apply coveredState_split_literal (state := state_138460) 0
    state_138461 state_138522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138461
  · exact cover_138522
#print axioms cover_138460

def state_138308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_138308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138308 := by
  apply coveredState_split_literal (state := state_138308) 4
    state_138309 state_138460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138309
  · exact cover_138460
#print axioms cover_138308

def state_138787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_138787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138787 := by
  apply coveredState_split_literal (state := state_138787) 1
    state_138788 state_138815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138788
  · exact cover_138815
#print axioms cover_138787

def state_138855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_138855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138855 := by
  apply coveredState_split_literal (state := state_138855) 2
    state_138856 state_138885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138856
  · exact cover_138885
#print axioms cover_138855

def state_138854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_138854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138854 := by
  apply coveredState_split_literal (state := state_138854) 1
    state_138855 state_138936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138855
  · exact cover_138936
#print axioms cover_138854

def state_138786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_138786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138786 := by
  apply coveredState_split_literal (state := state_138786) 0
    state_138787 state_138854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138787
  · exact cover_138854
#print axioms cover_138786

def state_139047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_139047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139047 := by
  apply coveredState_split_literal (state := state_139047) 2
    state_139048 state_139057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139048
  · exact cover_139057
#print axioms cover_139047

def state_139046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_139046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139046 := by
  apply coveredState_split_literal (state := state_139046) 1
    state_139047 state_139116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139047
  · exact cover_139116
#print axioms cover_139046

def state_139026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_139026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139026 := by
  apply coveredState_split_literal (state := state_139026) 0
    state_139027 state_139046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139027
  · exact cover_139046
#print axioms cover_139026

def state_139025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_139025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139025 := by
  apply coveredState_split_literal (state := state_139025) 4
    state_139026 state_139127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139026
  · exact cover_139127
#print axioms cover_139025

def state_139024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_139024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139024 := by
  apply coveredState_split_literal (state := state_139024) 3
    state_139025 state_139128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139025
  · exact cover_139128
#print axioms cover_139024

def state_139012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_139012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139012 := by
  apply coveredState_split_literal (state := state_139012) 2
    state_139013 state_139024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139013
  · exact cover_139024
#print axioms cover_139012

def state_139011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_139011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139011 := by
  apply coveredState_split_literal (state := state_139011) 1
    state_139012 state_139181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139012
  · exact cover_139181
#print axioms cover_139011

def state_138997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_138997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138997 := by
  apply coveredState_split_literal (state := state_138997) 0
    state_138998 state_139011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138998
  · exact cover_139011
#print axioms cover_138997

def state_138785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_138785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138785 := by
  apply coveredState_split_literal (state := state_138785) 4
    state_138786 state_138997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138786
  · exact cover_138997
#print axioms cover_138785

def state_138307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_138307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_138307 := by
  apply coveredState_split_literal (state := state_138307) 3
    state_138308 state_138785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_138308
  · exact cover_138785
#print axioms cover_138307

def state_139196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_139196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139196 := by
  apply coveredState_split_literal (state := state_139196) 0
    state_139197 state_139240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139197
  · exact cover_139240
#print axioms cover_139196

def state_139361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_139361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139361 := by
  apply coveredState_split_literal (state := state_139361) 2
    state_139362 state_139421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139362
  · exact cover_139421
#print axioms cover_139361

def state_139360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_139360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139360 := by
  apply coveredState_split_literal (state := state_139360) 4
    state_139361 state_139430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139361
  · exact cover_139430
#print axioms cover_139360

def state_139359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_139359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139359 := by
  apply coveredState_split_literal (state := state_139359) 3
    state_139360 state_139439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139360
  · exact cover_139439
#print axioms cover_139359

def state_139358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139358 := by
  apply coveredState_split_literal (state := state_139358) 2
    state_139359 state_139458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139359
  · exact cover_139458
#print axioms cover_139358

def state_139296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139296 := by
  apply coveredState_split_literal (state := state_139296) 1
    state_139297 state_139358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139297
  · exact cover_139358
#print axioms cover_139296

def state_139480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_139480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139480 := by
  apply coveredState_split_literal (state := state_139480) 1
    state_139481 state_139506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139481
  · exact cover_139506
#print axioms cover_139480
end Mub6.Numerical.CircleFullPrototype.Forest
