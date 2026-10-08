import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1667971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 15)))
def hex_1667971 : String := "4243410644060607430A05"
theorem cover_1667971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667971 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1667971)
  decide +kernel
#print axioms cover_1667971

def state_1667982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1667982 : String := "44054005420705"
theorem cover_1667982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667982)
  decide +kernel
#print axioms cover_1667982

def state_1667989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1667989 : String := "4344054005430A0505"
theorem cover_1667989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1667989)
  decide +kernel
#print axioms cover_1667989

def state_1667998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1667998 : String := "41424306440541054207054344050A054243440642430607430A4041064406420606060743444344050A050A44054005410507"
theorem cover_1667998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1667998)
  decide +kernel
#print axioms cover_1667998

def state_2240858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2240858 : String := "4243444005410905050543440A4205440A05440A05"
theorem cover_2240858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2240858)
  decide +kernel
#print axioms cover_2240858

def state_2240879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2240879 : String := "4243054405410543054405404241094344400605080A410543050A42410543054405080543444142050A050505"
theorem cover_2240879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_2240879)
  decide +kernel
#print axioms cover_2240879

def state_2240925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2240925 : String := "42430944400543090505434440424107434440070707070A4209070707"
theorem cover_2240925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2240925)
  decide +kernel
#print axioms cover_2240925

def state_2240955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2240955 : String := "434440054109050505"
theorem cover_2240955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2240955)
  decide +kernel
#print axioms cover_2240955

def state_2240972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
def hex_2240972 : String := "4142050A05"
theorem cover_2240972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2240972)
  decide +kernel
#print axioms cover_2240972

def state_2240978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
def hex_2240978 : String := "42094344070707"
theorem cover_2240978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2240978)
  decide +kernel
#print axioms cover_2240978

def state_2240986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 8)))
def hex_2240986 : String := "05"
theorem cover_2240986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2240986)
  decide +kernel
#print axioms cover_2240986
end Mub6.Numerical.CircleFullD0.Forest
