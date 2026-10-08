import CircleFullInterface
import CircleForestAssembly0029
import CircleForestAssembly0030
import CircleForestAssembly0032
import CircleForestAssembly0033
import CircleForestChunk0137
import CircleForestChunk0138
import CircleForestChunk0139
import CircleForestChunk0140
import CircleForestChunk0141
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_970473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_970473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970473 := by
  apply coveredState_split_literal (state := state_970473) 2
    state_970474 state_970549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970474
  · exact cover_970549
#print axioms cover_970473

def state_970197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_970197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970197 := by
  apply coveredState_split_literal (state := state_970197) 1
    state_970198 state_970473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970198
  · exact cover_970473
#print axioms cover_970197

def state_970196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_970196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970196 := by
  apply coveredState_split_literal (state := state_970196) 0
    state_970197 state_970574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970197
  · exact cover_970574
#print axioms cover_970196

def state_970661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 29)))
theorem cover_970661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970661 := by
  apply coveredState_split_literal (state := state_970661) 3
    state_970662 state_970703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970662
  · exact cover_970703
#print axioms cover_970661

def state_970660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_970660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970660 := by
  apply coveredState_split_literal (state := state_970660) 2
    state_970661 state_970748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970661
  · exact cover_970748
#print axioms cover_970660

def state_970638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_970638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970638 := by
  apply coveredState_split_literal (state := state_970638) 1
    state_970639 state_970660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970639
  · exact cover_970660
#print axioms cover_970638

def state_970637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
theorem cover_970637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970637 := by
  apply coveredState_split_literal (state := state_970637) 0
    state_970638 state_970749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970638
  · exact cover_970749
#print axioms cover_970637

def state_970195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 14)))
theorem cover_970195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970195 := by
  apply coveredState_split_literal (state := state_970195) 4
    state_970196 state_970637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970196
  · exact cover_970637
#print axioms cover_970195

def state_970856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 29)))
theorem cover_970856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970856 := by
  apply coveredState_split_literal (state := state_970856) 0
    state_970857 state_970900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970857
  · exact cover_970900
#print axioms cover_970856

def state_970810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 14)))
theorem cover_970810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970810 := by
  apply coveredState_split_literal (state := state_970810) 4
    state_970811 state_970856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970811
  · exact cover_970856
#print axioms cover_970810

def state_970194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
theorem cover_970194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970194 := by
  apply coveredState_split_literal (state := state_970194) 3
    state_970195 state_970810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970195
  · exact cover_970810
#print axioms cover_970194

def state_970972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
theorem cover_970972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970972 := by
  apply coveredState_split_literal (state := state_970972) 0
    state_970973 state_971010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970973
  · exact cover_971010
#print axioms cover_970972

def state_970971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 14)))
theorem cover_970971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970971 := by
  apply coveredState_split_literal (state := state_970971) 4
    state_970972 state_971041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970972
  · exact cover_971041
#print axioms cover_970971

def state_970933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
theorem cover_970933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970933 := by
  apply coveredState_split_literal (state := state_970933) 3
    state_970934 state_970971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970934
  · exact cover_970971
#print axioms cover_970933

def state_970193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_970193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970193 := by
  apply coveredState_split_literal (state := state_970193) 2
    state_970194 state_970933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_970194
  · exact cover_970933
#print axioms cover_970193

def state_969037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_969037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969037 := by
  apply coveredState_split_literal (state := state_969037) 1
    state_969038 state_970193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969038
  · exact cover_970193
#print axioms cover_969037

def state_968827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_968827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968827 := by
  apply coveredState_split_literal (state := state_968827) 0
    state_968828 state_969037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968828
  · exact cover_969037
#print axioms cover_968827

def state_968826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_968826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968826 := by
  apply coveredState_split_literal (state := state_968826) 4
    state_968827 state_971086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968827
  · exact cover_971086
#print axioms cover_968826

def state_968414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_968414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968414 := by
  apply coveredState_split_literal (state := state_968414) 3
    state_968415 state_968826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968415
  · exact cover_968826
#print axioms cover_968414

def state_966980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966980 := by
  apply coveredState_split_literal (state := state_966980) 2
    state_966981 state_968414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966981
  · exact cover_968414
#print axioms cover_966980

def state_966768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966768 := by
  apply coveredState_split_literal (state := state_966768) 1
    state_966769 state_966980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966769
  · exact cover_966980
#print axioms cover_966768

def state_966700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966700 := by
  apply coveredState_split_literal (state := state_966700) 0
    state_966701 state_966768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966701
  · exact cover_966768
#print axioms cover_966700

def state_942028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_942028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942028 := by
  apply coveredState_split_literal (state := state_942028) 4
    state_942029 state_966700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942029
  · exact cover_966700
#print axioms cover_942028

def state_971202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
theorem cover_971202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971202 := by
  apply coveredState_split_literal (state := state_971202) 0
    state_971203 state_971252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971203
  · exact cover_971252
#print axioms cover_971202

def state_971188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 6)))
theorem cover_971188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971188 := by
  apply coveredState_split_literal (state := state_971188) 4
    state_971189 state_971202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971189
  · exact cover_971202
#print axioms cover_971188

def state_971187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
theorem cover_971187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971187 := by
  apply coveredState_split_literal (state := state_971187) 3
    state_971188 state_971275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971188
  · exact cover_971275
#print axioms cover_971187

def state_971177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_971177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971177 := by
  apply coveredState_split_literal (state := state_971177) 2
    state_971178 state_971187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971178
  · exact cover_971187
#print axioms cover_971177

def state_971176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_971176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971176 := by
  apply coveredState_split_literal (state := state_971176) 1
    state_971177 state_971284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971177
  · exact cover_971284
#print axioms cover_971176

def state_971148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_971148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971148 := by
  apply coveredState_split_literal (state := state_971148) 0
    state_971149 state_971176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971149
  · exact cover_971176
#print axioms cover_971148

def state_971339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_971339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971339 := by
  apply coveredState_split_literal (state := state_971339) 2
    state_971340 state_971349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971340
  · exact cover_971349
#print axioms cover_971339

def state_971333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_971333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971333 := by
  apply coveredState_split_literal (state := state_971333) 1
    state_971334 state_971339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971334
  · exact cover_971339
#print axioms cover_971333

def state_971325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_971325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971325 := by
  apply coveredState_split_literal (state := state_971325) 0
    state_971326 state_971333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971326
  · exact cover_971333
#print axioms cover_971325
end Mub6.Numerical.CircleFullD0.Forest
