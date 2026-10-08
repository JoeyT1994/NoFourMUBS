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
def state_376949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
def hex_376949 : String := "444042410A44430A4042410A07070A43064007060A0A4042060806"
theorem cover_376949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_376949)
  decide +kernel
#print axioms cover_376949

def state_376981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 24)))
def hex_376981 : String := "44404244410A430A05410A430A40424405410705050A0A0A40424143060843064440070606080A"
theorem cover_376981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_376981)
  decide +kernel
#print axioms cover_376981

def state_377020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 24)))
def hex_377020 : String := "4440424344054140420505090505430A0542430A050A4042090842090A"
theorem cover_377020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_377020)
  decide +kernel
#print axioms cover_377020

def state_377049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 47) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
def hex_377049 : String := "43444042414405434007060505410A0542410A050A400742060A44400505404241090707420941430A0505"
theorem cover_377049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_377049)
  decide +kernel
#print axioms cover_377049

def state_377092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 24)))
def hex_377092 : String := "410A430A444205054240070A07"
theorem cover_377092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_377092)
  decide +kernel
#print axioms cover_377092

def state_377105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
def hex_377105 : String := "42410A430A444005054042060A060A"
theorem cover_377105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_377105)
  decide +kernel
#print axioms cover_377105

def state_377120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
def hex_377120 : String := "404241434440080606444008080843444007060644400709070842060A"
theorem cover_377120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_377120)
  decide +kernel
#print axioms cover_377120

def state_377149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
def hex_377149 : String := "41084306400806"
theorem cover_377149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_377149)
  decide +kernel
#print axioms cover_377149

def state_377156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
def hex_377156 : String := "430A440A08"
theorem cover_377156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_377156)
  decide +kernel
#print axioms cover_377156

def state_377161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_377161 : String := "410A424306440A060A"
theorem cover_377161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_377161)
  decide +kernel
#print axioms cover_377161

def state_377170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_377170 : String := "40410842060806"
theorem cover_377170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_377170)
  decide +kernel
#print axioms cover_377170
end Mub6.Numerical.CircleFullPrototype.Forest
