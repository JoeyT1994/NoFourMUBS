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
def state_2592749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_2592749 : String := "41424306444006420643064144430640050A06060643064440430605434109064142440505054206050606"
theorem cover_2592749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_2592749)
  decide +kernel
#print axioms cover_2592749

def state_2592795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 5)))
def hex_2592795 : String := "440906"
theorem cover_2592795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2592795)
  decide +kernel
#print axioms cover_2592795

def state_2592798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
def hex_2592798 : String := "44424340060940414442430640064144090606430640060906064144090944090643400A094041444309420A0943064206090A410909420643064440060906"
theorem cover_2592798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2592798)
  decide +kernel
#print axioms cover_2592798

def state_2592861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
def hex_2592861 : String := "4309444309404109090909"
theorem cover_2592861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2592861)
  decide +kernel
#print axioms cover_2592861

def state_2592872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_2592872 : String := "424306444142060A06064306440A06"
theorem cover_2592872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2592872)
  decide +kernel
#print axioms cover_2592872

def state_2592887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_2592887 : String := "430944404109050940414309050509"
theorem cover_2592887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2592887)
  decide +kernel
#print axioms cover_2592887

def state_2592905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_2592905 : String := "440742090A"
theorem cover_2592905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2592905)
  decide +kernel
#print axioms cover_2592905

def state_2592911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_2592911 : String := "424309404144064243050606090909"
theorem cover_2592911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2592911)
  decide +kernel
#print axioms cover_2592911

def state_2592928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 5)))
def hex_2592928 : String := "09"
theorem cover_2592928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2592928)
  decide +kernel
#print axioms cover_2592928

def state_2592930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
def hex_2592930 : String := "404142434405094406084309440640410609064243094409090909"
theorem cover_2592930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2592930)
  decide +kernel
#print axioms cover_2592930

def state_2592957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 11)))
def hex_2592957 : String := "404142434409094440414207430807070840070743094440414342440807090843090708400741430907074243094409090909"
theorem cover_2592957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_2592957)
  decide +kernel
#print axioms cover_2592957
end Mub6.Numerical.CircleFullD0.Forest
