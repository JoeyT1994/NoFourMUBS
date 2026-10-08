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
def state_1665318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
def hex_1665318 : String := "424441064340050606094405414340054209050943400542090509"
theorem cover_1665318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1665318)
  decide +kernel
#print axioms cover_1665318

def state_1665346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 12)))
def hex_1665346 : String := "4406410643420640090606"
theorem cover_1665346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1665346)
  decide +kernel
#print axioms cover_1665346

def state_1665358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 24)))
def hex_1665358 : String := "410643440540050606"
theorem cover_1665358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1665358)
  decide +kernel
#print axioms cover_1665358

def state_1665368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_1665368 : String := "4340420644050742064406410643060606"
theorem cover_1665368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1665368)
  decide +kernel
#print axioms cover_1665368

def state_1665387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 25)))
def hex_1665387 : String := "424441064340050606094405414340054209050943400542090509"
theorem cover_1665387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1665387)
  decide +kernel
#print axioms cover_1665387

def state_1665415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 25)))
def hex_1665415 : String := "4406410643420640090606"
theorem cover_1665415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1665415)
  decide +kernel
#print axioms cover_1665415

def state_1665427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 50)))
def hex_1665427 : String := "410643440540050606"
theorem cover_1665427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1665427)
  decide +kernel
#print axioms cover_1665427

def state_1665437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 62) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
def hex_1665437 : String := "4340424406094405074206440641064340070606400606"
theorem cover_1665437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1665437)
  decide +kernel
#print axioms cover_1665437

def state_1665462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
def hex_1665462 : String := "42444106434005060609440541430707434005F109"
theorem cover_1665462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1665462)
  decide +kernel
#print axioms cover_1665462

def state_1665483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 32 else 51)))
def hex_1665483 : String := "4244064106434209F106444106434405F10641434042440607074206440607404206070643F14042094443050509420644060A"
theorem cover_1665483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1665483)
  decide +kernel
#print axioms cover_1665483

def state_1665534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 51)))
def hex_1665534 : String := "4042094405094206440643410640090606"
theorem cover_1665534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1665534)
  decide +kernel
#print axioms cover_1665534

def state_1665551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 25)))
def hex_1665551 : String := "4042094405094206440643410640060606"
theorem cover_1665551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1665551)
  decide +kernel
#print axioms cover_1665551
end Mub6.Numerical.CircleFullD0.Forest
