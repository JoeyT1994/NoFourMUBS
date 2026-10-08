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
def state_173962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 23)))
def hex_173962 : String := "43414440094243050509054440090840420543050542430505434441050805440805414409054408400508"
theorem cover_173962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_173962)
  decide +kernel
#print axioms cover_173962

def state_174005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 23)))
def hex_174005 : String := "434144094205094409424009434409410542400543050509090909"
theorem cover_174005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_174005)
  decide +kernel
#print axioms cover_174005

def state_174035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 18 else (if j.val < 4 then 30 else 23)))
def hex_174035 : String := "44404208434107440840090709420843070A40054205430706"
theorem cover_174035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_174035)
  decide +kernel
#print axioms cover_174035

def state_174060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 30 else 23)))
def hex_174060 : String := "44084042434408050643444140420543440905054208430708084105404205430505420643444105080506440806420643444140420607060841060606"
theorem cover_174060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_174060)
  decide +kernel
#print axioms cover_174060

def state_174121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 31 else 23)))
def hex_174121 : String := "4144080608"
theorem cover_174121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_174121)
  decide +kernel
#print axioms cover_174121

def state_174128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 23)))
def hex_174128 : String := "4440090A4042434105444005070541054409050A0A"
theorem cover_174128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_174128)
  decide +kernel
#print axioms cover_174128

def state_174150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 46)))
def hex_174150 : String := "40424341090908094243410A05080A"
theorem cover_174150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_174150)
  decide +kernel
#print axioms cover_174150

def state_174169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 94)))
def hex_174169 : String := "4140094243070A0A40424344084109080809424344084140420709070808434409410A40090A09"
theorem cover_174169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_174169)
  decide +kernel
#print axioms cover_174169

def state_174209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 38 else (if j.val < 4 then 60 else 95)))
def hex_174209 : String := "40054205430A0A"
theorem cover_174209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_174209)
  decide +kernel
#print axioms cover_174209
end Mub6.Numerical.CircleFullPrototype.Forest
