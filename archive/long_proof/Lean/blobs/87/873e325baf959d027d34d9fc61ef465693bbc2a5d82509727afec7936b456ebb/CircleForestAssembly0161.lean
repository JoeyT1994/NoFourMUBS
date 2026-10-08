import CircleFullInterface
import CircleForestAssembly0159
import CircleForestAssembly0160
import CircleForestChunk0623
import CircleForestChunk0628
import CircleForestChunk0629
import CircleForestChunk0630
import CircleForestChunk0631
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_388527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_388527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388527 := by
  apply coveredState_split_literal (state := state_388527) 4
    state_388528 state_388559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388528
  · exact cover_388559
#print axioms cover_388527

def state_389812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_389812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389812 := by
  apply coveredState_split_literal (state := state_389812) 1
    state_389813 state_389876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389813
  · exact cover_389876
#print axioms cover_389812

def state_389810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_389810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389810 := by
  apply coveredState_split_literal (state := state_389810) 4
    state_389811 state_389812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389811
  · exact cover_389812
#print axioms cover_389810

def state_388526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388526 := by
  apply coveredState_split_literal (state := state_388526) 2
    state_388527 state_389810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388527
  · exact cover_389810
#print axioms cover_388526

def state_389893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_389893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389893 := by
  apply coveredState_split_literal (state := state_389893) 3
    state_389894 state_389955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389894
  · exact cover_389955
#print axioms cover_389893

def state_389892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
theorem cover_389892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389892 := by
  apply coveredState_split_literal (state := state_389892) 1
    state_389893 state_389962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389893
  · exact cover_389962
#print axioms cover_389892

def state_389890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
theorem cover_389890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389890 := by
  apply coveredState_split_literal (state := state_389890) 4
    state_389891 state_389892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389891
  · exact cover_389892
#print axioms cover_389890

def state_389889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_389889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389889 := by
  apply coveredState_split_literal (state := state_389889) 2
    state_389890 state_389971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_389890
  · exact cover_389971
#print axioms cover_389889

def state_388525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_388525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388525 := by
  apply coveredState_split_literal (state := state_388525) 0
    state_388526 state_389889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388526
  · exact cover_389889
#print axioms cover_388525

def state_388515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_388515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388515 := by
  apply coveredState_split_literal (state := state_388515) 4
    state_388516 state_388525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388516
  · exact cover_388525
#print axioms cover_388515

def state_388291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_388291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388291 := by
  apply coveredState_split_literal (state := state_388291) 3
    state_388292 state_388515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388292
  · exact cover_388515
#print axioms cover_388291

def state_388290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_388290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_388290 := by
  apply coveredState_split_literal (state := state_388290) 2
    state_388291 state_389972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_388291
  · exact cover_389972
#print axioms cover_388290

def state_387724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_387724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387724 := by
  apply coveredState_split_literal (state := state_387724) 1
    state_387725 state_388290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387725
  · exact cover_388290
#print axioms cover_387724

def state_390042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_390042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390042 := by
  apply coveredState_split_literal (state := state_390042) 3
    state_390043 state_390092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390043
  · exact cover_390092
#print axioms cover_390042

def state_390041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_390041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390041 := by
  apply coveredState_split_literal (state := state_390041) 2
    state_390042 state_390113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390042
  · exact cover_390113
#print axioms cover_390041

def state_390009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_390009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390009 := by
  apply coveredState_split_literal (state := state_390009) 1
    state_390010 state_390041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390010
  · exact cover_390041
#print axioms cover_390009

def state_387723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_387723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387723 := by
  apply coveredState_split_literal (state := state_387723) 0
    state_387724 state_390009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_387724
  · exact cover_390009
#print axioms cover_387723

def state_390139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_390139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390139 := by
  apply coveredState_split_literal (state := state_390139) 2
    state_390140 state_390193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390140
  · exact cover_390193
#print axioms cover_390139

def state_390138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_390138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390138 := by
  apply coveredState_split_literal (state := state_390138) 0
    state_390139 state_390220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390139
  · exact cover_390220
#print axioms cover_390138

def state_390137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_390137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390137 := by
  apply coveredState_split_literal (state := state_390137) 4
    state_390138 state_390247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390138
  · exact cover_390247
#print axioms cover_390137

def state_390133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_390133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390133 := by
  apply coveredState_split_literal (state := state_390133) 3
    state_390134 state_390137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390134
  · exact cover_390137
#print axioms cover_390133

def state_390132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_390132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390132 := by
  apply coveredState_split_literal (state := state_390132) 2
    state_390133 state_390254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390133
  · exact cover_390254
#print axioms cover_390132

def state_390124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_390124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390124 := by
  apply coveredState_split_literal (state := state_390124) 1
    state_390125 state_390132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390125
  · exact cover_390132
#print axioms cover_390124

def state_390123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_390123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390123 := by
  apply coveredState_split_literal (state := state_390123) 0
    state_390124 state_390259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390124
  · exact cover_390259
#print axioms cover_390123

def state_390122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_390122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390122 := by
  apply coveredState_split_literal (state := state_390122) 4
    state_390123 state_390268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390123
  · exact cover_390268
#print axioms cover_390122

def state_390289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390289 := by
  apply coveredState_split_literal (state := state_390289) 2
    state_390290 state_390351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390290
  · exact cover_390351
#print axioms cover_390289

def state_390364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390364 := by
  apply coveredState_split_literal (state := state_390364) 2
    state_390365 state_390426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390365
  · exact cover_390426
#print axioms cover_390364

def state_390288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390288 := by
  apply coveredState_split_literal (state := state_390288) 0
    state_390289 state_390364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390289
  · exact cover_390364
#print axioms cover_390288

def state_390287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_390287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390287 := by
  apply coveredState_split_literal (state := state_390287) 3
    state_390288 state_390435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390288
  · exact cover_390435
#print axioms cover_390287

def state_390286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_390286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390286 := by
  apply coveredState_split_literal (state := state_390286) 4
    state_390287 state_390442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390287
  · exact cover_390442
#print axioms cover_390286

def state_390285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390285 := by
  apply coveredState_split_literal (state := state_390285) 2
    state_390286 state_390449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390286
  · exact cover_390449
#print axioms cover_390285

def state_390273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390273 := by
  apply coveredState_split_literal (state := state_390273) 1
    state_390274 state_390285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390274
  · exact cover_390285
#print axioms cover_390273
end Mub6.Numerical.CircleFullPrototype.Forest
