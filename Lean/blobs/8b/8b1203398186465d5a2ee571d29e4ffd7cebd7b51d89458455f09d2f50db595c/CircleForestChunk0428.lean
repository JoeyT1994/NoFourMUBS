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
def state_178269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 13)))
def hex_178269 : String := "430808"
theorem cover_178269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_178269)
  decide +kernel
#print axioms cover_178269

def state_178272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
def hex_178272 : String := "44430841084244050808430808"
theorem cover_178272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_178272)
  decide +kernel
#print axioms cover_178272

def state_178285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_178285 : String := "42444344404105050540414209080909444005054041424344410905094441400709054109074308070741420905054308404142090842090709440508"
theorem cover_178285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_178285)
  decide +kernel
#print axioms cover_178285

def state_178346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_178346 : String := "41424443404107090740410A4405090A08440A0842440509440508"
theorem cover_178346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_178346)
  decide +kernel
#print axioms cover_178346

def state_178373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_178373 : String := "404142430906434441080809444108084106094209430944080941420943080809"
theorem cover_178373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_178373)
  decide +kernel
#print axioms cover_178373

def state_178408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_178408 : String := "440909"
theorem cover_178408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_178408)
  decide +kernel
#print axioms cover_178408

def state_178415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
def hex_178415 : String := "424344400809090843444041420905420A05050944404105050540410A0709"
theorem cover_178415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_178415)
  decide +kernel
#print axioms cover_178415

def state_178446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
def hex_178446 : String := "4243444008080A0843444042434109440809084305050509444007054007420605"
theorem cover_178446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_178446)
  decide +kernel
#print axioms cover_178446

def state_178479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 13)))
def hex_178479 : String := "4109420A43090A"
theorem cover_178479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_178479)
  decide +kernel
#print axioms cover_178479

def state_178486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
def hex_178486 : String := "4441420905424309050509"
theorem cover_178486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_178486)
  decide +kernel
#print axioms cover_178486

def state_178497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 7)))
def hex_178497 : String := "09"
theorem cover_178497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_178497)
  decide +kernel
#print axioms cover_178497

def state_178499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_178499 : String := "44404243094441094405090843054405050908"
theorem cover_178499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_178499)
  decide +kernel
#print axioms cover_178499
end Mub6.Numerical.CircleFullPrototype.Forest
