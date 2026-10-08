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
def state_2591828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
def hex_2591828 : String := "4243404409090940444142434044090709404406070643090642430940440907090907440941424309400706090943094044090709"
theorem cover_2591828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2591828)
  decide +kernel
#print axioms cover_2591828

def state_2591881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
def hex_2591881 : String := "4243094044094109090909"
theorem cover_2591881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2591881)
  decide +kernel
#print axioms cover_2591881

def state_2591892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 21)))
def hex_2591892 : String := "414243400709074340070907424309400707430907"
theorem cover_2591892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_2591892)
  decide +kernel
#print axioms cover_2591892

def state_2591913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
def hex_2591913 : String := "4409414243094409090909"
theorem cover_2591913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2591913)
  decide +kernel
#print axioms cover_2591913

def state_2591927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 20)))
def hex_2591927 : String := "4342404441064342400706060607440641064342400706060640070642404405050606"
theorem cover_2591927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2591927)
  decide +kernel
#print axioms cover_2591927

def state_2591962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 20)))
def hex_2591962 : String := "434240444143424044090709094240070606430942400709090744094143090709404409070942404441064342400506050507440607400506"
theorem cover_2591962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2591962)
  decide +kernel
#print axioms cover_2591962

def state_2592019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 21)))
def hex_2592019 : String := "07"
theorem cover_2592019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2592019)
  decide +kernel
#print axioms cover_2592019

def state_2592020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
def hex_2592020 : String := "44410643090641434244400706074406074244060706434244090709424440070607440607"
theorem cover_2592020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2592020)
  decide +kernel
#print axioms cover_2592020
end Mub6.Numerical.CircleFullD0.Forest
