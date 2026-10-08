import CircleFullInterface
import CircleForestAssembly0387
import CircleForestChunk1510
import CircleForestChunk1511
import CircleForestChunk1512
import CircleForestChunk1513
import CircleForestChunk1514
import CircleForestChunk1515
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1663295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1663295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663295 := by
  apply coveredState_split_literal (state := state_1663295) 1
    state_1663296 state_1663331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663296
  · exact cover_1663331
#print axioms cover_1663295

def state_1663294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1663294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663294 := by
  apply coveredState_split_literal (state := state_1663294) 0
    state_1663295 state_1663368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663295
  · exact cover_1663368
#print axioms cover_1663294

def state_1663200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1663200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663200 := by
  apply coveredState_split_literal (state := state_1663200) 4
    state_1663201 state_1663294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663201
  · exact cover_1663294
#print axioms cover_1663200

def state_1663435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1663435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663435 := by
  apply coveredState_split_literal (state := state_1663435) 2
    state_1663436 state_1663463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663436
  · exact cover_1663463
#print axioms cover_1663435

def state_1663405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1663405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663405 := by
  apply coveredState_split_literal (state := state_1663405) 1
    state_1663406 state_1663435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663406
  · exact cover_1663435
#print axioms cover_1663405

def state_1663404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1663404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663404 := by
  apply coveredState_split_literal (state := state_1663404) 0
    state_1663405 state_1663514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663405
  · exact cover_1663514
#print axioms cover_1663404

def state_1663562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1663562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663562 := by
  apply coveredState_split_literal (state := state_1663562) 3
    state_1663563 state_1663596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663563
  · exact cover_1663596
#print axioms cover_1663562

def state_1663561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1663561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663561 := by
  apply coveredState_split_literal (state := state_1663561) 2
    state_1663562 state_1663633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663562
  · exact cover_1663633
#print axioms cover_1663561

def state_1663645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1663645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663645 := by
  apply coveredState_split_literal (state := state_1663645) 3
    state_1663646 state_1663659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663646
  · exact cover_1663659
#print axioms cover_1663645

def state_1663644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1663644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663644 := by
  apply coveredState_split_literal (state := state_1663644) 2
    state_1663645 state_1663716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663645
  · exact cover_1663716
#print axioms cover_1663644

def state_1663560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1663560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663560 := by
  apply coveredState_split_literal (state := state_1663560) 1
    state_1663561 state_1663644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663561
  · exact cover_1663644
#print axioms cover_1663560

def state_1663559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1663559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663559 := by
  apply coveredState_split_literal (state := state_1663559) 0
    state_1663560 state_1663751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663560
  · exact cover_1663751
#print axioms cover_1663559

def state_1663403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1663403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663403 := by
  apply coveredState_split_literal (state := state_1663403) 4
    state_1663404 state_1663559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663404
  · exact cover_1663559
#print axioms cover_1663403

def state_1663199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1663199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663199 := by
  apply coveredState_split_literal (state := state_1663199) 3
    state_1663200 state_1663403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663200
  · exact cover_1663403
#print axioms cover_1663199

def state_1662863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1662863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662863 := by
  apply coveredState_split_literal (state := state_1662863) 2
    state_1662864 state_1663199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662864
  · exact cover_1663199
#print axioms cover_1662863

def state_1663788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1663788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663788 := by
  apply coveredState_split_literal (state := state_1663788) 1
    state_1663789 state_1663808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663789
  · exact cover_1663808
#print axioms cover_1663788

def state_1663787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1663787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663787 := by
  apply coveredState_split_literal (state := state_1663787) 0
    state_1663788 state_1663867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663788
  · exact cover_1663867
#print axioms cover_1663787

def state_1663953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1663953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663953 := by
  apply coveredState_split_literal (state := state_1663953) 2
    state_1663954 state_1663965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663954
  · exact cover_1663965
#print axioms cover_1663953

def state_1663891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1663891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663891 := by
  apply coveredState_split_literal (state := state_1663891) 1
    state_1663892 state_1663953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663892
  · exact cover_1663953
#print axioms cover_1663891

def state_1663890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1663890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663890 := by
  apply coveredState_split_literal (state := state_1663890) 0
    state_1663891 state_1664028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663891
  · exact cover_1664028
#print axioms cover_1663890

def state_1663786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1663786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663786 := by
  apply coveredState_split_literal (state := state_1663786) 4
    state_1663787 state_1663890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663787
  · exact cover_1663890
#print axioms cover_1663786

def state_1664061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1664061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664061 := by
  apply coveredState_split_literal (state := state_1664061) 1
    state_1664062 state_1664091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664062
  · exact cover_1664091
#print axioms cover_1664061

def state_1664060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1664060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664060 := by
  apply coveredState_split_literal (state := state_1664060) 0
    state_1664061 state_1664148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664061
  · exact cover_1664148
#print axioms cover_1664060

def state_1664361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 63)))
theorem cover_1664361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664361 := by
  apply coveredState_split_literal (state := state_1664361) 0
    state_1664362 state_1664381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664362
  · exact cover_1664381
#print axioms cover_1664361

def state_1664341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 31)))
theorem cover_1664341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664341 := by
  apply coveredState_split_literal (state := state_1664341) 4
    state_1664342 state_1664361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664342
  · exact cover_1664361
#print axioms cover_1664341

def state_1664340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 31)))
theorem cover_1664340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664340 := by
  apply coveredState_split_literal (state := state_1664340) 2
    state_1664341 state_1664432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664341
  · exact cover_1664432
#print axioms cover_1664340

def state_1664330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 31)))
theorem cover_1664330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664330 := by
  apply coveredState_split_literal (state := state_1664330) 3
    state_1664331 state_1664340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664331
  · exact cover_1664340
#print axioms cover_1664330

def state_1664318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 31)))
theorem cover_1664318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664318 := by
  apply coveredState_split_literal (state := state_1664318) 1
    state_1664319 state_1664330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664319
  · exact cover_1664330
#print axioms cover_1664318

def state_1664292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 31)))
theorem cover_1664292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664292 := by
  apply coveredState_split_literal (state := state_1664292) 0
    state_1664293 state_1664318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664293
  · exact cover_1664318
#print axioms cover_1664292

def state_1664276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 15)))
theorem cover_1664276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664276 := by
  apply coveredState_split_literal (state := state_1664276) 4
    state_1664277 state_1664292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664277
  · exact cover_1664292
#print axioms cover_1664276

def state_1664275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 15)))
theorem cover_1664275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664275 := by
  apply coveredState_split_literal (state := state_1664275) 2
    state_1664276 state_1664453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664276
  · exact cover_1664453
#print axioms cover_1664275

def state_1664265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
theorem cover_1664265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664265 := by
  apply coveredState_split_literal (state := state_1664265) 3
    state_1664266 state_1664275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1664266
  · exact cover_1664275
#print axioms cover_1664265
end Mub6.Numerical.CircleFullD0.Forest
