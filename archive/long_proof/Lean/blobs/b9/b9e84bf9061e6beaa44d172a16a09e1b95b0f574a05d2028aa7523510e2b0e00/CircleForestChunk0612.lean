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
def state_385711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 8)))
def hex_385711 : String := "414209400706420840074407430807"
theorem cover_385711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_385711)
  decide +kernel
#print axioms cover_385711

def state_385726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
def hex_385726 : String := "434142050A42054440084305084005054109420809"
theorem cover_385726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_385726)
  decide +kernel
#print axioms cover_385726

def state_385748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_385748 : String := "400A4442410A4306404407064442434105054107070A0A0A0A"
theorem cover_385748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_385748)
  decide +kernel
#print axioms cover_385748

def state_385773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_385773 : String := "40440742430A090A44424341400744070A400744074243410A4407084107070A410707434107070742430A410944400709090A"
theorem cover_385773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_385773)
  decide +kernel
#print axioms cover_385773

def state_385824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_385824 : String := "410A4243054440430A09430509050A"
theorem cover_385824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_385824)
  decide +kernel
#print axioms cover_385824

def state_385840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_385840 : String := "43054443050805"
theorem cover_385840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_385840)
  decide +kernel
#print axioms cover_385840

def state_385848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_385848 : String := "4442050605"
theorem cover_385848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_385848)
  decide +kernel
#print axioms cover_385848

def state_385855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
def hex_385855 : String := "43400641444205430541400644080506050540410808414443080843080808"
theorem cover_385855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_385855)
  decide +kernel
#print axioms cover_385855

def state_385887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_385887 : String := "40064144060606"
theorem cover_385887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_385887)
  decide +kernel
#print axioms cover_385887

def state_385895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_385895 : String := "414407424306080606"
theorem cover_385895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_385895)
  decide +kernel
#print axioms cover_385895

def state_385904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_385904 : String := "414442434140074407420843060740060641070743410706074243414440064208060606414440074308084008090843064144070944060644424306070606"
theorem cover_385904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_385904)
  decide +kernel
#print axioms cover_385904
end Mub6.Numerical.CircleFullPrototype.Forest
