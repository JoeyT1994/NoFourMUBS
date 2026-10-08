import CircleFullInterface
import CircleForestAssembly0005
import CircleForestChunk0026
import CircleForestChunk0028
import CircleForestChunk0029
import CircleForestChunk0030
import CircleForestChunk0031
import CircleForestChunk0032
import CircleForestChunk0033
import CircleForestChunk0034
import CircleForestChunk0035
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_172270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_172270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172270 := by
  apply coveredState_split_literal (state := state_172270) 3
    state_172271 state_172458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172271
  · exact cover_172458
#print axioms cover_172270

def state_179193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
theorem cover_179193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179193 := by
  apply coveredState_split_literal (state := state_179193) 4
    state_179194 state_180011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179194
  · exact cover_180011
#print axioms cover_179193

def state_182320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_182320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182320 := by
  apply coveredState_split_literal (state := state_182320) 2
    state_182321 state_182616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182321
  · exact cover_182616
#print axioms cover_182320

def state_181940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_181940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181940 := by
  apply coveredState_split_literal (state := state_181940) 1
    state_181941 state_182320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181941
  · exact cover_182320
#print axioms cover_181940

def state_180972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_180972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180972 := by
  apply coveredState_split_literal (state := state_180972) 4
    state_180973 state_181940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180973
  · exact cover_181940
#print axioms cover_180972

def state_179192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_179192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179192 := by
  apply coveredState_split_literal (state := state_179192) 3
    state_179193 state_180972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179193
  · exact cover_180972
#print axioms cover_179192

def state_178952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_178952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178952 := by
  apply coveredState_split_literal (state := state_178952) 0
    state_178953 state_179192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178953
  · exact cover_179192
#print axioms cover_178952

def state_178951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_178951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178951 := by
  apply coveredState_split_literal (state := state_178951) 2
    state_178952 state_183615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178952
  · exact cover_183615
#print axioms cover_178951

def state_178950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_178950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178950 := by
  apply coveredState_split_literal (state := state_178950) 1
    state_178951 state_183724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178951
  · exact cover_183724
#print axioms cover_178950

def state_178876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_178876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178876 := by
  apply coveredState_split_literal (state := state_178876) 4
    state_178877 state_178950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178877
  · exact cover_178950
#print axioms cover_178876

def state_178798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_178798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178798 := by
  apply coveredState_split_literal (state := state_178798) 3
    state_178799 state_178876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178799
  · exact cover_178876
#print axioms cover_178798

def state_178797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178797 := by
  apply coveredState_split_literal (state := state_178797) 2
    state_178798 state_183841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178798
  · exact cover_183841
#print axioms cover_178797

def state_178796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178796 := by
  apply coveredState_split_literal (state := state_178796) 1
    state_178797 state_183880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178797
  · exact cover_183880
#print axioms cover_178796

def state_178795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178795 := by
  apply coveredState_split_literal (state := state_178795) 0
    state_178796 state_183937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178796
  · exact cover_183937
#print axioms cover_178795

def state_178717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_178717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178717 := by
  apply coveredState_split_literal (state := state_178717) 4
    state_178718 state_178795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178718
  · exact cover_178795
#print axioms cover_178717

def state_178569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_178569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178569 := by
  apply coveredState_split_literal (state := state_178569) 3
    state_178570 state_178717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178570
  · exact cover_178717
#print axioms cover_178569

def state_172269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_172269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172269 := by
  apply coveredState_split_literal (state := state_172269) 2
    state_172270 state_178569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172270
  · exact cover_178569
#print axioms cover_172269

def state_164411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_164411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164411 := by
  apply coveredState_split_literal (state := state_164411) 1
    state_164412 state_172269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164412
  · exact cover_172269
#print axioms cover_164411

def state_184932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_184932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184932 := by
  apply coveredState_split_literal (state := state_184932) 1
    state_184933 state_185924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184933
  · exact cover_185924
#print axioms cover_184932

def state_164410 : State := rootState
theorem cover_164410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164410 := by
  apply coveredState_split_literal (state := state_164410) 0
    state_164411 state_184932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164411
  · exact cover_184932
#print axioms cover_164410

def state_274142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_274142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274142 := by
  apply coveredState_split_literal (state := state_274142) 1
    state_274143 state_275076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274143
  · exact cover_275076
#print axioms cover_274142

def state_274141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
theorem cover_274141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274141 := by
  apply coveredState_split_literal (state := state_274141) 0
    state_274142 state_275371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274142
  · exact cover_275371
#print axioms cover_274141

def state_274140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 4)))
theorem cover_274140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274140 := by
  apply coveredState_split_literal (state := state_274140) 4
    state_274141 state_275750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274141
  · exact cover_275750
#print axioms cover_274140

def state_274139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 4)))
theorem cover_274139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274139 := by
  apply coveredState_split_literal (state := state_274139) 3
    state_274140 state_276715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274140
  · exact cover_276715
#print axioms cover_274139

def state_276797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 4)))
theorem cover_276797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276797 := by
  apply coveredState_split_literal (state := state_276797) 4
    state_276798 state_277761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276798
  · exact cover_277761
#print axioms cover_276797

def state_276796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
theorem cover_276796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276796 := by
  apply coveredState_split_literal (state := state_276796) 3
    state_276797 state_278572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276797
  · exact cover_278572
#print axioms cover_276796

def state_274138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_274138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274138 := by
  apply coveredState_split_literal (state := state_274138) 2
    state_274139 state_276796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274139
  · exact cover_276796
#print axioms cover_274138

def state_274026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_274026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274026 := by
  apply coveredState_split_literal (state := state_274026) 1
    state_274027 state_274138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274027
  · exact cover_274138
#print axioms cover_274026

def state_273904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_273904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273904 := by
  apply coveredState_split_literal (state := state_273904) 0
    state_273905 state_274026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273905
  · exact cover_274026
#print axioms cover_273904

def state_273903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_273903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273903 := by
  apply coveredState_split_literal (state := state_273903) 4
    state_273904 state_278725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273904
  · exact cover_278725
#print axioms cover_273903

def state_272999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_272999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272999 := by
  apply coveredState_split_literal (state := state_272999) 3
    state_273000 state_273903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273000
  · exact cover_273903
#print axioms cover_272999

def state_272998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272998 := by
  apply coveredState_split_literal (state := state_272998) 2
    state_272999 state_278794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272999
  · exact cover_278794
#print axioms cover_272998

def state_272936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272936 := by
  apply coveredState_split_literal (state := state_272936) 1
    state_272937 state_272998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272937
  · exact cover_272998
#print axioms cover_272936

def state_272834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272834 := by
  apply coveredState_split_literal (state := state_272834) 0
    state_272835 state_272936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272835
  · exact cover_272936
#print axioms cover_272834

def state_272833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_272833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272833 := by
  apply coveredState_split_literal (state := state_272833) 4
    state_272834 state_278909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272834
  · exact cover_278909
#print axioms cover_272833

def state_272559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_272559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272559 := by
  apply coveredState_split_literal (state := state_272559) 3
    state_272560 state_272833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272560
  · exact cover_272833
#print axioms cover_272559

def state_272558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_272558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272558 := by
  apply coveredState_split_literal (state := state_272558) 2
    state_272559 state_278992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272559
  · exact cover_278992
#print axioms cover_272558

def state_281325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281325 := by
  apply coveredState_split_literal (state := state_281325) 2
    state_281326 state_282101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281326
  · exact cover_282101
#print axioms cover_281325

def state_281324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_281324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281324 := by
  apply coveredState_split_literal (state := state_281324) 1
    state_281325 state_282442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281325
  · exact cover_282442
#print axioms cover_281324

def state_281314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_281314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281314 := by
  apply coveredState_split_literal (state := state_281314) 4
    state_281315 state_281324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281315
  · exact cover_281324
#print axioms cover_281314

def state_281214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_281214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281214 := by
  apply coveredState_split_literal (state := state_281214) 0
    state_281215 state_281314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281215
  · exact cover_281314
#print axioms cover_281214

def state_281212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_281212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281212 := by
  apply coveredState_split_literal (state := state_281212) 4
    state_281213 state_281214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281213
  · exact cover_281214
#print axioms cover_281212

def state_281018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_281018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281018 := by
  apply coveredState_split_literal (state := state_281018) 3
    state_281019 state_281212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281019
  · exact cover_281212
#print axioms cover_281018

def state_281017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_281017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281017 := by
  apply coveredState_split_literal (state := state_281017) 2
    state_281018 state_282473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281018
  · exact cover_282473
#print axioms cover_281017

def state_280059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_280059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280059 := by
  apply coveredState_split_literal (state := state_280059) 1
    state_280060 state_281017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280060
  · exact cover_281017
#print axioms cover_280059

def state_279719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_279719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279719 := by
  apply coveredState_split_literal (state := state_279719) 0
    state_279720 state_280059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279720
  · exact cover_280059
#print axioms cover_279719

def state_284117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_284117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284117 := by
  apply coveredState_split_literal (state := state_284117) 0
    state_284118 state_284539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284118
  · exact cover_284539
#print axioms cover_284117

def state_284116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_284116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284116 := by
  apply coveredState_split_literal (state := state_284116) 3
    state_284117 state_285184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_284117
  · exact cover_285184
#print axioms cover_284116

def state_283420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283420 := by
  apply coveredState_split_literal (state := state_283420) 2
    state_283421 state_284116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283421
  · exact cover_284116
#print axioms cover_283420

def state_283419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283419 := by
  apply coveredState_split_literal (state := state_283419) 1
    state_283420 state_285227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283420
  · exact cover_285227
#print axioms cover_283419

def state_283418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_283418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283418 := by
  apply coveredState_split_literal (state := state_283418) 4
    state_283419 state_285406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283419
  · exact cover_285406
#print axioms cover_283418

def state_283334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_283334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283334 := by
  apply coveredState_split_literal (state := state_283334) 0
    state_283335 state_283418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283335
  · exact cover_283418
#print axioms cover_283334

def state_283333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_283333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283333 := by
  apply coveredState_split_literal (state := state_283333) 4
    state_283334 state_285441
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283334
  · exact cover_285441
#print axioms cover_283333

def state_283087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_283087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283087 := by
  apply coveredState_split_literal (state := state_283087) 3
    state_283088 state_283333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283088
  · exact cover_283333
#print axioms cover_283087

def state_283086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_283086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283086 := by
  apply coveredState_split_literal (state := state_283086) 2
    state_283087 state_285442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283087
  · exact cover_285442
#print axioms cover_283086

def state_282926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282926 := by
  apply coveredState_split_literal (state := state_282926) 1
    state_282927 state_283086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282927
  · exact cover_283086
#print axioms cover_282926

def state_282532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282532 := by
  apply coveredState_split_literal (state := state_282532) 0
    state_282533 state_282926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282533
  · exact cover_282926
#print axioms cover_282532

def state_279718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_279718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279718 := by
  apply coveredState_split_literal (state := state_279718) 4
    state_279719 state_282532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279719
  · exact cover_282532
#print axioms cover_279718

def state_279594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_279594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279594 := by
  apply coveredState_split_literal (state := state_279594) 3
    state_279595 state_279718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279595
  · exact cover_279718
#print axioms cover_279594

def state_279593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_279593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279593 := by
  apply coveredState_split_literal (state := state_279593) 2
    state_279594 state_285609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279594
  · exact cover_285609
#print axioms cover_279593

def state_272557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_272557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272557 := by
  apply coveredState_split_literal (state := state_272557) 1
    state_272558 state_279593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272558
  · exact cover_279593
#print axioms cover_272557

def state_286000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_286000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286000 := by
  apply coveredState_split_literal (state := state_286000) 1
    state_286001 state_286156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286001
  · exact cover_286156
#print axioms cover_286000

def state_287612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
theorem cover_287612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287612 := by
  apply coveredState_split_literal (state := state_287612) 4
    state_287613 state_288380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287613
  · exact cover_288380
#print axioms cover_287612

def state_287611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_287611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287611 := by
  apply coveredState_split_literal (state := state_287611) 3
    state_287612 state_288701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_287612
  · exact cover_288701
#print axioms cover_287611
end Mub6.Numerical.CircleFullPrototype.Forest
