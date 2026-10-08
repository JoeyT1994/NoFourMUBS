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
def state_1009212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 91)))
def hex_1009212 : String := "4341424044090505404408074409060941424044430505050540444341070841420507094307410542050744094305054209400909"
theorem cover_1009212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1009212)
  decide +kernel
#print axioms cover_1009212

def state_1009265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
def hex_1009265 : String := "440943094142050609"
theorem cover_1009265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009265)
  decide +kernel
#print axioms cover_1009265

def state_1009274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
def hex_1009274 : String := "420909"
theorem cover_1009274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1009274)
  decide +kernel
#print axioms cover_1009274

def state_1009277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
def hex_1009277 : String := "4344090944094142090909"
theorem cover_1009277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1009277)
  decide +kernel
#print axioms cover_1009277

def state_1009288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1009288 : String := "09"
theorem cover_1009288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1009288)
  decide +kernel
#print axioms cover_1009288

def state_1009291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
def hex_1009291 : String := "40444305050505"
theorem cover_1009291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1009291)
  decide +kernel
#print axioms cover_1009291

def state_1009301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 46)))
def hex_1009301 : String := "41420540444307410742050807440A054240440943050509404408430841420507084409430809"
theorem cover_1009301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1009301)
  decide +kernel
#print axioms cover_1009301

def state_1009342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 46)))
def hex_1009342 : String := "05"
theorem cover_1009342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1009342)
  decide +kernel
#print axioms cover_1009342

def state_1009344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 46)))
def hex_1009344 : String := "44434142050742054044080744094305054142054007054205404443094107094307074409430505434105420507410542054440070505"
theorem cover_1009344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1009344)
  decide +kernel
#print axioms cover_1009344

def state_1009399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 46)))
def hex_1009399 : String := "4443410509410542050905"
theorem cover_1009399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1009399)
  decide +kernel
#print axioms cover_1009399

def state_1009410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 46)))
def hex_1009410 : String := "42404409430505440905404443094142090909434142054440070907420908414205444043070A094007054209440940090944094309410509"
theorem cover_1009410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1009410)
  decide +kernel
#print axioms cover_1009410
end Mub6.Numerical.CircleFullD0.Forest
