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
def state_1009987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
def hex_1009987 : String := "430841424008090808"
theorem cover_1009987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009987)
  decide +kernel
#print axioms cover_1009987

def state_1009997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 47)))
def hex_1009997 : String := "08"
theorem cover_1009997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1009997)
  decide +kernel
#print axioms cover_1009997

def state_1010000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 47)))
def hex_1010000 : String := "44404308414244084007090808430809404341070841070A43414244090506420908414244400909400705444007060742094409400909"
theorem cover_1010000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1010000)
  decide +kernel
#print axioms cover_1010000

def state_1010055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 47)))
def hex_1010055 : String := "440840074306410608"
theorem cover_1010055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1010055)
  decide +kernel
#print axioms cover_1010055

def state_1010064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
def hex_1010064 : String := "42440840080908"
theorem cover_1010064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1010064)
  decide +kernel
#print axioms cover_1010064

def state_1010071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
def hex_1010071 : String := "44430809430A4142404409430909060609"
theorem cover_1010071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1010071)
  decide +kernel
#print axioms cover_1010071

def state_1010088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 23)))
def hex_1010088 : String := "4008440806"
theorem cover_1010088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1010088)
  decide +kernel
#print axioms cover_1010088

def state_1010093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_1010093 : String := "424006434408094407414206404406430606090640084308440842414008090808"
theorem cover_1010093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1010093)
  decide +kernel
#print axioms cover_1010093

def state_1010129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_1010129 : String := "404344060606430707"
theorem cover_1010129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1010129)
  decide +kernel
#print axioms cover_1010129

def state_1010139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_1010139 : String := "4344054142400543054405414206050505054441420605054142400644064142064306060640054405410505420605"
theorem cover_1010139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1010139)
  decide +kernel
#print axioms cover_1010139

def state_1010187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
def hex_1010187 : String := "444105054142404344054142404305050705054407414207050743070705420705"
theorem cover_1010187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1010187)
  decide +kernel
#print axioms cover_1010187
end Mub6.Numerical.CircleFullD0.Forest
