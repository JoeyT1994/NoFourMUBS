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
def state_1662161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
def hex_1662161 : String := "4440420A0642434441404205090505050943444140060840060541400605050640420A064205430506"
theorem cover_1662161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1662161)
  decide +kernel
#print axioms cover_1662161

def state_1662202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 59 else 48)))
def hex_1662202 : String := "06"
theorem cover_1662202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1662202)
  decide +kernel
#print axioms cover_1662202

def state_1662203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 29 else 48)))
def hex_1662203 : String := "430606"
theorem cover_1662203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1662203)
  decide +kernel
#print axioms cover_1662203

def state_1662206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
def hex_1662206 : String := "42434144404207080740424305080808444042070907050943084144400607084409400608"
theorem cover_1662206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1662206)
  decide +kernel
#print axioms cover_1662206

def state_1662243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 49)))
def hex_1662243 : String := "4042434107444007050541064406060742430541444042094308060840050544090543084108440808"
theorem cover_1662243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1662243)
  decide +kernel
#print axioms cover_1662243

def state_1662284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
def hex_1662284 : String := "44404243440A41400A05050A4344064106060642430509434441404308420906074005054108054409410909404243050A4307064205430541444006050505"
theorem cover_1662284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1662284)
  decide +kernel
#print axioms cover_1662284

def state_1662347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_1662347 : String := "42054305414007444205070505"
theorem cover_1662347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1662347)
  decide +kernel
#print axioms cover_1662347

def state_1662360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_1662360 : String := "444205430544400A414205430509050505"
theorem cover_1662360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1662360)
  decide +kernel
#print axioms cover_1662360

def state_1662377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_1662377 : String := "414442430540410905054340410805054041440742050844420509054108050505"
theorem cover_1662377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1662377)
  decide +kernel
#print axioms cover_1662377
end Mub6.Numerical.CircleFullD0.Forest
