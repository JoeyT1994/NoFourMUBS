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
def state_1509901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
def hex_1509901 : String := "42084440410809414342084440094109094008410843090808434244050809420509400841084342074440084108090808"
theorem cover_1509901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1509901)
  decide +kernel
#print axioms cover_1509901

def state_1509951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
def hex_1509951 : String := "424440070A400707444006414309090940410909414342440907440605420744094009410909430909"
theorem cover_1509951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1509951)
  decide +kernel
#print axioms cover_1509951

def state_1509992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
def hex_1509992 : String := "42440A0744400941430909094009414342070908430907"
theorem cover_1509992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1509992)
  decide +kernel
#print axioms cover_1509992

def state_1510015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1510015 : String := "40410843070741434208444005410543054207050508434207444041050541430542070543050705420744400741080707"
theorem cover_1510015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1510015)
  decide +kernel
#print axioms cover_1510015

def state_1510064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1510064 : String := "44400841084208434409080508"
theorem cover_1510064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1510064)
  decide +kernel
#print axioms cover_1510064

def state_1510080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1510080 : String := "41424306090606"
theorem cover_1510080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1510080)
  decide +kernel
#print axioms cover_1510080

def state_1510090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
def hex_1510090 : String := "4440064143064244064006414306090606064041050541430542050543054244090505"
theorem cover_1510090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1510090)
  decide +kernel
#print axioms cover_1510090

def state_1510126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1510126 : String := "40094142434409400941090909430609420906"
theorem cover_1510126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1510126)
  decide +kernel
#print axioms cover_1510126
end Mub6.Numerical.CircleFullD0.Forest
