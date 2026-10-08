import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_64296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_64296 : String := "440A4041090A4142444309400941090A090942440A4309090A"
theorem cover_64296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_64296)
  decide +kernel
#print axioms cover_64296

def state_64322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_64322 : String := "400A4142430A440A4041430A080841430A42440840410508414344050505430A08080A0A0A"
theorem cover_64322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 37) (hex := hex_64322)
  decide +kernel
#print axioms cover_64322

def state_64360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_64360 : String := "4142060A0A"
theorem cover_64360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_64360)
  decide +kernel
#print axioms cover_64360

def state_64368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_64368 : String := "44400A41424309440A06090A09"
theorem cover_64368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_64368)
  decide +kernel
#print axioms cover_64368

def state_64383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_64383 : String := "414306420644080606"
theorem cover_64383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_64383)
  decide +kernel
#print axioms cover_64383

def state_64392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_64392 : String := "41434244400641430642060A0606440A09424440064143420505054306420644050540064143060506444041050841430A050A40410509410909430A42060A"
theorem cover_64392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_64392)
  decide +kernel
#print axioms cover_64392

def state_64455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_64455 : String := "4007414307444206090707"
theorem cover_64455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_64455)
  decide +kernel
#print axioms cover_64455

def state_64466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_64466 : String := "430944400A41424309440A09090A09"
theorem cover_64466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_64466)
  decide +kernel
#print axioms cover_64466

def state_64481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_64481 : String := "42430A4440070A070A"
theorem cover_64481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_64481)
  decide +kernel
#print axioms cover_64481

def state_64490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_64490 : String := "4243440A400A440A414243400605060A0A4440430A09430A4142090A09400643440A0A444106420606410606430A440A0A"
theorem cover_64490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_64490)
  decide +kernel
#print axioms cover_64490
end Mub6.Numerical.CircleFullPrototype.Forest
