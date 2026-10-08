import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1664062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1664062 : String := "424344054041050841064306054405400A41050A434440050540050605"
theorem cover_1664062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1664062)
  decide +kernel
#print axioms cover_1664062

def state_1664091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1664091 : String := "42434408400A434408090A0A434440424341054405050505424341064406060843410644060641054405054042430705074243060A06440505"
theorem cover_1664091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1664091)
  decide +kernel
#print axioms cover_1664091

def state_1664148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1664148 : String := "414243440806440541050A430644050542434408434408060A44080A434442084306080644084208440505"
theorem cover_1664148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 43) (hex := hex_1664148)
  decide +kernel
#print axioms cover_1664148

def state_1664196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1664196 : String := "404143060743440642094006060A4106430607"
theorem cover_1664196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1664196)
  decide +kernel
#print axioms cover_1664196

def state_1664220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 14)))
def hex_1664220 : String := "40410643060A06"
theorem cover_1664220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1664220)
  decide +kernel
#print axioms cover_1664220

def state_1664228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
def hex_1664228 : String := "41434244064005060605430842444005410508400541050808"
theorem cover_1664228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1664228)
  decide +kernel
#print axioms cover_1664228

def state_1664254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
def hex_1664254 : String := "4306424406410540050606"
theorem cover_1664254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1664254)
  decide +kernel
#print axioms cover_1664254

def state_1664266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 15)))
def hex_1664266 : String := "424406430640080606"
theorem cover_1664266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1664266)
  decide +kernel
#print axioms cover_1664266

def state_1664277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 30)))
def hex_1664277 : String := "40410643060A410643064406420606"
theorem cover_1664277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1664277)
  decide +kernel
#print axioms cover_1664277

def state_1664293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 31)))
def hex_1664293 : String := "41434244064005060605430842444005410508400541050808"
theorem cover_1664293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1664293)
  decide +kernel
#print axioms cover_1664293

def state_1664319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 31)))
def hex_1664319 : String := "4306424406410540050606"
theorem cover_1664319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1664319)
  decide +kernel
#print axioms cover_1664319
end Mub6.Numerical.CircleFullD0.Forest
