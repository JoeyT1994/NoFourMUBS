import CircleFullInterface
import CircleForestAssembly0142
import CircleForestAssembly0144
import CircleForestChunk0551
import CircleForestChunk0558
import CircleForestChunk0559
import CircleForestChunk0560
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1322792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1322792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322792 := by
  apply coveredState_split_literal (state := state_1322792) 0
    state_1322793 state_1323038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322793
  · exact cover_1323038
#print axioms cover_1322792

def state_1322790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1322790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322790 := by
  apply coveredState_split_literal (state := state_1322790) 2
    state_1322791 state_1322792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322791
  · exact cover_1322792
#print axioms cover_1322790

def state_1322788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1322788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322788 := by
  apply coveredState_split_literal (state := state_1322788) 1
    state_1322789 state_1322790
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322789
  · exact cover_1322790
#print axioms cover_1322788

def state_1322732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1322732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322732 := by
  apply coveredState_split_literal (state := state_1322732) 4
    state_1322733 state_1322788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322733
  · exact cover_1322788
#print axioms cover_1322732

def state_1322428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1322428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322428 := by
  apply coveredState_split_literal (state := state_1322428) 3
    state_1322429 state_1322732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1322429
  · exact cover_1322732
#print axioms cover_1322428

def state_1321242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1321242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321242 := by
  apply coveredState_split_literal (state := state_1321242) 0
    state_1321243 state_1322428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321243
  · exact cover_1322428
#print axioms cover_1321242

def state_1321192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1321192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321192 := by
  apply coveredState_split_literal (state := state_1321192) 4
    state_1321193 state_1321242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321193
  · exact cover_1321242
#print axioms cover_1321192

def state_1321088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1321088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321088 := by
  apply coveredState_split_literal (state := state_1321088) 3
    state_1321089 state_1321192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321089
  · exact cover_1321192
#print axioms cover_1321088

def state_1321036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1321036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321036 := by
  apply coveredState_split_literal (state := state_1321036) 2
    state_1321037 state_1321088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1321037
  · exact cover_1321088
#print axioms cover_1321036

def state_1320944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320944 := by
  apply coveredState_split_literal (state := state_1320944) 1
    state_1320945 state_1321036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320945
  · exact cover_1321036
#print axioms cover_1320944

def state_1320586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1320586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320586 := by
  apply coveredState_split_literal (state := state_1320586) 0
    state_1320587 state_1320944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320587
  · exact cover_1320944
#print axioms cover_1320586

def state_1323199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 32 else 51)))
theorem cover_1323199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323199 := by
  apply coveredState_split_literal (state := state_1323199) 4
    state_1323200 state_1323207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323200
  · exact cover_1323207
#print axioms cover_1323199

def state_1323175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
theorem cover_1323175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323175 := by
  apply coveredState_split_literal (state := state_1323175) 2
    state_1323176 state_1323199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323176
  · exact cover_1323199
#print axioms cover_1323175

def state_1323137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
theorem cover_1323137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323137 := by
  apply coveredState_split_literal (state := state_1323137) 1
    state_1323138 state_1323175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323138
  · exact cover_1323175
#print axioms cover_1323137

def state_1323136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1323136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323136 := by
  apply coveredState_split_literal (state := state_1323136) 3
    state_1323137 state_1323264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323137
  · exact cover_1323264
#print axioms cover_1323136

def state_1323135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
theorem cover_1323135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323135 := by
  apply coveredState_split_literal (state := state_1323135) 0
    state_1323136 state_1323287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323136
  · exact cover_1323287
#print axioms cover_1323135

def state_1323133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 25)))
theorem cover_1323133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323133 := by
  apply coveredState_split_literal (state := state_1323133) 4
    state_1323134 state_1323135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323134
  · exact cover_1323135
#print axioms cover_1323133

def state_1323119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_1323119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323119 := by
  apply coveredState_split_literal (state := state_1323119) 2
    state_1323120 state_1323133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323120
  · exact cover_1323133
#print axioms cover_1323119

def state_1323101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
theorem cover_1323101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323101 := by
  apply coveredState_split_literal (state := state_1323101) 1
    state_1323102 state_1323119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323102
  · exact cover_1323119
#print axioms cover_1323101

def state_1323100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1323100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323100 := by
  apply coveredState_split_literal (state := state_1323100) 3
    state_1323101 state_1323312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323101
  · exact cover_1323312
#print axioms cover_1323100

def state_1323099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
theorem cover_1323099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323099 := by
  apply coveredState_split_literal (state := state_1323099) 0
    state_1323100 state_1323319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323100
  · exact cover_1323319
#print axioms cover_1323099

def state_1323097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 12)))
theorem cover_1323097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323097 := by
  apply coveredState_split_literal (state := state_1323097) 4
    state_1323098 state_1323099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323098
  · exact cover_1323099
#print axioms cover_1323097

def state_1323083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_1323083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323083 := by
  apply coveredState_split_literal (state := state_1323083) 2
    state_1323084 state_1323097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323084
  · exact cover_1323097
#print axioms cover_1323083

def state_1323065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
theorem cover_1323065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323065 := by
  apply coveredState_split_literal (state := state_1323065) 1
    state_1323066 state_1323083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323066
  · exact cover_1323083
#print axioms cover_1323065

def state_1323064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1323064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323064 := by
  apply coveredState_split_literal (state := state_1323064) 3
    state_1323065 state_1323328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323065
  · exact cover_1323328
#print axioms cover_1323064

def state_1323063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
theorem cover_1323063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323063 := by
  apply coveredState_split_literal (state := state_1323063) 0
    state_1323064 state_1323329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323064
  · exact cover_1323329
#print axioms cover_1323063

def state_1323062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_1323062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323062 := by
  apply coveredState_split_literal (state := state_1323062) 4
    state_1323063 state_1323330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323063
  · exact cover_1323330
#print axioms cover_1323062

def state_1323421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
theorem cover_1323421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323421 := by
  apply coveredState_split_literal (state := state_1323421) 3
    state_1323422 state_1323479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323422
  · exact cover_1323479
#print axioms cover_1323421

def state_1323420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
theorem cover_1323420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323420 := by
  apply coveredState_split_literal (state := state_1323420) 0
    state_1323421 state_1323498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323421
  · exact cover_1323498
#print axioms cover_1323420

def state_1323419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 51)))
theorem cover_1323419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323419 := by
  apply coveredState_split_literal (state := state_1323419) 2
    state_1323420 state_1323511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323420
  · exact cover_1323511
#print axioms cover_1323419

def state_1323415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 25)))
theorem cover_1323415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323415 := by
  apply coveredState_split_literal (state := state_1323415) 4
    state_1323416 state_1323419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323416
  · exact cover_1323419
#print axioms cover_1323415

def state_1323405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 25)))
theorem cover_1323405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323405 := by
  apply coveredState_split_literal (state := state_1323405) 1
    state_1323406 state_1323415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323406
  · exact cover_1323415
#print axioms cover_1323405
end Mub6.Numerical.CircleFullD0.Forest
