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
def state_56625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
def hex_56625 : String := "40440A41420A430606420A4341424006060642404407060A4006064106070A"
theorem cover_56625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_56625)
  decide +kernel
#print axioms cover_56625

def state_56656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_56656 : String := "440A410A0A"
theorem cover_56656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_56656)
  decide +kernel
#print axioms cover_56656

def state_56661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_56661 : String := "43440841080A0A"
theorem cover_56661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_56661)
  decide +kernel
#print axioms cover_56661

def state_56671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_56671 : String := "4244434007070907444340060640060606"
theorem cover_56671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_56671)
  decide +kernel
#print axioms cover_56671

def state_56693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 14)))
def hex_56693 : String := "444243070943074441064006060607"
theorem cover_56693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_56693)
  decide +kernel
#print axioms cover_56693

def state_56708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 14)))
def hex_56708 : String := "444243050A43414440420707050744050541444042094306060A40060644404205434144050505080540080542430505430708"
theorem cover_56708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_56708)
  decide +kernel
#print axioms cover_56708

def state_56759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 14)))
def hex_56759 : String := "4144420A43070A07440505"
theorem cover_56759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_56759)
  decide +kernel
#print axioms cover_56759

def state_56770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 14)))
def hex_56770 : String := "4041440909440A080A"
theorem cover_56770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_56770)
  decide +kernel
#print axioms cover_56770

def state_56779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
def hex_56779 : String := "43400705400806"
theorem cover_56779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_56779)
  decide +kernel
#print axioms cover_56779

def state_56789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_56789 : String := "4142060642444341444206060644424043410605410644050505400606424006050641444206060644424043410608080A400606420606064443060606"
theorem cover_56789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_56789)
  decide +kernel
#print axioms cover_56789

def state_56850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_56850 : String := "41064244434041060505404106440A05060606"
theorem cover_56850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_56850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_56850)
  decide +kernel
#print axioms cover_56850
end Mub6.Numerical.CircleFullPrototype.Forest
