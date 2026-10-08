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
def state_1584883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
def hex_1584883 : String := "41424344400741420543050505094440410607414205444305060609094307444006414244070606070642430744080507"
theorem cover_1584883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1584883)
  decide +kernel
#print axioms cover_1584883

def state_1584932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
def hex_1584932 : String := "41424305054344404142050705050544404142440505444307060642050705404106050542054305440505"
theorem cover_1584932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1584932)
  decide +kernel
#print axioms cover_1584932

def state_1584975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 105)))
def hex_1584975 : String := "4009410905"
theorem cover_1584975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1584975)
  decide +kernel
#print axioms cover_1584975

def state_1584982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 104)))
def hex_1584982 : String := "4142444340064106090606064244430808094443070606"
theorem cover_1584982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1584982)
  decide +kernel
#print axioms cover_1584982

def state_1585006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 104)))
def hex_1585006 : String := "4244434041420544050505050A4305054443404106424405050641420544080505400641064205064340060506"
theorem cover_1585006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1585006)
  decide +kernel
#print axioms cover_1585006

def state_1585051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 104)))
def hex_1585051 : String := "42440505444340414205070505404106420506054305400605"
theorem cover_1585051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1585051)
  decide +kernel
#print axioms cover_1585051

def state_1585076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 105)))
def hex_1585076 : String := "4006410609"
theorem cover_1585076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1585076)
  decide +kernel
#print axioms cover_1585076

def state_1585082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 52)))
def hex_1585082 : String := "44404107074142434440070A07444041070741084205074006410605430744070642430744070707400641424307060607"
theorem cover_1585082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1585082)
  decide +kernel
#print axioms cover_1585082
end Mub6.Numerical.CircleFullD0.Forest
