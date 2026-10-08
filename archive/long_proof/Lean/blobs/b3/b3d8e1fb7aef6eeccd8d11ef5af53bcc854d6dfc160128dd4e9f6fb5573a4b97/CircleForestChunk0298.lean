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
def state_1008954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 46)))
def hex_1008954 : String := "414244400643410505410505400605444007434107424440060807074107420A4440074307070707420644400643080A4006434107080A"
theorem cover_1008954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1008954)
  decide +kernel
#print axioms cover_1008954

def state_1009009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_1009009 : String := "4007434107424440064305050707410742440640060544400743070A07"
theorem cover_1009009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1009009)
  decide +kernel
#print axioms cover_1009009

def state_1009038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1009038 : String := "420644400643080640064341420608060A"
theorem cover_1009038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1009038)
  decide +kernel
#print axioms cover_1009038

def state_1009056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_1009056 : String := "4441424043090909404308440841424008090808090941420540430A44410A424008050841050A0A4240430A440605054043084408414205080809"
theorem cover_1009056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1009056)
  decide +kernel
#print axioms cover_1009056

def state_1009118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_1009118 : String := "40434409410509440741050609"
theorem cover_1009118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1009118)
  decide +kernel
#print axioms cover_1009118

def state_1009133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 22)))
def hex_1009133 : String := "4441420909084142404344080944094105050940430844084142400805080843090909"
theorem cover_1009133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1009133)
  decide +kernel
#print axioms cover_1009133

def state_1009169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 44)))
def hex_1009169 : String := "414209404309090909"
theorem cover_1009169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009169)
  decide +kernel
#print axioms cover_1009169

def state_1009180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 45)))
def hex_1009180 : String := "404443090943410505410505440905"
theorem cover_1009180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1009180)
  decide +kernel
#print axioms cover_1009180

def state_1009197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 90)))
def hex_1009197 : String := "434142090808414209404409090909"
theorem cover_1009197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1009197)
  decide +kernel
#print axioms cover_1009197
end Mub6.Numerical.CircleFullD0.Forest
