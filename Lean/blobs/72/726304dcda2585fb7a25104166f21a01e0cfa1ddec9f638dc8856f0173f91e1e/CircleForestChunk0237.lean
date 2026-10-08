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
def state_132231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_132231 : String := "42434440414205074208430708410542054306084007074440080840410542054307050543074442400A4107080707"
theorem cover_132231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_132231)
  decide +kernel
#print axioms cover_132231

def state_132278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_132278 : String := "4243440841400942080708084344414240430608060606410707444142080808414240094307070709"
theorem cover_132278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_132278)
  decide +kernel
#print axioms cover_132278

def state_132319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_132319 : String := "41420543074440424105080706074243440640414205070806084306440640410708410706"
theorem cover_132319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_132319)
  decide +kernel
#print axioms cover_132319

def state_132356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_132356 : String := "43440607444206430640414405090506424344060744404143060A4306050640410743070A4107430707430744400A0707"
theorem cover_132356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_132356)
  decide +kernel
#print axioms cover_132356

def state_132406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_132406 : String := "434406410644064042430509050644084143440640424406094406050644084042084309084208434406080843440640090808"
theorem cover_132406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_132406)
  decide +kernel
#print axioms cover_132406
end Mub6.Numerical.CircleFullPrototype.Forest
