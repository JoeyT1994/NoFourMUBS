import CircleFullInterface
import CircleForestAssembly0378
import CircleForestChunk1473
import CircleForestChunk1477
import CircleForestChunk1478
import CircleForestChunk1479
import CircleForestChunk1480
import CircleForestChunk1481
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1654563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 41)))
theorem cover_1654563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654563 := by
  apply coveredState_split_literal (state := state_1654563) 2
    state_1654564 state_1654747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654564
  · exact cover_1654747
#print axioms cover_1654563

def state_1654375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 20)))
theorem cover_1654375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654375 := by
  apply coveredState_split_literal (state := state_1654375) 4
    state_1654376 state_1654563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654376
  · exact cover_1654563
#print axioms cover_1654375

def state_1654374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1654374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654374 := by
  apply coveredState_split_literal (state := state_1654374) 3
    state_1654375 state_1655212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654375
  · exact cover_1655212
#print axioms cover_1654374

def state_1654373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1654373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654373 := by
  apply coveredState_split_literal (state := state_1654373) 0
    state_1654374 state_1655255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654374
  · exact cover_1655255
#print axioms cover_1654373

def state_1654337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1654337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654337 := by
  apply coveredState_split_literal (state := state_1654337) 1
    state_1654338 state_1654373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654338
  · exact cover_1654373
#print axioms cover_1654337

def state_1655348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
theorem cover_1655348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655348 := by
  apply coveredState_split_literal (state := state_1655348) 0
    state_1655349 state_1655380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655349
  · exact cover_1655380
#print axioms cover_1655348

def state_1655334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 40)))
theorem cover_1655334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655334 := by
  apply coveredState_split_literal (state := state_1655334) 1
    state_1655335 state_1655348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655335
  · exact cover_1655348
#print axioms cover_1655334

def state_1655333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 40)))
theorem cover_1655333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655333 := by
  apply coveredState_split_literal (state := state_1655333) 2
    state_1655334 state_1655441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655334
  · exact cover_1655441
#print axioms cover_1655333

def state_1655511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 41)))
theorem cover_1655511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655511 := by
  apply coveredState_split_literal (state := state_1655511) 0
    state_1655512 state_1655569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655512
  · exact cover_1655569
#print axioms cover_1655511

def state_1655479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 62 else (if j.val < 4 then 52 else 41)))
theorem cover_1655479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655479 := by
  apply coveredState_split_literal (state := state_1655479) 1
    state_1655480 state_1655511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655480
  · exact cover_1655511
#print axioms cover_1655479

def state_1655478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 41)))
theorem cover_1655478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655478 := by
  apply coveredState_split_literal (state := state_1655478) 2
    state_1655479 state_1655614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655479
  · exact cover_1655614
#print axioms cover_1655478

def state_1655332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 20)))
theorem cover_1655332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655332 := by
  apply coveredState_split_literal (state := state_1655332) 4
    state_1655333 state_1655478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655333
  · exact cover_1655478
#print axioms cover_1655332

def state_1655331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1655331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655331 := by
  apply coveredState_split_literal (state := state_1655331) 3
    state_1655332 state_1655647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655332
  · exact cover_1655647
#print axioms cover_1655331

def state_1655674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 40)))
theorem cover_1655674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655674 := by
  apply coveredState_split_literal (state := state_1655674) 2
    state_1655675 state_1655688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655675
  · exact cover_1655688
#print axioms cover_1655674

def state_1655673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 52 else 20)))
theorem cover_1655673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655673 := by
  apply coveredState_split_literal (state := state_1655673) 4
    state_1655674 state_1655745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655674
  · exact cover_1655745
#print axioms cover_1655673

def state_1655672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1655672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655672 := by
  apply coveredState_split_literal (state := state_1655672) 3
    state_1655673 state_1655782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655673
  · exact cover_1655782
#print axioms cover_1655672

def state_1655330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1655330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655330 := by
  apply coveredState_split_literal (state := state_1655330) 0
    state_1655331 state_1655672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655331
  · exact cover_1655672
#print axioms cover_1655330

def state_1655282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
theorem cover_1655282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655282 := by
  apply coveredState_split_literal (state := state_1655282) 1
    state_1655283 state_1655330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655283
  · exact cover_1655330
#print axioms cover_1655282

def state_1654336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 20)))
theorem cover_1654336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654336 := by
  apply coveredState_split_literal (state := state_1654336) 2
    state_1654337 state_1655282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654337
  · exact cover_1655282
#print axioms cover_1654336

def state_1655826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1655826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655826 := by
  apply coveredState_split_literal (state := state_1655826) 3
    state_1655827 state_1655850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655827
  · exact cover_1655850
#print axioms cover_1655826

def state_1655825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1655825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655825 := by
  apply coveredState_split_literal (state := state_1655825) 0
    state_1655826 state_1655891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655826
  · exact cover_1655891
#print axioms cover_1655825

def state_1655899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 42)))
theorem cover_1655899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655899 := by
  apply coveredState_split_literal (state := state_1655899) 2
    state_1655900 state_1655953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655900
  · exact cover_1655953
#print axioms cover_1655899

def state_1655898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 21)))
theorem cover_1655898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655898 := by
  apply coveredState_split_literal (state := state_1655898) 4
    state_1655899 state_1655972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655899
  · exact cover_1655972
#print axioms cover_1655898

def state_1655975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1655975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655975 := by
  apply coveredState_split_literal (state := state_1655975) 1
    state_1655976 state_1656005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655976
  · exact cover_1656005
#print axioms cover_1655975

def state_1656054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 42)))
theorem cover_1656054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656054 := by
  apply coveredState_split_literal (state := state_1656054) 1
    state_1656055 state_1656074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656055
  · exact cover_1656074
#print axioms cover_1656054

def state_1655974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 42)))
theorem cover_1655974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655974 := by
  apply coveredState_split_literal (state := state_1655974) 2
    state_1655975 state_1656054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655975
  · exact cover_1656054
#print axioms cover_1655974

def state_1655973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 21)))
theorem cover_1655973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655973 := by
  apply coveredState_split_literal (state := state_1655973) 4
    state_1655974 state_1656125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655974
  · exact cover_1656125
#print axioms cover_1655973

def state_1655897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1655897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655897 := by
  apply coveredState_split_literal (state := state_1655897) 3
    state_1655898 state_1655973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655898
  · exact cover_1655973
#print axioms cover_1655897

def state_1655896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1655896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655896 := by
  apply coveredState_split_literal (state := state_1655896) 0
    state_1655897 state_1656166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655897
  · exact cover_1656166
#print axioms cover_1655896

def state_1655824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1655824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655824 := by
  apply coveredState_split_literal (state := state_1655824) 1
    state_1655825 state_1655896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655825
  · exact cover_1655896
#print axioms cover_1655824

def state_1656183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 21)))
theorem cover_1656183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656183 := by
  apply coveredState_split_literal (state := state_1656183) 1
    state_1656184 state_1656199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1656184
  · exact cover_1656199
#print axioms cover_1656183

def state_1655823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 21)))
theorem cover_1655823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655823 := by
  apply coveredState_split_literal (state := state_1655823) 2
    state_1655824 state_1656183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1655824
  · exact cover_1656183
#print axioms cover_1655823
end Mub6.Numerical.CircleFullD0.Forest
