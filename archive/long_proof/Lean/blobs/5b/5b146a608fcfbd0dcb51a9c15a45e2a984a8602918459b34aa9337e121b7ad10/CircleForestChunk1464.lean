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
def state_1652071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 23)))
def hex_1652071 : String := "41444042430608094206430641444042060906064440420609064009064009064440420A43090A420643054144400A06400A050A4042050705"
theorem cover_1652071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1652071)
  decide +kernel
#print axioms cover_1652071

def state_1652129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
def hex_1652129 : String := "44400942430941444009420609094440094243064106444009060609090909"
theorem cover_1652129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 31) (hex := hex_1652129)
  decide +kernel
#print axioms cover_1652129

def state_1652160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
def hex_1652160 : String := "4440094243094144400A4243060A430941440A090A40094243050A090A430941444009430942090909440A094007424305444109050507"
theorem cover_1652160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1652160)
  decide +kernel
#print axioms cover_1652160

def state_1652217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
def hex_1652217 : String := "434241440A090A090A"
theorem cover_1652217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1652217)
  decide +kernel
#print axioms cover_1652217

def state_1652227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 22)))
def hex_1652227 : String := "4241444043050A0505054144404309420A0943054241444043050A0505054144400908094440050505400905444043050A0505"
theorem cover_1652227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1652227)
  decide +kernel
#print axioms cover_1652227

def state_1652279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 22)))
def hex_1652279 : String := "4144400A4207434144070A0A07400A420543050A0A"
theorem cover_1652279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1652279)
  decide +kernel
#print axioms cover_1652279
end Mub6.Numerical.CircleFullD0.Forest
