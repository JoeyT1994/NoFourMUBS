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
def state_2283834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 250)))
def hex_2283834 : String := "42430A4041050A0A4305400505"
theorem cover_2283834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2283834)
  decide +kernel
#print axioms cover_2283834

def state_2283848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 380 else (if j.val < 4 then 176 else 251)))
def hex_2283848 : String := "4340414405080A41050A40414442080508440A4206430A06414405080A"
theorem cover_2283848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2283848)
  decide +kernel
#print axioms cover_2283848

def state_2283877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 381 else (if j.val < 4 then 176 else 251)))
def hex_2283877 : String := "43404105440542070505404105444243050A0542434007054041050A41050A430505410544054243050505"
theorem cover_2283877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2283877)
  decide +kernel
#print axioms cover_2283877

def state_2283920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2283920 : String := "410544420A054243400A0540410509094305400505"
theorem cover_2283920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2283920)
  decide +kernel
#print axioms cover_2283920

def state_2283943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 228) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2283943 : String := "44424305070542430806430507"
theorem cover_2283943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_2283943)
  decide +kernel
#print axioms cover_2283943

def state_2283957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 250)))
def hex_2283957 : String := "4243404144420605060A41070A40060643404105440542430506050507"
theorem cover_2283957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2283957)
  decide +kernel
#print axioms cover_2283957

def state_2283986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 251)))
def hex_2283986 : String := "42434041060641060606434041440542060544424340060506430540050542064340090506410544424305060542064305064041060607"
theorem cover_2283986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2283986)
  decide +kernel
#print axioms cover_2283986

def state_2284041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2284041 : String := "41074407424340410606070607"
theorem cover_2284041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2284041)
  decide +kernel
#print axioms cover_2284041
end Mub6.Numerical.CircleFullD0.Forest
