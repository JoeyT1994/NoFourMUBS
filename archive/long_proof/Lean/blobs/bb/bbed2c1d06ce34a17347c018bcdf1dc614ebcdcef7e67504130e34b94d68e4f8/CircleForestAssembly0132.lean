import CircleFullInterface
import CircleForestChunk0518
import CircleForestChunk0519
import CircleForestChunk0520
import CircleForestChunk0521
import CircleForestChunk0522
import CircleForestChunk0523
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_285919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_285919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285919 := by
  apply coveredState_split_literal (state := state_285919) 4
    state_285920 state_285959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285920
  · exact cover_285959
#print axioms cover_285919

def state_286085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_286085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286085 := by
  apply coveredState_split_literal (state := state_286085) 4
    state_286086 state_286127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286086
  · exact cover_286127
#print axioms cover_286085

def state_286025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_286025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286025 := by
  apply coveredState_split_literal (state := state_286025) 3
    state_286026 state_286085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286026
  · exact cover_286085
#print axioms cover_286025

def state_286001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_286001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286001 := by
  apply coveredState_split_literal (state := state_286001) 2
    state_286002 state_286025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286002
  · exact cover_286025
#print axioms cover_286001

def state_286268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 4)))
theorem cover_286268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286268 := by
  apply coveredState_split_literal (state := state_286268) 4
    state_286269 state_286302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286269
  · exact cover_286302
#print axioms cover_286268

def state_286267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
theorem cover_286267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286267 := by
  apply coveredState_split_literal (state := state_286267) 3
    state_286268 state_286353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286268
  · exact cover_286353
#print axioms cover_286267

def state_286235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_286235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286235 := by
  apply coveredState_split_literal (state := state_286235) 2
    state_286236 state_286267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286236
  · exact cover_286267
#print axioms cover_286235

def state_286203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_286203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286203 := by
  apply coveredState_split_literal (state := state_286203) 1
    state_286204 state_286235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286204
  · exact cover_286235
#print axioms cover_286203

def state_286202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_286202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286202 := by
  apply coveredState_split_literal (state := state_286202) 0
    state_286203 state_286412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286203
  · exact cover_286412
#print axioms cover_286202

def state_286201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_286201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286201 := by
  apply coveredState_split_literal (state := state_286201) 4
    state_286202 state_286423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286202
  · exact cover_286423
#print axioms cover_286201

def state_286157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_286157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286157 := by
  apply coveredState_split_literal (state := state_286157) 3
    state_286158 state_286201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286158
  · exact cover_286201
#print axioms cover_286157

def state_286564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
theorem cover_286564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286564 := by
  apply coveredState_split_literal (state := state_286564) 2
    state_286565 state_286578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286565
  · exact cover_286578
#print axioms cover_286564

def state_286563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
theorem cover_286563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286563 := by
  apply coveredState_split_literal (state := state_286563) 1
    state_286564 state_286635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286564
  · exact cover_286635
#print axioms cover_286563

def state_286562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
theorem cover_286562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286562 := by
  apply coveredState_split_literal (state := state_286562) 4
    state_286563 state_286644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286563
  · exact cover_286644
#print axioms cover_286562

def state_286552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_286552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286552 := by
  apply coveredState_split_literal (state := state_286552) 3
    state_286553 state_286562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286553
  · exact cover_286562
#print axioms cover_286552

def state_286546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_286546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286546 := by
  apply coveredState_split_literal (state := state_286546) 2
    state_286547 state_286552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286547
  · exact cover_286552
#print axioms cover_286546

def state_286482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_286482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286482 := by
  apply coveredState_split_literal (state := state_286482) 1
    state_286483 state_286546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286483
  · exact cover_286546
#print axioms cover_286482

def state_286456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_286456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286456 := by
  apply coveredState_split_literal (state := state_286456) 0
    state_286457 state_286482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286457
  · exact cover_286482
#print axioms cover_286456

def state_286455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_286455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286455 := by
  apply coveredState_split_literal (state := state_286455) 4
    state_286456 state_286659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286456
  · exact cover_286659
#print axioms cover_286455

def state_286698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286698 := by
  apply coveredState_split_literal (state := state_286698) 2
    state_286699 state_286756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286699
  · exact cover_286756
#print axioms cover_286698

def state_286670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286670 := by
  apply coveredState_split_literal (state := state_286670) 1
    state_286671 state_286698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286671
  · exact cover_286698
#print axioms cover_286670

def state_286776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286776 := by
  apply coveredState_split_literal (state := state_286776) 2
    state_286777 state_286792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286777
  · exact cover_286792
#print axioms cover_286776

def state_286943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 17)))
theorem cover_286943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286943 := by
  apply coveredState_split_literal (state := state_286943) 2
    state_286944 state_286963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286944
  · exact cover_286963
#print axioms cover_286943

def state_286899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 8)))
theorem cover_286899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286899 := by
  apply coveredState_split_literal (state := state_286899) 4
    state_286900 state_286943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286900
  · exact cover_286943
#print axioms cover_286899

def state_286898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_286898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286898 := by
  apply coveredState_split_literal (state := state_286898) 3
    state_286899 state_287010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286899
  · exact cover_287010
#print axioms cover_286898

def state_286886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
theorem cover_286886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286886 := by
  apply coveredState_split_literal (state := state_286886) 0
    state_286887 state_286898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286887
  · exact cover_286898
#print axioms cover_286886

def state_286874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
theorem cover_286874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286874 := by
  apply coveredState_split_literal (state := state_286874) 2
    state_286875 state_286886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286875
  · exact cover_286886
#print axioms cover_286874

def state_286873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
theorem cover_286873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286873 := by
  apply coveredState_split_literal (state := state_286873) 1
    state_286874 state_287025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286874
  · exact cover_287025
#print axioms cover_286873

def state_286872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
theorem cover_286872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286872 := by
  apply coveredState_split_literal (state := state_286872) 4
    state_286873 state_287052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286873
  · exact cover_287052
#print axioms cover_286872

def state_286871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_286871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286871 := by
  apply coveredState_split_literal (state := state_286871) 3
    state_286872 state_287069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286872
  · exact cover_287069
#print axioms cover_286871

def state_286847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286847 := by
  apply coveredState_split_literal (state := state_286847) 2
    state_286848 state_286871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286848
  · exact cover_286871
#print axioms cover_286847

def state_286775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_286775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286775 := by
  apply coveredState_split_literal (state := state_286775) 1
    state_286776 state_286847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_286776
  · exact cover_286847
#print axioms cover_286775
end Mub6.Numerical.CircleFullPrototype.Forest
