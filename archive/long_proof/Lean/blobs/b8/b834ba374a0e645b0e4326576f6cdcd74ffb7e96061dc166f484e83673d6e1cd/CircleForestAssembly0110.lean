import CircleFullInterface
import CircleForestAssembly0109
import CircleForestChunk0438
import CircleForestChunk0439
import CircleForestChunk0440
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1040972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040972 := by
  apply coveredState_split_literal (state := state_1040972) 1
    state_1040973 state_1042524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040973
  · exact cover_1042524
#print axioms cover_1040972

def state_1042657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1042657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042657 := by
  apply coveredState_split_literal (state := state_1042657) 3
    state_1042658 state_1042701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042658
  · exact cover_1042701
#print axioms cover_1042657

def state_1042656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1042656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042656 := by
  apply coveredState_split_literal (state := state_1042656) 2
    state_1042657 state_1042732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042657
  · exact cover_1042732
#print axioms cover_1042656

def state_1042655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1042655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042655 := by
  apply coveredState_split_literal (state := state_1042655) 1
    state_1042656 state_1042779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042656
  · exact cover_1042779
#print axioms cover_1042655

def state_1040971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1040971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040971 := by
  apply coveredState_split_literal (state := state_1040971) 0
    state_1040972 state_1042655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040972
  · exact cover_1042655
#print axioms cover_1040971

def state_1043010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 51)))
theorem cover_1043010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043010 := by
  apply coveredState_split_literal (state := state_1043010) 2
    state_1043011 state_1043042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043011
  · exact cover_1043042
#print axioms cover_1043010

def state_1042974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 51)))
theorem cover_1042974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042974 := by
  apply coveredState_split_literal (state := state_1042974) 0
    state_1042975 state_1043010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042975
  · exact cover_1043010
#print axioms cover_1042974

def state_1042952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 51)))
theorem cover_1042952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042952 := by
  apply coveredState_split_literal (state := state_1042952) 3
    state_1042953 state_1042974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042953
  · exact cover_1042974
#print axioms cover_1042952

def state_1042951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 51)))
theorem cover_1042951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042951 := by
  apply coveredState_split_literal (state := state_1042951) 1
    state_1042952 state_1043089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042952
  · exact cover_1043089
#print axioms cover_1042951

def state_1042949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 25)))
theorem cover_1042949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042949 := by
  apply coveredState_split_literal (state := state_1042949) 4
    state_1042950 state_1042951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042950
  · exact cover_1042951
#print axioms cover_1042949

def state_1042933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1042933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042933 := by
  apply coveredState_split_literal (state := state_1042933) 2
    state_1042934 state_1042949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042934
  · exact cover_1042949
#print axioms cover_1042933

def state_1042915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1042915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042915 := by
  apply coveredState_split_literal (state := state_1042915) 0
    state_1042916 state_1042933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042916
  · exact cover_1042933
#print axioms cover_1042915

def state_1042899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1042899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042899 := by
  apply coveredState_split_literal (state := state_1042899) 3
    state_1042900 state_1042915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042900
  · exact cover_1042915
#print axioms cover_1042899

def state_1042898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1042898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042898 := by
  apply coveredState_split_literal (state := state_1042898) 1
    state_1042899 state_1043114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042899
  · exact cover_1043114
#print axioms cover_1042898

def state_1042896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1042896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042896 := by
  apply coveredState_split_literal (state := state_1042896) 4
    state_1042897 state_1042898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042897
  · exact cover_1042898
#print axioms cover_1042896

def state_1042882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1042882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042882 := by
  apply coveredState_split_literal (state := state_1042882) 2
    state_1042883 state_1042896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042883
  · exact cover_1042896
#print axioms cover_1042882

def state_1042864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1042864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042864 := by
  apply coveredState_split_literal (state := state_1042864) 0
    state_1042865 state_1042882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042865
  · exact cover_1042882
#print axioms cover_1042864

def state_1042854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1042854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042854 := by
  apply coveredState_split_literal (state := state_1042854) 3
    state_1042855 state_1042864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042855
  · exact cover_1042864
#print axioms cover_1042854

def state_1042853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1042853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042853 := by
  apply coveredState_split_literal (state := state_1042853) 1
    state_1042854 state_1043123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042854
  · exact cover_1043123
#print axioms cover_1042853

def state_1042852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1042852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042852 := by
  apply coveredState_split_literal (state := state_1042852) 4
    state_1042853 state_1043126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042853
  · exact cover_1043126
#print axioms cover_1042852

def state_1043194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1043194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043194 := by
  apply coveredState_split_literal (state := state_1043194) 1
    state_1043195 state_1043254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043195
  · exact cover_1043254
#print axioms cover_1043194

def state_1043193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1043193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043193 := by
  apply coveredState_split_literal (state := state_1043193) 2
    state_1043194 state_1043261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043194
  · exact cover_1043261
#print axioms cover_1043193

def state_1043189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1043189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043189 := by
  apply coveredState_split_literal (state := state_1043189) 4
    state_1043190 state_1043193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043190
  · exact cover_1043193
#print axioms cover_1043189

def state_1043185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1043185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043185 := by
  apply coveredState_split_literal (state := state_1043185) 0
    state_1043186 state_1043189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043186
  · exact cover_1043189
#print axioms cover_1043185

def state_1043179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1043179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043179 := by
  apply coveredState_split_literal (state := state_1043179) 3
    state_1043180 state_1043185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043180
  · exact cover_1043185
#print axioms cover_1043179

def state_1043178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1043178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043178 := by
  apply coveredState_split_literal (state := state_1043178) 1
    state_1043179 state_1043262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043179
  · exact cover_1043262
#print axioms cover_1043178

def state_1043177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1043177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043177 := by
  apply coveredState_split_literal (state := state_1043177) 4
    state_1043178 state_1043269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043178
  · exact cover_1043269
#print axioms cover_1043177

def state_1042851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1042851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042851 := by
  apply coveredState_split_literal (state := state_1042851) 2
    state_1042852 state_1043177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042852
  · exact cover_1043177
#print axioms cover_1042851

def state_1043299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
theorem cover_1043299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043299 := by
  apply coveredState_split_literal (state := state_1043299) 2
    state_1043300 state_1043315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043300
  · exact cover_1043315
#print axioms cover_1043299

def state_1043295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1043295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043295 := by
  apply coveredState_split_literal (state := state_1043295) 3
    state_1043296 state_1043299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043296
  · exact cover_1043299
#print axioms cover_1043295

def state_1043294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1043294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043294 := by
  apply coveredState_split_literal (state := state_1043294) 1
    state_1043295 state_1043364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043295
  · exact cover_1043364
#print axioms cover_1043294

def state_1043293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
theorem cover_1043293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043293 := by
  apply coveredState_split_literal (state := state_1043293) 0
    state_1043294 state_1043369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043294
  · exact cover_1043369
#print axioms cover_1043293
end Mub6.Numerical.CircleFullD0.Forest
