import CircleFullInterface
import CircleForestAssembly0295
import CircleForestAssembly0296
import CircleForestAssembly0297
import CircleForestAssembly0298
import CircleForestChunk1144
import CircleForestChunk1146
import CircleForestChunk1147
import CircleForestChunk1148
import CircleForestChunk1149
import CircleForestChunk1150
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1575875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1575875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575875 := by
  apply coveredState_split_literal (state := state_1575875) 4
    state_1575876 state_1575905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575876
  · exact cover_1575905
#print axioms cover_1575875

def state_1575873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
theorem cover_1575873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575873 := by
  apply coveredState_split_literal (state := state_1575873) 1
    state_1575874 state_1575875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575874
  · exact cover_1575875
#print axioms cover_1575873

def state_1575872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 23)))
theorem cover_1575872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575872 := by
  apply coveredState_split_literal (state := state_1575872) 3
    state_1575873 state_1575980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575873
  · exact cover_1575980
#print axioms cover_1575872

def state_1575676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
theorem cover_1575676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575676 := by
  apply coveredState_split_literal (state := state_1575676) 2
    state_1575677 state_1575872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575677
  · exact cover_1575872
#print axioms cover_1575676

def state_1575672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1575672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575672 := by
  apply coveredState_split_literal (state := state_1575672) 4
    state_1575673 state_1575676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575673
  · exact cover_1575676
#print axioms cover_1575672

def state_1575662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1575662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575662 := by
  apply coveredState_split_literal (state := state_1575662) 1
    state_1575663 state_1575672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575663
  · exact cover_1575672
#print axioms cover_1575662

def state_1575661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
theorem cover_1575661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575661 := by
  apply coveredState_split_literal (state := state_1575661) 0
    state_1575662 state_1576021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575662
  · exact cover_1576021
#print axioms cover_1575661

def state_1575660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
theorem cover_1575660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575660 := by
  apply coveredState_split_literal (state := state_1575660) 3
    state_1575661 state_1576028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575661
  · exact cover_1576028
#print axioms cover_1575660

def state_1575659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
theorem cover_1575659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575659 := by
  apply coveredState_split_literal (state := state_1575659) 2
    state_1575660 state_1576067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575660
  · exact cover_1576067
#print axioms cover_1575659

def state_1575657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1575657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575657 := by
  apply coveredState_split_literal (state := state_1575657) 4
    state_1575658 state_1575659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575658
  · exact cover_1575659
#print axioms cover_1575657

def state_1575653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1575653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575653 := by
  apply coveredState_split_literal (state := state_1575653) 1
    state_1575654 state_1575657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575654
  · exact cover_1575657
#print axioms cover_1575653

def state_1575177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
theorem cover_1575177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575177 := by
  apply coveredState_split_literal (state := state_1575177) 0
    state_1575178 state_1575653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575178
  · exact cover_1575653
#print axioms cover_1575177

def state_1575169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
theorem cover_1575169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575169 := by
  apply coveredState_split_literal (state := state_1575169) 4
    state_1575170 state_1575177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1575170
  · exact cover_1575177
#print axioms cover_1575169

def state_1574389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1574389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574389 := by
  apply coveredState_split_literal (state := state_1574389) 3
    state_1574390 state_1575169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574390
  · exact cover_1575169
#print axioms cover_1574389

def state_1573477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1573477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573477 := by
  apply coveredState_split_literal (state := state_1573477) 2
    state_1573478 state_1574389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573478
  · exact cover_1574389
#print axioms cover_1573477

def state_1573187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1573187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573187 := by
  apply coveredState_split_literal (state := state_1573187) 1
    state_1573188 state_1573477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573188
  · exact cover_1573477
#print axioms cover_1573187

def state_1572863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1572863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572863 := by
  apply coveredState_split_literal (state := state_1572863) 0
    state_1572864 state_1573187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572864
  · exact cover_1573187
#print axioms cover_1572863

def state_1576225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 51 else 51)))
theorem cover_1576225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576225 := by
  apply coveredState_split_literal (state := state_1576225) 3
    state_1576226 state_1576255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576226
  · exact cover_1576255
#print axioms cover_1576225

def state_1576224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576224 := by
  apply coveredState_split_literal (state := state_1576224) 2
    state_1576225 state_1576318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576225
  · exact cover_1576318
#print axioms cover_1576224

def state_1576223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576223 := by
  apply coveredState_split_literal (state := state_1576223) 1
    state_1576224 state_1576331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576224
  · exact cover_1576331
#print axioms cover_1576223

def state_1576213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576213 := by
  apply coveredState_split_literal (state := state_1576213) 0
    state_1576214 state_1576223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576214
  · exact cover_1576223
#print axioms cover_1576213

def state_1576183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 25)))
theorem cover_1576183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576183 := by
  apply coveredState_split_literal (state := state_1576183) 4
    state_1576184 state_1576213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576184
  · exact cover_1576213
#print axioms cover_1576183

def state_1576175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 25 else 25)))
theorem cover_1576175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576175 := by
  apply coveredState_split_literal (state := state_1576175) 3
    state_1576176 state_1576183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576176
  · exact cover_1576183
#print axioms cover_1576175

def state_1576174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
theorem cover_1576174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576174 := by
  apply coveredState_split_literal (state := state_1576174) 2
    state_1576175 state_1576366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576175
  · exact cover_1576366
#print axioms cover_1576174

def state_1576173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
theorem cover_1576173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576173 := by
  apply coveredState_split_literal (state := state_1576173) 1
    state_1576174 state_1576373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576174
  · exact cover_1576373
#print axioms cover_1576173

def state_1576457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 103)))
theorem cover_1576457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576457 := by
  apply coveredState_split_literal (state := state_1576457) 0
    state_1576458 state_1576521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576458
  · exact cover_1576521
#print axioms cover_1576457

def state_1576437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 51)))
theorem cover_1576437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576437 := by
  apply coveredState_split_literal (state := state_1576437) 4
    state_1576438 state_1576457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576438
  · exact cover_1576457
#print axioms cover_1576437

def state_1576421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 51 else 51)))
theorem cover_1576421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576421 := by
  apply coveredState_split_literal (state := state_1576421) 3
    state_1576422 state_1576437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576422
  · exact cover_1576437
#print axioms cover_1576421

def state_1576420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576420 := by
  apply coveredState_split_literal (state := state_1576420) 2
    state_1576421 state_1576546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576421
  · exact cover_1576546
#print axioms cover_1576420

def state_1576563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576563 := by
  apply coveredState_split_literal (state := state_1576563) 2
    state_1576564 state_1576619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576564
  · exact cover_1576619
#print axioms cover_1576563

def state_1576419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576419 := by
  apply coveredState_split_literal (state := state_1576419) 1
    state_1576420 state_1576563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576420
  · exact cover_1576563
#print axioms cover_1576419

def state_1576418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
theorem cover_1576418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576418 := by
  apply coveredState_split_literal (state := state_1576418) 0
    state_1576419 state_1576628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576419
  · exact cover_1576628
#print axioms cover_1576418
end Mub6.Numerical.CircleFullD0.Forest
