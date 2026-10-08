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
def state_1463489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1463489 : String := "434440410606084440054142430506050505444340410606414244060607420644070607434440064142064305060640054142060505444006414206070606"
theorem cover_1463489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1463489)
  decide +kernel
#print axioms cover_1463489

def state_1463552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1463552 : String := "42430806434408054441430840064206070806"
theorem cover_1463552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1463552)
  decide +kernel
#print axioms cover_1463552

def state_1463573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1463573 : String := "4308440840420643440606064208430809"
theorem cover_1463573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1463573)
  decide +kernel
#print axioms cover_1463573

def state_1463591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1463591 : String := "4408404408414207050508"
theorem cover_1463591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1463591)
  decide +kernel
#print axioms cover_1463591

def state_1463603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1463603 : String := "40430841424405430805074208440743080708"
theorem cover_1463603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1463603)
  decide +kernel
#print axioms cover_1463603

def state_1463627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1463627 : String := "4043060608"
theorem cover_1463627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1463627)
  decide +kernel
#print axioms cover_1463627

def state_1463633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_1463633 : String := "4344080544414206070606"
theorem cover_1463633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1463633)
  decide +kernel
#print axioms cover_1463633

def state_1463644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_1463644 : String := "430844084142400608404344060544060643084408414240060840434406050643084408414206E1420640060842064006084206400608"
theorem cover_1463644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 55) (hex := hex_1463644)
  decide +kernel
#print axioms cover_1463644

def state_1463699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_1463699 : String := "42084043050608"
theorem cover_1463699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1463699)
  decide +kernel
#print axioms cover_1463699
end Mub6.Numerical.CircleFullD0.Forest
