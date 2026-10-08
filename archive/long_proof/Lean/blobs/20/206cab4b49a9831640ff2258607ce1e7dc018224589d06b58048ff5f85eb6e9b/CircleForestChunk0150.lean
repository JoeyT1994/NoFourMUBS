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
def state_57355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
def hex_57355 : String := "404144074243420A40070707434207070707410A4407420507"
theorem cover_57355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_57355)
  decide +kernel
#print axioms cover_57355

def state_57380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_57380 : String := "4407420A400707"
theorem cover_57380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_57380)
  decide +kernel
#print axioms cover_57380

def state_57387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_57387 : String := "43440742054143400705070507"
theorem cover_57387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_57387)
  decide +kernel
#print axioms cover_57387

def state_57400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_57400 : String := "4143440A42054043410A050A050A430505"
theorem cover_57400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_57400)
  decide +kernel
#print axioms cover_57400

def state_57421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
def hex_57421 : String := "44434041444205430505050505404144420A43440A080808050508"
theorem cover_57421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_57421)
  decide +kernel
#print axioms cover_57421

def state_57450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_57450 : String := "40414244434442050942050944424008054008414305440505054208080844430942440940080909430606420544090841420544090905"
theorem cover_57450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_57450)
  decide +kernel
#print axioms cover_57450

def state_57506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
def hex_57506 : String := "41424443444240080A40080A080808444342444008410607084440070906420844070608420808"
theorem cover_57506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_57506)
  decide +kernel
#print axioms cover_57506

def state_57545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
def hex_57545 : String := "4142440A430540080544434042440906060940420A060A430606420544430507430505"
theorem cover_57545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_57545)
  decide +kernel
#print axioms cover_57545

def state_57580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
def hex_57580 : String := "434008054008410605"
theorem cover_57580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_57580)
  decide +kernel
#print axioms cover_57580
end Mub6.Numerical.CircleFullPrototype.Forest
