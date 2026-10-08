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
def state_1336405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 13)))
def hex_1336405 : String := "410942094340444109420943404441420943404441094205DB09090905410905444109080909090909"
theorem cover_1336405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 41) (hex := hex_1336405)
  decide +kernel
#print axioms cover_1336405

def state_1336446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
def hex_1336446 : String := "440A09"
theorem cover_1336446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1336446)
  decide +kernel
#print axioms cover_1336446

def state_1336449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_1336449 : String := "40434109420544400509050609"
theorem cover_1336449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1336449)
  decide +kernel
#print axioms cover_1336449

def state_1336462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_1336462 : String := "4440440A060A06"
theorem cover_1336462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336462)
  decide +kernel
#print axioms cover_1336462

def state_1336470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1336470 : String := "43444005414205430509050544404142440805444340070A0A430509420544430540050505410A0909"
theorem cover_1336470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1336470)
  decide +kernel
#print axioms cover_1336470

def state_1336514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_1336514 : String := "41434442054005430507054407420540070743054442050705"
theorem cover_1336514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1336514)
  decide +kernel
#print axioms cover_1336514

def state_1336541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
def hex_1336541 : String := "444243440505440740050943084407400708420543404144420543054005050505414408090840414442054340050807050509"
theorem cover_1336541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1336541)
  decide +kernel
#print axioms cover_1336541

def state_1336592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
def hex_1336592 : String := "4442440740070944070742094041090709"
theorem cover_1336592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1336592)
  decide +kernel
#print axioms cover_1336592

def state_1336609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_1336609 : String := "434408054442054107054205410909"
theorem cover_1336609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1336609)
  decide +kernel
#print axioms cover_1336609

def state_1336624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_1336624 : String := "40054143050905"
theorem cover_1336624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336624)
  decide +kernel
#print axioms cover_1336624

def state_1336634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1336634 : String := "4442430740070A0742434006090606"
theorem cover_1336634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1336634)
  decide +kernel
#print axioms cover_1336634
end Mub6.Numerical.CircleFullD0.Forest
