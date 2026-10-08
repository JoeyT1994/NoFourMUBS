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
def state_1330132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 24)))
def hex_1330132 : String := "430A414440430A420541074440050707430742070740430708074440430A054306420541440605054005430705"
theorem cover_1330132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1330132)
  decide +kernel
#print axioms cover_1330132

def state_1330177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 25)))
def hex_1330177 : String := "4243070543074107400507"
theorem cover_1330177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1330177)
  decide +kernel
#print axioms cover_1330177

def state_1330188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
def hex_1330188 : String := "400544420543060542050A"
theorem cover_1330188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1330188)
  decide +kernel
#print axioms cover_1330188

def state_1330199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
def hex_1330199 : String := "41400842050705"
theorem cover_1330199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1330199)
  decide +kernel
#print axioms cover_1330199

def state_1330206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 6)))
def hex_1330206 : String := "4441400543444205414440434205410805054342094107444005090709400809054205410905050505"
theorem cover_1330206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 41) (hex := hex_1330206)
  decide +kernel
#print axioms cover_1330206

def state_1330248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
def hex_1330248 : String := "4344414209444043060906094205440640050641090509"
theorem cover_1330248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1330248)
  decide +kernel
#print axioms cover_1330248

def state_1330272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 6)))
def hex_1330272 : String := "444144404243064109444005060943064107440607420606404243070907074440420606064042430605430641440605050641074042050707"
theorem cover_1330272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1330272)
  decide +kernel
#print axioms cover_1330272

def state_1330329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 6)))
def hex_1330329 : String := "44414344404209410944434042054109050609090909094344400506400509444005090509"
theorem cover_1330329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 37) (hex := hex_1330329)
  decide +kernel
#print axioms cover_1330329

def state_1330366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1330366 : String := "40054205430705"
theorem cover_1330366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1330366)
  decide +kernel
#print axioms cover_1330366

def state_1330374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_1330374 : String := "44404441420A0709070707"
theorem cover_1330374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1330374)
  decide +kernel
#print axioms cover_1330374
end Mub6.Numerical.CircleFullD0.Forest
