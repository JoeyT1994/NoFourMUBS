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
def state_184636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 7)))
def hex_184636 : String := "4441404243050A05050541404243074407070507400505"
theorem cover_184636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_184636)
  decide +kernel
#print axioms cover_184636

def state_184660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 14)))
def hex_184660 : String := "0A"
theorem cover_184660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_184660)
  decide +kernel
#print axioms cover_184660

def state_184662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 15)))
def hex_184662 : String := "404243440A4107424043070807080A0A0A"
theorem cover_184662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_184662)
  decide +kernel
#print axioms cover_184662

def state_184679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 15)))
def hex_184679 : String := "404243444142400505050541424043080843050A050544410A054142404308060A0A424043054405064305440506050542434405410A050A05"
theorem cover_184679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_184679)
  decide +kernel
#print axioms cover_184679

def state_184738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
def hex_184738 : String := "4442404143050805050509"
theorem cover_184738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_184738)
  decide +kernel
#print axioms cover_184738

def state_184750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
def hex_184750 : String := "42404144084308080508400505"
theorem cover_184750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_184750)
  decide +kernel
#print axioms cover_184750

def state_184764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
def hex_184764 : String := "4041430944420841404407070807090909"
theorem cover_184764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_184764)
  decide +kernel
#print axioms cover_184764

def state_184781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
def hex_184781 : String := "40414344424140050505054209054442414044070744050905054241404309060909414043050743054405060505414309444209050905"
theorem cover_184781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_184781)
  decide +kernel
#print axioms cover_184781

def state_184836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
def hex_184836 : String := "43054405400505"
theorem cover_184836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_184836)
  decide +kernel
#print axioms cover_184836

def state_184843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_184843 : String := "41424344404107080709440A40410A0909434405070A42430944080905"
theorem cover_184843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_184843)
  decide +kernel
#print axioms cover_184843

def state_184872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_184872 : String := "434440050505440540414243054405410A05050505"
theorem cover_184872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_184872)
  decide +kernel
#print axioms cover_184872
end Mub6.Numerical.CircleFullPrototype.Forest
