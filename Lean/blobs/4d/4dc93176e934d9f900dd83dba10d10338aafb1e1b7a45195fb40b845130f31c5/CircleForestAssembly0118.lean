import CircleFullInterface
import CircleForestAssembly0117
import CircleForestChunk0466
import CircleForestChunk0468
import CircleForestChunk0469
import CircleForestChunk0470
import CircleForestChunk0471
import CircleForestChunk0472
import CircleForestChunk0473
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_273246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
theorem cover_273246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273246 := by
  apply coveredState_split_literal (state := state_273246) 4
    state_273247 state_273690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273247
  · exact cover_273690
#print axioms cover_273246

def state_273753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 4)))
theorem cover_273753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273753 := by
  apply coveredState_split_literal (state := state_273753) 4
    state_273754 state_273817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273754
  · exact cover_273817
#print axioms cover_273753

def state_273245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_273245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273245 := by
  apply coveredState_split_literal (state := state_273245) 2
    state_273246 state_273753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273246
  · exact cover_273753
#print axioms cover_273245

def state_273233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273233 := by
  apply coveredState_split_literal (state := state_273233) 3
    state_273234 state_273245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273234
  · exact cover_273245
#print axioms cover_273233

def state_273123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273123 := by
  apply coveredState_split_literal (state := state_273123) 1
    state_273124 state_273233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273124
  · exact cover_273233
#print axioms cover_273123

def state_273001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273001 := by
  apply coveredState_split_literal (state := state_273001) 0
    state_273002 state_273123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273002
  · exact cover_273123
#print axioms cover_273001

def state_273000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_273000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273000 := by
  apply coveredState_split_literal (state := state_273000) 4
    state_273001 state_273878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273001
  · exact cover_273878
#print axioms cover_273000

def state_273913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 4)))
theorem cover_273913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273913 := by
  apply coveredState_split_literal (state := state_273913) 4
    state_273914 state_273955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273914
  · exact cover_273955
#print axioms cover_273913

def state_273912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 4)))
theorem cover_273912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273912 := by
  apply coveredState_split_literal (state := state_273912) 3
    state_273913 state_273984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273913
  · exact cover_273984
#print axioms cover_273912

def state_273911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_273911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273911 := by
  apply coveredState_split_literal (state := state_273911) 2
    state_273912 state_273989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273912
  · exact cover_273989
#print axioms cover_273911

def state_273905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_273905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273905 := by
  apply coveredState_split_literal (state := state_273905) 1
    state_273906 state_273911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273906
  · exact cover_273911
#print axioms cover_273905

def state_274027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_274027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274027 := by
  apply coveredState_split_literal (state := state_274027) 2
    state_274028 state_274081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274028
  · exact cover_274081
#print axioms cover_274027

def state_274167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 17)))
theorem cover_274167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274167 := by
  apply coveredState_split_literal (state := state_274167) 0
    state_274168 state_274195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274168
  · exact cover_274195
#print axioms cover_274167

def state_274145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 8)))
theorem cover_274145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274145 := by
  apply coveredState_split_literal (state := state_274145) 4
    state_274146 state_274167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274146
  · exact cover_274167
#print axioms cover_274145

def state_274237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 16)))
theorem cover_274237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274237 := by
  apply coveredState_split_literal (state := state_274237) 0
    state_274238 state_274265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274238
  · exact cover_274265
#print axioms cover_274237

def state_274309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274309 := by
  apply coveredState_split_literal (state := state_274309) 3
    state_274310 state_274361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274310
  · exact cover_274361
#print axioms cover_274309

def state_274305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274305 := by
  apply coveredState_split_literal (state := state_274305) 1
    state_274306 state_274309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274306
  · exact cover_274309
#print axioms cover_274305

def state_274377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274377 := by
  apply coveredState_split_literal (state := state_274377) 3
    state_274378 state_274429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274378
  · exact cover_274429
#print axioms cover_274377

def state_274447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 34)))
theorem cover_274447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274447 := by
  apply coveredState_split_literal (state := state_274447) 0
    state_274448 state_274507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274448
  · exact cover_274507
#print axioms cover_274447

def state_274571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 91) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 35)))
theorem cover_274571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274571 := by
  apply coveredState_split_literal (state := state_274571) 3
    state_274572 state_274609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274572
  · exact cover_274609
#print axioms cover_274571

def state_274521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 35)))
theorem cover_274521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274521 := by
  apply coveredState_split_literal (state := state_274521) 1
    state_274522 state_274571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274522
  · exact cover_274571
#print axioms cover_274521

def state_274520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 35)))
theorem cover_274520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274520 := by
  apply coveredState_split_literal (state := state_274520) 0
    state_274521 state_274646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274521
  · exact cover_274646
#print axioms cover_274520

def state_274446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 17)))
theorem cover_274446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274446 := by
  apply coveredState_split_literal (state := state_274446) 4
    state_274447 state_274520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274447
  · exact cover_274520
#print axioms cover_274446

def state_274697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
theorem cover_274697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274697 := by
  apply coveredState_split_literal (state := state_274697) 1
    state_274698 state_274745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274698
  · exact cover_274745
#print axioms cover_274697

def state_274763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
theorem cover_274763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274763 := by
  apply coveredState_split_literal (state := state_274763) 3
    state_274764 state_274801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274764
  · exact cover_274801
#print axioms cover_274763

def state_274762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
theorem cover_274762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274762 := by
  apply coveredState_split_literal (state := state_274762) 1
    state_274763 state_274838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274763
  · exact cover_274838
#print axioms cover_274762

def state_274696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
theorem cover_274696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274696 := by
  apply coveredState_split_literal (state := state_274696) 0
    state_274697 state_274762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274697
  · exact cover_274762
#print axioms cover_274696

def state_274695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 17)))
theorem cover_274695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274695 := by
  apply coveredState_split_literal (state := state_274695) 4
    state_274696 state_274867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274696
  · exact cover_274867
#print axioms cover_274695

def state_274445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 17)))
theorem cover_274445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274445 := by
  apply coveredState_split_literal (state := state_274445) 2
    state_274446 state_274695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274446
  · exact cover_274695
#print axioms cover_274445

def state_274869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 17)))
theorem cover_274869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274869 := by
  apply coveredState_split_literal (state := state_274869) 4
    state_274870 state_274895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274870
  · exact cover_274895
#print axioms cover_274869

def state_274868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 17)))
theorem cover_274868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274868 := by
  apply coveredState_split_literal (state := state_274868) 2
    state_274869 state_274952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274869
  · exact cover_274952
#print axioms cover_274868

def state_274444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 17)))
theorem cover_274444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274444 := by
  apply coveredState_split_literal (state := state_274444) 3
    state_274445 state_274868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_274445
  · exact cover_274868
#print axioms cover_274444
end Mub6.Numerical.CircleFullPrototype.Forest
