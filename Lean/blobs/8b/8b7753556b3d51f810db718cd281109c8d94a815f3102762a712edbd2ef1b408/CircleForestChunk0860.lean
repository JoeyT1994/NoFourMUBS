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
def state_1507087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 30)))
def hex_1507087 : String := "434440070705444041070707400A410707"
theorem cover_1507087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1507087)
  decide +kernel
#print axioms cover_1507087

def state_1507104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1507104 : String := "41424344404307060606064307440706424344404143070708084041064308060644404142060742434406060607060643074407400707"
theorem cover_1507104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1507104)
  decide +kernel
#print axioms cover_1507104

def state_1507159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1507159 : String := "4041054243054440410542060506050541064206430506"
theorem cover_1507159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1507159)
  decide +kernel
#print axioms cover_1507159

def state_1507185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
def hex_1507185 : String := "424344404106420643440706080606064344400A070A44400707400806"
theorem cover_1507185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1507185)
  decide +kernel
#print axioms cover_1507185

def state_1507217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 60)))
def hex_1507217 : String := "40414208434407400807084243440508054344400905404108420807410707440508414206430706420543440540070605"
theorem cover_1507217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1507217)
  decide +kernel
#print axioms cover_1507217

def state_1507266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
def hex_1507266 : String := "4041084208434440084106420607080806"
theorem cover_1507266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1507266)
  decide +kernel
#print axioms cover_1507266

def state_1507283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 55 else 30)))
def hex_1507283 : String := "4440080508"
theorem cover_1507283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1507283)
  decide +kernel
#print axioms cover_1507283

def state_1507288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 43 else (if j.val < 4 then 27 else 30)))
def hex_1507288 : String := "4344404107424307070741070740410A42430A4407080741420607424307070744404107420507074041084208074106420607"
theorem cover_1507288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1507288)
  decide +kernel
#print axioms cover_1507288
end Mub6.Numerical.CircleFullD0.Forest
