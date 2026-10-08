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
def state_2328265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
def hex_2328265 : String := "4042440909094244414309400942060606414340090640440908440606064409410706"
theorem cover_2328265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2328265)
  decide +kernel
#print axioms cover_2328265

def state_2328301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
def hex_2328301 : String := "4244414309400842090909080A"
theorem cover_2328301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2328301)
  decide +kernel
#print axioms cover_2328301

def state_2328315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 44)))
def hex_2328315 : String := "444143404209094244094143068306440909834309400942440605094143404442080808444241430683064107064208074008448308434009064005440505"
theorem cover_2328315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2328315)
  decide +kernel
#print axioms cover_2328315

def state_2328378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 63 else 44)))
def hex_2328378 : String := "44414309400942830A0941430A400842440A0707430940084244060509"
theorem cover_2328378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2328378)
  decide +kernel
#print axioms cover_2328378

def state_2328407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
def hex_2328407 : String := "430940094244090509"
theorem cover_2328407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2328407)
  decide +kernel
#print axioms cover_2328407

def state_2328416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 45)))
def hex_2328416 : String := "4143400844424107060707400844420808084340080640054442050505"
theorem cover_2328416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2328416)
  decide +kernel
#print axioms cover_2328416

def state_2328445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_2328445 : String := "44410A09410A0A"
theorem cover_2328445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2328445)
  decide +kernel
#print axioms cover_2328445

def state_2328452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 23)))
def hex_2328452 : String := "414307084340080708"
theorem cover_2328452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2328452)
  decide +kernel
#print axioms cover_2328452

def state_2328461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 11)))
def hex_2328461 : String := "44410A0A07"
theorem cover_2328461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2328461)
  decide +kernel
#print axioms cover_2328461

def state_2328466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_2328466 : String := "4340424409080906400A42444143400906404205094244090509094108080A"
theorem cover_2328466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2328466)
  decide +kernel
#print axioms cover_2328466
end Mub6.Numerical.CircleFullD0.Forest
