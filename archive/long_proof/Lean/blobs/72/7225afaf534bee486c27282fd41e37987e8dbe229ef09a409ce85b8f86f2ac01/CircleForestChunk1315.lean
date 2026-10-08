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
def state_1616201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
def hex_1616201 : String := "4440420843EA080640420543414440050505054144084005050805"
theorem cover_1616201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1616201)
  decide +kernel
#print axioms cover_1616201

def state_1616228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
def hex_1616228 : String := "414409404208434144090909080909"
theorem cover_1616228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616228 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1616228)
  decide +kernel
#print axioms cover_1616228

def state_1616250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 192)))
def hex_1616250 : String := "410A40424344410A08410A400806084344410540050A410A404208050A440541054005050A"
theorem cover_1616250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1616250)
  decide +kernel
#print axioms cover_1616250

def state_1616287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 193)))
def hex_1616287 : String := "410A40424344410A400806410A400706444140080A084140070A400742084308084344410A40070A0744410A404208050A410A40070A0A"
theorem cover_1616287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1616287)
  decide +kernel
#print axioms cover_1616287

def state_1616342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 117 else 96)))
def hex_1616342 : String := "4441400505404208050941404243440541050A05050A4042084344410508414005054006420806054209430A09"
theorem cover_1616342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1616342)
  decide +kernel
#print axioms cover_1616342

def state_1616387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 96)))
def hex_1616387 : String := "4344410540420A050A0A4405410540050A"
theorem cover_1616387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1616387)
  decide +kernel
#print axioms cover_1616387

def state_1616404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
def hex_1616404 : String := "0A"
theorem cover_1616404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1616404)
  decide +kernel
#print axioms cover_1616404
end Mub6.Numerical.CircleFullD0.Forest
