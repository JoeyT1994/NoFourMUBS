import D0FullInterface
import D0ForestAssembly0002
import D0ForestAssembly0004
import D0ForestChunk0010
import D0ForestChunk0011
import D0ForestChunk0012
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
def state_1030266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1030266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030266 := by
  apply coveredState_split_literal (state := state_1030266) 3
    state_1030267 state_1034232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030267
  · exact cover_1034232
#print axioms cover_1030266

def state_1030234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1030234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030234 := by
  apply coveredState_split_literal (state := state_1030234) 2
    state_1030235 state_1030266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030235
  · exact cover_1030266
#print axioms cover_1030234

def state_1029566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1029566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029566 := by
  apply coveredState_split_literal (state := state_1029566) 1
    state_1029567 state_1030234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029567
  · exact cover_1030234
#print axioms cover_1029566

def state_1029502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1029502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029502 := by
  apply coveredState_split_literal (state := state_1029502) 0
    state_1029503 state_1029566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029503
  · exact cover_1029566
#print axioms cover_1029502

def state_1029082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_1029082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029082 := by
  apply coveredState_split_literal (state := state_1029082) 4
    state_1029083 state_1029502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1029083
  · exact cover_1029502
#print axioms cover_1029082

def state_1028532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_1028532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028532 := by
  apply coveredState_split_literal (state := state_1028532) 3
    state_1028533 state_1029082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028533
  · exact cover_1029082
#print axioms cover_1028532

def state_1035930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1035930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035930 := by
  apply coveredState_split_literal (state := state_1035930) 3
    state_1035931 state_1036678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035931
  · exact cover_1036678
#print axioms cover_1035930

def state_1035929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035929 := by
  apply coveredState_split_literal (state := state_1035929) 2
    state_1035930 state_1037281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035930
  · exact cover_1037281
#print axioms cover_1035929

def state_1035421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035421 := by
  apply coveredState_split_literal (state := state_1035421) 1
    state_1035422 state_1035929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035422
  · exact cover_1035929
#print axioms cover_1035421

def state_1035403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1035403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035403 := by
  apply coveredState_split_literal (state := state_1035403) 0
    state_1035404 state_1035421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1035404
  · exact cover_1035421
#print axioms cover_1035403

def state_1034865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1034865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034865 := by
  apply coveredState_split_literal (state := state_1034865) 4
    state_1034866 state_1035403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034866
  · exact cover_1035403
#print axioms cover_1034865

def state_1034731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1034731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034731 := by
  apply coveredState_split_literal (state := state_1034731) 3
    state_1034732 state_1034865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034732
  · exact cover_1034865
#print axioms cover_1034731

def state_1028531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028531 := by
  apply coveredState_split_literal (state := state_1028531) 2
    state_1028532 state_1034731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028532
  · exact cover_1034731
#print axioms cover_1028531

def state_1028530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028530 := by
  apply coveredState_split_literal (state := state_1028530) 1
    state_1028531 state_1037294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028531
  · exact cover_1037294
#print axioms cover_1028530

def state_1028484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1028484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028484 := by
  apply coveredState_split_literal (state := state_1028484) 0
    state_1028485 state_1028530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028485
  · exact cover_1028530
#print axioms cover_1028484

def state_1028428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1028428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028428 := by
  apply coveredState_split_literal (state := state_1028428) 4
    state_1028429 state_1028484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028429
  · exact cover_1028484
#print axioms cover_1028428

def state_1028427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1028427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028427 := by
  apply coveredState_split_literal (state := state_1028427) 3
    state_1028428 state_1037699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028428
  · exact cover_1037699
#print axioms cover_1028427

def state_1028426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028426 := by
  apply coveredState_split_literal (state := state_1028426) 2
    state_1028427 state_1037906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028427
  · exact cover_1037906
#print axioms cover_1028426

def state_1028425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028425 := by
  apply coveredState_split_literal (state := state_1028425) 1
    state_1028426 state_1038057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028426
  · exact cover_1038057
#print axioms cover_1028425

def state_1028391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1028391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028391 := by
  apply coveredState_split_literal (state := state_1028391) 0
    state_1028392 state_1028425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028392
  · exact cover_1028425
#print axioms cover_1028391

def state_1028305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1028305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028305 := by
  apply coveredState_split_literal (state := state_1028305) 4
    state_1028306 state_1028391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028306
  · exact cover_1028391
#print axioms cover_1028305

def state_1028304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1028304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028304 := by
  apply coveredState_split_literal (state := state_1028304) 3
    state_1028305 state_1038136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028305
  · exact cover_1038136
#print axioms cover_1028304

def state_979558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_979558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979558 := by
  apply coveredState_split_literal (state := state_979558) 2
    state_979559 state_1028304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979559
  · exact cover_1028304
#print axioms cover_979558

def state_939524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_939524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939524 := by
  apply coveredState_split_literal (state := state_939524) 1
    state_939525 state_979558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939525
  · exact cover_979558
#print axioms cover_939524

def state_1039860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1039860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039860 := by
  apply coveredState_split_literal (state := state_1039860) 3
    state_1039861 state_1039950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039861
  · exact cover_1039950
#print axioms cover_1039860

def state_1039364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039364 := by
  apply coveredState_split_literal (state := state_1039364) 2
    state_1039365 state_1039860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039365
  · exact cover_1039860
#print axioms cover_1039364

def state_1039248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039248 := by
  apply coveredState_split_literal (state := state_1039248) 1
    state_1039249 state_1039364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039249
  · exact cover_1039364
#print axioms cover_1039248

def state_1039247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1039247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039247 := by
  apply coveredState_split_literal (state := state_1039247) 0
    state_1039248 state_1040937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039248
  · exact cover_1040937
#print axioms cover_1039247

def state_1039139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1039139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039139 := by
  apply coveredState_split_literal (state := state_1039139) 4
    state_1039140 state_1039247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039140
  · exact cover_1039247
#print axioms cover_1039139

def state_1040976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1040976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040976 := by
  apply coveredState_split_literal (state := state_1040976) 0
    state_1040977 state_1041500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040977
  · exact cover_1041500
#print axioms cover_1040976

def state_1040975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1040975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040975 := by
  apply coveredState_split_literal (state := state_1040975) 4
    state_1040976 state_1042315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040976
  · exact cover_1042315
#print axioms cover_1040975

def state_1040974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1040974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040974 := by
  apply coveredState_split_literal (state := state_1040974) 3
    state_1040975 state_1042346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040975
  · exact cover_1042346
#print axioms cover_1040974

def state_1040973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040973 := by
  apply coveredState_split_literal (state := state_1040973) 2
    state_1040974 state_1042433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040974
  · exact cover_1042433
#print axioms cover_1040973

def state_1040972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040972 := by
  apply coveredState_split_literal (state := state_1040972) 1
    state_1040973 state_1042524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040973
  · exact cover_1042524
#print axioms cover_1040972

def state_1040971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040971 := by
  apply coveredState_split_literal (state := state_1040971) 0
    state_1040972 state_1042655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040972
  · exact cover_1042655
#print axioms cover_1040971

def state_1040970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1040970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040970 := by
  apply coveredState_split_literal (state := state_1040970) 4
    state_1040971 state_1042824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040971
  · exact cover_1042824
#print axioms cover_1040970

def state_1039138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1039138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039138 := by
  apply coveredState_split_literal (state := state_1039138) 3
    state_1039139 state_1040970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039139
  · exact cover_1040970
#print axioms cover_1039138

def state_1038474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1038474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038474 := by
  apply coveredState_split_literal (state := state_1038474) 2
    state_1038475 state_1039138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038475
  · exact cover_1039138
#print axioms cover_1038474

def state_1044460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044460 := by
  apply coveredState_split_literal (state := state_1044460) 2
    state_1044461 state_1044772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044461
  · exact cover_1044772
#print axioms cover_1044460

def state_1044064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044064 := by
  apply coveredState_split_literal (state := state_1044064) 1
    state_1044065 state_1044460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044065
  · exact cover_1044460
#print axioms cover_1044064

def state_1044063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1044063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044063 := by
  apply coveredState_split_literal (state := state_1044063) 0
    state_1044064 state_1045731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044064
  · exact cover_1045731
#print axioms cover_1044063

def state_1045821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1045821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045821 := by
  apply coveredState_split_literal (state := state_1045821) 3
    state_1045822 state_1046579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045822
  · exact cover_1046579
#print axioms cover_1045821

def state_1045820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1045820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045820 := by
  apply coveredState_split_literal (state := state_1045820) 0
    state_1045821 state_1047228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045821
  · exact cover_1047228
#print axioms cover_1045820

def state_1045819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1045819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045819 := by
  apply coveredState_split_literal (state := state_1045819) 4
    state_1045820 state_1047239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045820
  · exact cover_1047239
#print axioms cover_1045819

def state_1045818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1045818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045818 := by
  apply coveredState_split_literal (state := state_1045818) 3
    state_1045819 state_1047254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045819
  · exact cover_1047254
#print axioms cover_1045818

def state_1045817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045817 := by
  apply coveredState_split_literal (state := state_1045817) 2
    state_1045818 state_1047277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045818
  · exact cover_1047277
#print axioms cover_1045817

def state_1045765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045765 := by
  apply coveredState_split_literal (state := state_1045765) 1
    state_1045766 state_1045817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045766
  · exact cover_1045817
#print axioms cover_1045765

def state_1045764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1045764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045764 := by
  apply coveredState_split_literal (state := state_1045764) 0
    state_1045765 state_1047716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1045765
  · exact cover_1047716
#print axioms cover_1045764

def state_1044062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1044062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044062 := by
  apply coveredState_split_literal (state := state_1044062) 4
    state_1044063 state_1045764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1044063
  · exact cover_1045764
#print axioms cover_1044062

def state_1043814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1043814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043814 := by
  apply coveredState_split_literal (state := state_1043814) 3
    state_1043815 state_1044062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043815
  · exact cover_1044062
#print axioms cover_1043814

def state_1047926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047926 := by
  apply coveredState_split_literal (state := state_1047926) 2
    state_1047927 state_1048468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047927
  · exact cover_1048468
#print axioms cover_1047926

def state_1047925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047925 := by
  apply coveredState_split_literal (state := state_1047925) 1
    state_1047926 state_1049035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047926
  · exact cover_1049035
#print axioms cover_1047925

def state_1047924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047924 := by
  apply coveredState_split_literal (state := state_1047924) 0
    state_1047925 state_1049336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047925
  · exact cover_1049336
#print axioms cover_1047924

def state_1047910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1047910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047910 := by
  apply coveredState_split_literal (state := state_1047910) 4
    state_1047911 state_1047924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047911
  · exact cover_1047924
#print axioms cover_1047910

def state_1047909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1047909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047909 := by
  apply coveredState_split_literal (state := state_1047909) 3
    state_1047910 state_1049349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047910
  · exact cover_1049349
#print axioms cover_1047909

def state_1047908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047908 := by
  apply coveredState_split_literal (state := state_1047908) 2
    state_1047909 state_1049544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047909
  · exact cover_1049544
#print axioms cover_1047908

def state_1047907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047907 := by
  apply coveredState_split_literal (state := state_1047907) 1
    state_1047908 state_1049741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047908
  · exact cover_1049741
#print axioms cover_1047907

def state_1047906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1047906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047906 := by
  apply coveredState_split_literal (state := state_1047906) 0
    state_1047907 state_1049854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047907
  · exact cover_1049854
#print axioms cover_1047906

def state_1047744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1047744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047744 := by
  apply coveredState_split_literal (state := state_1047744) 4
    state_1047745 state_1047906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047745
  · exact cover_1047906
#print axioms cover_1047744

def state_1049883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1049883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049883 := by
  apply coveredState_split_literal (state := state_1049883) 4
    state_1049884 state_1050849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049884
  · exact cover_1050849
#print axioms cover_1049883

def state_1047743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1047743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047743 := by
  apply coveredState_split_literal (state := state_1047743) 3
    state_1047744 state_1049883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047744
  · exact cover_1049883
#print axioms cover_1047743

def state_1043813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1043813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043813 := by
  apply coveredState_split_literal (state := state_1043813) 2
    state_1043814 state_1047743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043814
  · exact cover_1047743
#print axioms cover_1043813

def state_1038473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1038473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038473 := by
  apply coveredState_split_literal (state := state_1038473) 1
    state_1038474 state_1043813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038474
  · exact cover_1043813
#print axioms cover_1038473

def state_939523 : State := rootState
theorem cover_939523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939523 := by
  apply coveredState_split_literal (state := state_939523) 0
    state_939524 state_1038473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939524
  · exact cover_1038473
#print axioms cover_939523
end Mub6.Numerical.CircleFullD0.Forest
