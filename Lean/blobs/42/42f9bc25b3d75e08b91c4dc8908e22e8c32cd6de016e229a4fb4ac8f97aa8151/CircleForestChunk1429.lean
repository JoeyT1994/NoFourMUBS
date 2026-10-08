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
def state_1643687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 41)))
def hex_1643687 : String := "44414340074244060507404244410943074007A00909A0434007054042444143074007A043050A09440707A0410909"
theorem cover_1643687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1643687)
  decide +kernel
#print axioms cover_1643687

def state_1643734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 41)))
def hex_1643734 : String := "4244060544414305A00505"
theorem cover_1643734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1643734)
  decide +kernel
#print axioms cover_1643734

def state_1643745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
def hex_1643745 : String := "43054042054441430540420544070505050505"
theorem cover_1643745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1643745)
  decide +kernel
#print axioms cover_1643745

def state_1643765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 20)))
def hex_1643765 : String := "05"
theorem cover_1643765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1643765)
  decide +kernel
#print axioms cover_1643765

def state_1643767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
def hex_1643767 : String := "424441434042054405050540420A0A420544414305400605050543054005050544414340440607054006440642410A0506430506414305400A0505"
theorem cover_1643767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1643767)
  decide +kernel
#print axioms cover_1643767

def state_1643826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 20)))
def hex_1643826 : String := "42054441430540444205414305060505050505"
theorem cover_1643826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1643826)
  decide +kernel
#print axioms cover_1643826

def state_1643845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 21)))
def hex_1643845 : String := "42414305404442054106050505054143054044424109050909444205414305400905050505"
theorem cover_1643845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1643845)
  decide +kernel
#print axioms cover_1643845

def state_1643884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 10)))
def hex_1643884 : String := "09"
theorem cover_1643884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1643884)
  decide +kernel
#print axioms cover_1643884

def state_1643886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
def hex_1643886 : String := "09"
theorem cover_1643886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1643886)
  decide +kernel
#print axioms cover_1643886

def state_1643890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1643890 : String := "430940440509444241054340050A05410543090542410943094005444206050609"
theorem cover_1643890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1643890)
  decide +kernel
#print axioms cover_1643890

def state_1643924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 20)))
def hex_1643924 : String := "40074442414307400744060643074007070707"
theorem cover_1643924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1643924)
  decide +kernel
#print axioms cover_1643924
end Mub6.Numerical.CircleFullD0.Forest
