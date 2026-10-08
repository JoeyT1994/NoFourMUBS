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
def state_2590127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
def hex_2590127 : String := "434240440909090942404441430906094107430907440641090940440941050509"
theorem cover_2590127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2590127)
  decide +kernel
#print axioms cover_2590127

def state_2590160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
def hex_2590160 : String := "4406410609"
theorem cover_2590160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2590160)
  decide +kernel
#print axioms cover_2590160

def state_2590166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
def hex_2590166 : String := "4243094041440742430940414407DC0909094407424309400A09090909"
theorem cover_2590166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2590166)
  decide +kernel
#print axioms cover_2590166

def state_2590197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2590197 : String := "404144094243054006050944090609"
theorem cover_2590197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2590197)
  decide +kernel
#print axioms cover_2590197

def state_2590215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
def hex_2590215 : String := "42434041440909090540DC410909430940414409090909"
theorem cover_2590215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2590215)
  decide +kernel
#print axioms cover_2590215

def state_2590238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
def hex_2590238 : String := "4243404144420509060609404144DC0744DC064144420509074409074340410909094041444309424007090907440907410909"
theorem cover_2590238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2590238)
  decide +kernel
#print axioms cover_2590238

def state_2590289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2590289 : String := "44424309400A0909424306400641440906064309400A09"
theorem cover_2590289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2590289)
  decide +kernel
#print axioms cover_2590289

def state_2590312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2590312 : String := "4144090909"
theorem cover_2590312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2590312)
  decide +kernel
#print axioms cover_2590312

def state_2590317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
def hex_2590317 : String := "430940414409430942404144090909090944090909"
theorem cover_2590317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_2590317)
  decide +kernel
#print axioms cover_2590317

def state_2590338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
def hex_2590338 : String := "4144064243054405050909"
theorem cover_2590338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2590338)
  decide +kernel
#print axioms cover_2590338

def state_2590349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
def hex_2590349 : String := "4309404144094309424044064143090609060944090909"
theorem cover_2590349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_2590349)
  decide +kernel
#print axioms cover_2590349

def state_2590372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_2590372 : String := "43094144064309404206050609"
theorem cover_2590372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2590372)
  decide +kernel
#print axioms cover_2590372
end Mub6.Numerical.CircleFullD0.Forest
