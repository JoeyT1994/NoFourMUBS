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
def state_69369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 10)))
def hex_69369 : String := "444243084006084340414206444305400605080505404142064443404109050509430840060842064405064142084405080542064308400608"
theorem cover_69369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_69369)
  decide +kernel
#print axioms cover_69369

def state_69426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_69426 : String := "420740414308070708"
theorem cover_69426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_69426)
  decide +kernel
#print axioms cover_69426

def state_69435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_69435 : String := "43444206404106050508444206400743074144420505070707"
theorem cover_69435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_69435)
  decide +kernel
#print axioms cover_69435

def state_69460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_69460 : String := "414308444208410843084044420505080808430844420543050507"
theorem cover_69460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_69460)
  decide +kernel
#print axioms cover_69460

def state_69489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_69489 : String := "40414243440A404142440543090A090505440A400A4142050A050A0A41420543440A4142050605440A410A0605"
theorem cover_69489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_69489)
  decide +kernel
#print axioms cover_69489

def state_69535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_69535 : String := "4142444340410909410942050640410942440A07094142080942050609094244434041070505400A05430707440A07"
theorem cover_69535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_69535)
  decide +kernel
#print axioms cover_69535

def state_69582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_69582 : String := "4142444341400605054108050844430606064244050706"
theorem cover_69582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_69582)
  decide +kernel
#print axioms cover_69582

def state_69610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
def hex_69610 : String := "4407400A4142430A07070A"
theorem cover_69610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_69610)
  decide +kernel
#print axioms cover_69610

def state_69622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 8)))
def hex_69622 : String := "4041070A07"
theorem cover_69622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_69622)
  decide +kernel
#print axioms cover_69622
end Mub6.Numerical.CircleFullPrototype.Forest
