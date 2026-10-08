import CircleFullInterface
import CircleForestAssembly0006
import CircleForestChunk0034
import CircleForestChunk0035
import CircleForestChunk0036
import CircleForestChunk0037
import CircleForestChunk0038
import CircleForestChunk0039
import CircleForestChunk0040
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_287610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287610 := by
  apply coveredState_split_literal (state := state_287610) 0
    state_287611 state_288732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287611
  · exact cover_288732
#print axioms cover_287610

def state_287600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_287600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287600 := by
  apply coveredState_split_literal (state := state_287600) 2
    state_287601 state_287610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287601
  · exact cover_287610
#print axioms cover_287600

def state_287502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_287502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287502 := by
  apply coveredState_split_literal (state := state_287502) 1
    state_287503 state_287600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287503
  · exact cover_287600
#print axioms cover_287502

def state_287501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_287501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287501 := by
  apply coveredState_split_literal (state := state_287501) 4
    state_287502 state_288763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287502
  · exact cover_288763
#print axioms cover_287501

def state_287307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_287307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287307 := by
  apply coveredState_split_literal (state := state_287307) 3
    state_287308 state_287501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287308
  · exact cover_287501
#print axioms cover_287307

def state_287297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_287297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287297 := by
  apply coveredState_split_literal (state := state_287297) 2
    state_287298 state_287307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287298
  · exact cover_287307
#print axioms cover_287297

def state_287123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_287123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287123 := by
  apply coveredState_split_literal (state := state_287123) 1
    state_287124 state_287297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287124
  · exact cover_287297
#print axioms cover_287123

def state_285999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_285999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285999 := by
  apply coveredState_split_literal (state := state_285999) 0
    state_286000 state_287123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286000
  · exact cover_287123
#print axioms cover_285999

def state_285998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_285998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285998 := by
  apply coveredState_split_literal (state := state_285998) 4
    state_285999 state_288814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285999
  · exact cover_288814
#print axioms cover_285998

def state_285918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_285918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285918 := by
  apply coveredState_split_literal (state := state_285918) 3
    state_285919 state_285998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285919
  · exact cover_285998
#print axioms cover_285918

def state_290709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_290709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290709 := by
  apply coveredState_split_literal (state := state_290709) 1
    state_290710 state_291139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290710
  · exact cover_291139
#print axioms cover_290709

def state_290031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
theorem cover_290031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290031 := by
  apply coveredState_split_literal (state := state_290031) 4
    state_290032 state_290709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290032
  · exact cover_290709
#print axioms cover_290031

def state_290030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_290030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290030 := by
  apply coveredState_split_literal (state := state_290030) 3
    state_290031 state_291786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290031
  · exact cover_291786
#print axioms cover_290030

def state_290029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_290029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290029 := by
  apply coveredState_split_literal (state := state_290029) 0
    state_290030 state_291847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290030
  · exact cover_291847
#print axioms cover_290029

def state_290028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_290028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290028 := by
  apply coveredState_split_literal (state := state_290028) 2
    state_290029 state_292030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290029
  · exact cover_292030
#print axioms cover_290028

def state_289942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289942 := by
  apply coveredState_split_literal (state := state_289942) 1
    state_289943 state_290028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289943
  · exact cover_290028
#print axioms cover_289942

def state_289941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_289941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289941 := by
  apply coveredState_split_literal (state := state_289941) 4
    state_289942 state_292067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289942
  · exact cover_292067
#print axioms cover_289941

def state_289647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_289647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289647 := by
  apply coveredState_split_literal (state := state_289647) 3
    state_289648 state_289941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289648
  · exact cover_289941
#print axioms cover_289647

def state_289646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289646 := by
  apply coveredState_split_literal (state := state_289646) 2
    state_289647 state_292164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289647
  · exact cover_292164
#print axioms cover_289646

def state_289318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289318 := by
  apply coveredState_split_literal (state := state_289318) 1
    state_289319 state_289646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289319
  · exact cover_289646
#print axioms cover_289318

def state_289098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289098 := by
  apply coveredState_split_literal (state := state_289098) 0
    state_289099 state_289318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289099
  · exact cover_289318
#print axioms cover_289098

def state_289097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_289097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289097 := by
  apply coveredState_split_literal (state := state_289097) 4
    state_289098 state_292189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289098
  · exact cover_292189
#print axioms cover_289097

def state_288883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_288883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288883 := by
  apply coveredState_split_literal (state := state_288883) 3
    state_288884 state_289097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_288884
  · exact cover_289097
#print axioms cover_288883

def state_285917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_285917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285917 := by
  apply coveredState_split_literal (state := state_285917) 2
    state_285918 state_288883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285918
  · exact cover_288883
#print axioms cover_285917

def state_292303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_292303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292303 := by
  apply coveredState_split_literal (state := state_292303) 3
    state_292304 state_292463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292304
  · exact cover_292463
#print axioms cover_292303

def state_293432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_293432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293432 := by
  apply coveredState_split_literal (state := state_293432) 3
    state_293433 state_293964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293433
  · exact cover_293964
#print axioms cover_293432

def state_292302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_292302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292302 := by
  apply coveredState_split_literal (state := state_292302) 2
    state_292303 state_293432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292303
  · exact cover_293432
#print axioms cover_292302

def state_285916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_285916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285916 := by
  apply coveredState_split_literal (state := state_285916) 1
    state_285917 state_292302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285917
  · exact cover_292302
#print axioms cover_285916

def state_272556 : State := rootState
theorem cover_272556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272556 := by
  apply coveredState_split_literal (state := state_272556) 0
    state_272557 state_285916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272557
  · exact cover_285916
#print axioms cover_272556

def state_372709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_372709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372709 := by
  apply coveredState_split_literal (state := state_372709) 1
    state_372710 state_373537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372710
  · exact cover_373537
#print axioms cover_372709

def state_372679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372679 := by
  apply coveredState_split_literal (state := state_372679) 2
    state_372680 state_372709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372680
  · exact cover_372709
#print axioms cover_372679

def state_372637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372637 := by
  apply coveredState_split_literal (state := state_372637) 0
    state_372638 state_372679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372638
  · exact cover_372679
#print axioms cover_372637

def state_372615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_372615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372615 := by
  apply coveredState_split_literal (state := state_372615) 4
    state_372616 state_372637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372616
  · exact cover_372637
#print axioms cover_372615

def state_372443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_372443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372443 := by
  apply coveredState_split_literal (state := state_372443) 3
    state_372444 state_372615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372444
  · exact cover_372615
#print axioms cover_372443

def state_372223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_372223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372223 := by
  apply coveredState_split_literal (state := state_372223) 1
    state_372224 state_372443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372224
  · exact cover_372443
#print axioms cover_372223

def state_372215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_372215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372215 := by
  apply coveredState_split_literal (state := state_372215) 4
    state_372216 state_372223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372216
  · exact cover_372223
#print axioms cover_372215

def state_372137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_372137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372137 := by
  apply coveredState_split_literal (state := state_372137) 3
    state_372138 state_372215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372138
  · exact cover_372215
#print axioms cover_372137

def state_372136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_372136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372136 := by
  apply coveredState_split_literal (state := state_372136) 2
    state_372137 state_373964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372137
  · exact cover_373964
#print axioms cover_372136

def state_371978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_371978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371978 := by
  apply coveredState_split_literal (state := state_371978) 1
    state_371979 state_372136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371979
  · exact cover_372136
#print axioms cover_371978

def state_371977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_371977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371977 := by
  apply coveredState_split_literal (state := state_371977) 0
    state_371978 state_374221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371978
  · exact cover_374221
#print axioms cover_371977

def state_375024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_375024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375024 := by
  apply coveredState_split_literal (state := state_375024) 1
    state_375025 state_375638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375025
  · exact cover_375638
#print axioms cover_375024

def state_374990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_374990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374990 := by
  apply coveredState_split_literal (state := state_374990) 2
    state_374991 state_375024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374991
  · exact cover_375024
#print axioms cover_374990

def state_374946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_374946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374946 := by
  apply coveredState_split_literal (state := state_374946) 0
    state_374947 state_374990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374947
  · exact cover_374990
#print axioms cover_374946

def state_374945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_374945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374945 := by
  apply coveredState_split_literal (state := state_374945) 4
    state_374946 state_376257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374946
  · exact cover_376257
#print axioms cover_374945

def state_374863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_374863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374863 := by
  apply coveredState_split_literal (state := state_374863) 3
    state_374864 state_374945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374864
  · exact cover_374945
#print axioms cover_374863

def state_374781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_374781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374781 := by
  apply coveredState_split_literal (state := state_374781) 1
    state_374782 state_374863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374782
  · exact cover_374863
#print axioms cover_374781

def state_374780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_374780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374780 := by
  apply coveredState_split_literal (state := state_374780) 4
    state_374781 state_376288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374781
  · exact cover_376288
#print axioms cover_374780

def state_374760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_374760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374760 := by
  apply coveredState_split_literal (state := state_374760) 3
    state_374761 state_374780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374761
  · exact cover_374780
#print axioms cover_374760

def state_374759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374759 := by
  apply coveredState_split_literal (state := state_374759) 2
    state_374760 state_376297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374760
  · exact cover_376297
#print axioms cover_374759

def state_374715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374715 := by
  apply coveredState_split_literal (state := state_374715) 1
    state_374716 state_374759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374716
  · exact cover_374759
#print axioms cover_374715

def state_374714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374714 := by
  apply coveredState_split_literal (state := state_374714) 0
    state_374715 state_376566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374715
  · exact cover_376566
#print axioms cover_374714

def state_371976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_371976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371976 := by
  apply coveredState_split_literal (state := state_371976) 4
    state_371977 state_374714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371977
  · exact cover_374714
#print axioms cover_371976

def state_377177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_377177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377177 := by
  apply coveredState_split_literal (state := state_377177) 4
    state_377178 state_377751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377178
  · exact cover_377751
#print axioms cover_377177

def state_371975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_371975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371975 := by
  apply coveredState_split_literal (state := state_371975) 3
    state_371976 state_377177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371976
  · exact cover_377177
#print axioms cover_371975

def state_371974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_371974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371974 := by
  apply coveredState_split_literal (state := state_371974) 2
    state_371975 state_378646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371975
  · exact cover_378646
#print axioms cover_371974

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

def state_379598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_379598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379598 := by
  apply coveredState_split_literal (state := state_379598) 3
    state_379599 state_381028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379599
  · exact cover_381028
#print axioms cover_379598

def state_382701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_382701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_382701 := by
  apply coveredState_split_literal (state := state_382701) 4
    state_382702 state_383597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_382702
  · exact cover_383597
#print axioms cover_382701

def state_381925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_381925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381925 := by
  apply coveredState_split_literal (state := state_381925) 3
    state_381926 state_382701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_381926
  · exact cover_382701
#print axioms cover_381925

def state_379597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_379597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_379597 := by
  apply coveredState_split_literal (state := state_379597) 2
    state_379598 state_381925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_379598
  · exact cover_381925
#print axioms cover_379597

def state_371973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_371973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371973 := by
  apply coveredState_split_literal (state := state_371973) 1
    state_371974 state_379597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371974
  · exact cover_379597
#print axioms cover_371973

def state_384163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_384163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384163 := by
  apply coveredState_split_literal (state := state_384163) 2
    state_384164 state_385115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_384164
  · exact cover_385115
#print axioms cover_384163

def state_386071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_386071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386071 := by
  apply coveredState_split_literal (state := state_386071) 4
    state_386072 state_386969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_386072
  · exact cover_386969
#print axioms cover_386071

def state_385295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_385295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385295 := by
  apply coveredState_split_literal (state := state_385295) 3
    state_385296 state_386071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_385296
  · exact cover_386071
#print axioms cover_385295
end Mub6.Numerical.CircleFullPrototype.Forest
