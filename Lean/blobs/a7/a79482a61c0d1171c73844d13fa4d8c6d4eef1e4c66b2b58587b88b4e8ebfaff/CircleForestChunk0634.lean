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
def state_391115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 48)))
def hex_391115 : String := "410843444007090744404207074241084307080808"
theorem cover_391115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_391115)
  decide +kernel
#print axioms cover_391115

def state_391136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 49)))
def hex_391136 : String := "424143400508080708"
theorem cover_391136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_391136)
  decide +kernel
#print axioms cover_391136

def state_391145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
def hex_391145 : String := "400644424106434440064206064006420908060808"
theorem cover_391145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_391145)
  decide +kernel
#print axioms cover_391145

def state_391166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_391166 : String := "434007444243074144400742070707070707400A44420A4143444006420A0807060A420707"
theorem cover_391166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_391166)
  decide +kernel
#print axioms cover_391166

def state_391203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_391203 : String := "414340074207070807"
theorem cover_391203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_391203)
  decide +kernel
#print axioms cover_391203

def state_391217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 24)))
def hex_391217 : String := "4440414342054440050905094308094143060908400906"
theorem cover_391217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_391217)
  decide +kernel
#print axioms cover_391217

def state_391244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 48)))
def hex_391244 : String := "4442404143050543054442054005050541430609064041430A440A0A43440A0644424005410A06B54205B50A4240050640410A43050506"
theorem cover_391244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_391244)
  decide +kernel
#print axioms cover_391244

def state_391299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 48)))
def hex_391299 : String := "44420940434109444209B5090943410744420707090909"
theorem cover_391299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_391299)
  decide +kernel
#print axioms cover_391299

def state_391323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 48)))
def hex_391323 : String := "44420840414306444208B506060606"
theorem cover_391323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_391323)
  decide +kernel
#print axioms cover_391323
end Mub6.Numerical.CircleFullPrototype.Forest
