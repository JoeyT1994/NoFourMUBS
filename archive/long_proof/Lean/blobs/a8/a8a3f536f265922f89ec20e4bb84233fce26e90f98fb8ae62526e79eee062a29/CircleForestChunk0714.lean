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
def state_1472250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
def hex_1472250 : String := "444205404305050509"
theorem cover_1472250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1472250)
  decide +kernel
#print axioms cover_1472250

def state_1472260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 56)))
def hex_1472260 : String := "42054043060505"
theorem cover_1472260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1472260)
  decide +kernel
#print axioms cover_1472260

def state_1472268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 57)))
def hex_1472268 : String := "4043414405094405424007054043410707074309054105074341050505"
theorem cover_1472268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1472268)
  decide +kernel
#print axioms cover_1472268

def state_1472300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 57)))
def hex_1472300 : String := "44424006050642094043060909"
theorem cover_1472300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1472300)
  decide +kernel
#print axioms cover_1472300

def state_1472313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 57)))
def hex_1472313 : String := "44424006050642404341440642070644064207060743410944054209404306060941054405074043060643410944064240060806410944064240060906"
theorem cover_1472313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1472313)
  decide +kernel
#print axioms cover_1472313

def state_1472374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 91 else 57)))
def hex_1472374 : String := "414405420740070944420506420740074341070707"
theorem cover_1472374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1472374)
  decide +kernel
#print axioms cover_1472374

def state_1472395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
def hex_1472395 : String := "4341094405420940430809084109440542054043090505"
theorem cover_1472395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1472395)
  decide +kernel
#print axioms cover_1472395

def state_1472418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1472418 : String := "4341094405420940430709084109440509"
theorem cover_1472418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1472418)
  decide +kernel
#print axioms cover_1472418

def state_1472437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 28)))
def hex_1472437 : String := "4144424006080642400A090A4408424043410A084144060A440642060643080808"
theorem cover_1472437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1472437)
  decide +kernel
#print axioms cover_1472437

def state_1472471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 28)))
def hex_1472471 : String := "4442400609064240434109440609410944060909404306410606430809"
theorem cover_1472471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1472471)
  decide +kernel
#print axioms cover_1472471
end Mub6.Numerical.CircleFullD0.Forest
