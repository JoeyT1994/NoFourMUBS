import CircleFullInterface
import CircleForestChunk0612
import CircleForestChunk0613
import CircleForestChunk0614
import CircleForestChunk0615
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1335914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 51)))
theorem cover_1335914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335914 := by
  apply coveredState_split_literal (state := state_1335914) 2
    state_1335915 state_1335958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335915
  · exact cover_1335958
#print axioms cover_1335914

def state_1335912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 51)))
theorem cover_1335912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335912 := by
  apply coveredState_split_literal (state := state_1335912) 1
    state_1335913 state_1335914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335913
  · exact cover_1335914
#print axioms cover_1335912

def state_1335892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 25)))
theorem cover_1335892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335892 := by
  apply coveredState_split_literal (state := state_1335892) 4
    state_1335893 state_1335912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335893
  · exact cover_1335912
#print axioms cover_1335892

def state_1335876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 25)))
theorem cover_1335876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335876 := by
  apply coveredState_split_literal (state := state_1335876) 0
    state_1335877 state_1335892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335877
  · exact cover_1335892
#print axioms cover_1335876

def state_1335875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 24 else 25)))
theorem cover_1335875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335875 := by
  apply coveredState_split_literal (state := state_1335875) 3
    state_1335876 state_1336019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335876
  · exact cover_1336019
#print axioms cover_1335875

def state_1335831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1335831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335831 := by
  apply coveredState_split_literal (state := state_1335831) 2
    state_1335832 state_1335875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335832
  · exact cover_1335875
#print axioms cover_1335831

def state_1336030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 24 else 25)))
theorem cover_1336030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336030 := by
  apply coveredState_split_literal (state := state_1336030) 3
    state_1336031 state_1336094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336031
  · exact cover_1336094
#print axioms cover_1336030

def state_1336028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1336028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336028 := by
  apply coveredState_split_literal (state := state_1336028) 2
    state_1336029 state_1336030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336029
  · exact cover_1336030
#print axioms cover_1336028

def state_1335830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1335830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335830 := by
  apply coveredState_split_literal (state := state_1335830) 1
    state_1335831 state_1336028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335831
  · exact cover_1336028
#print axioms cover_1335830

def state_1335818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 12)))
theorem cover_1335818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335818 := by
  apply coveredState_split_literal (state := state_1335818) 4
    state_1335819 state_1335830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335819
  · exact cover_1335830
#print axioms cover_1335818

def state_1335817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 12)))
theorem cover_1335817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335817 := by
  apply coveredState_split_literal (state := state_1335817) 3
    state_1335818 state_1336095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335818
  · exact cover_1336095
#print axioms cover_1335817

def state_1335803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 12)))
theorem cover_1335803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335803 := by
  apply coveredState_split_literal (state := state_1335803) 0
    state_1335804 state_1335817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335804
  · exact cover_1335817
#print axioms cover_1335803

def state_1335771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
theorem cover_1335771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335771 := by
  apply coveredState_split_literal (state := state_1335771) 2
    state_1335772 state_1335803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335772
  · exact cover_1335803
#print axioms cover_1335771

def state_1335721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
theorem cover_1335721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335721 := by
  apply coveredState_split_literal (state := state_1335721) 1
    state_1335722 state_1335771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335722
  · exact cover_1335771
#print axioms cover_1335721

def state_1336128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 26)))
theorem cover_1336128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336128 := by
  apply coveredState_split_literal (state := state_1336128) 1
    state_1336129 state_1336158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336129
  · exact cover_1336158
#print axioms cover_1336128

def state_1336127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 13)))
theorem cover_1336127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336127 := by
  apply coveredState_split_literal (state := state_1336127) 4
    state_1336128 state_1336193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336128
  · exact cover_1336193
#print axioms cover_1336127

def state_1336126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 13)))
theorem cover_1336126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336126 := by
  apply coveredState_split_literal (state := state_1336126) 3
    state_1336127 state_1336196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336127
  · exact cover_1336196
#print axioms cover_1336126

def state_1336118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 13)))
theorem cover_1336118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336118 := by
  apply coveredState_split_literal (state := state_1336118) 0
    state_1336119 state_1336126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336119
  · exact cover_1336126
#print axioms cover_1336118

def state_1336112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 13)))
theorem cover_1336112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336112 := by
  apply coveredState_split_literal (state := state_1336112) 2
    state_1336113 state_1336118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336113
  · exact cover_1336118
#print axioms cover_1336112

def state_1336102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 13)))
theorem cover_1336102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336102 := by
  apply coveredState_split_literal (state := state_1336102) 1
    state_1336103 state_1336112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336103
  · exact cover_1336112
#print axioms cover_1336102

def state_1335720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
theorem cover_1335720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335720 := by
  apply coveredState_split_literal (state := state_1335720) 4
    state_1335721 state_1336102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335721
  · exact cover_1336102
#print axioms cover_1335720

def state_1335719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1335719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335719 := by
  apply coveredState_split_literal (state := state_1335719) 3
    state_1335720 state_1336203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335720
  · exact cover_1336203
#print axioms cover_1335719

def state_1336312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1336312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336312 := by
  apply coveredState_split_literal (state := state_1336312) 2
    state_1336313 state_1336330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336313
  · exact cover_1336330
#print axioms cover_1336312

def state_1336268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1336268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336268 := by
  apply coveredState_split_literal (state := state_1336268) 1
    state_1336269 state_1336312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336269
  · exact cover_1336312
#print axioms cover_1336268

def state_1336267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 25)))
theorem cover_1336267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336267 := by
  apply coveredState_split_literal (state := state_1336267) 0
    state_1336268 state_1336389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336268
  · exact cover_1336389
#print axioms cover_1336267

def state_1336261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 12)))
theorem cover_1336261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336261 := by
  apply coveredState_split_literal (state := state_1336261) 4
    state_1336262 state_1336267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336262
  · exact cover_1336267
#print axioms cover_1336261

def state_1336260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 12)))
theorem cover_1336260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336260 := by
  apply coveredState_split_literal (state := state_1336260) 3
    state_1336261 state_1336392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336261
  · exact cover_1336392
#print axioms cover_1336260

def state_1336240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
theorem cover_1336240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336240 := by
  apply coveredState_split_literal (state := state_1336240) 2
    state_1336241 state_1336260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336241
  · exact cover_1336260
#print axioms cover_1336240

def state_1336224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
theorem cover_1336224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336224 := by
  apply coveredState_split_literal (state := state_1336224) 1
    state_1336225 state_1336240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336225
  · exact cover_1336240
#print axioms cover_1336224

def state_1336223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
theorem cover_1336223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336223 := by
  apply coveredState_split_literal (state := state_1336223) 4
    state_1336224 state_1336405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336224
  · exact cover_1336405
#print axioms cover_1336223

def state_1336222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1336222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336222 := by
  apply coveredState_split_literal (state := state_1336222) 3
    state_1336223 state_1336446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336223
  · exact cover_1336446
#print axioms cover_1336222

def state_1335718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_1335718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335718 := by
  apply coveredState_split_literal (state := state_1335718) 0
    state_1335719 state_1336222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1335719
  · exact cover_1336222
#print axioms cover_1335718
end Mub6.Numerical.CircleFullD0.Forest
