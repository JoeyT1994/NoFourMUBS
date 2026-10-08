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
def state_151267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 108 else 54)))
def hex_151267 : String := "444041428D430505424305050541420606064041428D08424305050541428D08420A430505"
theorem cover_151267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 37) (hex := hex_151267)
  decide +kernel
#print axioms cover_151267

def state_151304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 109 else 54)))
def hex_151304 : String := "444041428D44050542070541428D0942074405054041428D4305440505424305070541428D434440050808444005090842434440050740050A07430505"
theorem cover_151304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_151304)
  decide +kernel
#print axioms cover_151304

def state_151365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 92) else (if j.val < 3 then 93 else (if j.val < 4 then 54 else 54)))
def hex_151365 : String := "43440508444005424109050540054241080505"
theorem cover_151365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_151365)
  decide +kernel
#print axioms cover_151365

def state_151384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 93) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_151384 : String := "42434405400541420A050544074005414207050505"
theorem cover_151384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_151384)
  decide +kernel
#print axioms cover_151384

def state_151408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 108 else 54)))
def hex_151408 : String := "44064041420A08420A43064406080A"
theorem cover_151408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_151408)
  decide +kernel
#print axioms cover_151408

def state_151424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 109 else 108)))
def hex_151424 : String := "4041094207440643060709"
theorem cover_151424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_151424)
  decide +kernel
#print axioms cover_151424

def state_151435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 92 else (if j.val < 4 then 109 else 109)))
def hex_151435 : String := "4041424344404109420606090A44094041424308070807410907430844090842430A0743444005060844074005074142430A0909420A430A07"
theorem cover_151435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_151435)
  decide +kernel
#print axioms cover_151435

def state_151492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 92) else (if j.val < 3 then 93 else (if j.val < 4 then 54 else 54)))
def hex_151492 : String := "434406084409404241084305050808"
theorem cover_151492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_151492)
  decide +kernel
#print axioms cover_151492
end Mub6.Numerical.CircleFullPrototype.Forest
