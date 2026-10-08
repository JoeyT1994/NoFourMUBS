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
def state_1638702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
def hex_1638702 : String := "40444243414007050541404442430706064243054107050644090540060543074140060706424305414044420507050505430541070505"
theorem cover_1638702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1638702)
  decide +kernel
#print axioms cover_1638702

def state_1638759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 38)))
def hex_1638759 : String := "424143404406060909434006090606"
theorem cover_1638759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1638759)
  decide +kernel
#print axioms cover_1638759

def state_1638775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 39)))
def hex_1638775 : String := "41434044424143400605060606424143050A054143070606444205414305090505404406420A0644094209414340060506064340440605054006440605"
theorem cover_1638775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1638775)
  decide +kernel
#print axioms cover_1638775

def state_1638836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 39)))
def hex_1638836 : String := "414340064406424143050605060606"
theorem cover_1638836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1638836)
  decide +kernel
#print axioms cover_1638836

def state_1638851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
def hex_1638851 : String := "4442090942414305090541434005054044064209060905"
theorem cover_1638851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1638851)
  decide +kernel
#print axioms cover_1638851

def state_1638875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
def hex_1638875 : String := "4143400742440707070843400607400642440641080606"
theorem cover_1638875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1638875)
  decide +kernel
#print axioms cover_1638875

def state_1638900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 9)))
def hex_1638900 : String := "400744424143074007070707424143074007070707"
theorem cover_1638900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1638900)
  decide +kernel
#print axioms cover_1638900

def state_1638922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
def hex_1638922 : String := "4405424105430705410506"
theorem cover_1638922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1638922)
  decide +kernel
#print axioms cover_1638922

def state_1638934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 18)))
def hex_1638934 : String := "424105434008080808"
theorem cover_1638934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1638934)
  decide +kernel
#print axioms cover_1638934
end Mub6.Numerical.CircleFullD0.Forest
