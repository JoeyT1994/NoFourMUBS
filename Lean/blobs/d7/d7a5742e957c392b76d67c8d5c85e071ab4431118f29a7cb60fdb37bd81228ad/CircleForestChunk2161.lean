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
def state_2599304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_2599304 : String := "444142400543440541080505050541424440050807444005430A0540430A0508424440050808440A0A"
theorem cover_2599304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2599304)
  decide +kernel
#print axioms cover_2599304

def state_2599345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_2599345 : String := "4344414309050541430944400509090A44054144050A0A"
theorem cover_2599345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2599345)
  decide +kernel
#print axioms cover_2599345

def state_2599368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2599368 : String := "42434442434005410A05050542430A44400508080A4405424405080A430A44050A"
theorem cover_2599368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2599368)
  decide +kernel
#print axioms cover_2599368

def state_2599404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_2599404 : String := "434440064106064041064243440640064207060606410642434442070607060644400641060606"
theorem cover_2599404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2599404)
  decide +kernel
#print axioms cover_2599404

def state_2599444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_2599444 : String := "44400641060606"
theorem cover_2599444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2599444)
  decide +kernel
#print axioms cover_2599444

def state_2599453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2599453 : String := "414442434006064041440806064144050606434041090641070640410944080841070A42064306400606444206430640060606"
theorem cover_2599453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2599453)
  decide +kernel
#print axioms cover_2599453

def state_2599504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2599504 : String := "4144424341070608430941050A0606"
theorem cover_2599504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2599504)
  decide +kernel
#print axioms cover_2599504

def state_2599519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_2599519 : String := "06"
theorem cover_2599519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2599519)
  decide +kernel
#print axioms cover_2599519

def state_2599523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_2599523 : String := "4042434406410640064209060606424344064142430A06060A0606"
theorem cover_2599523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2599523)
  decide +kernel
#print axioms cover_2599523
end Mub6.Numerical.CircleFullD0.Forest
