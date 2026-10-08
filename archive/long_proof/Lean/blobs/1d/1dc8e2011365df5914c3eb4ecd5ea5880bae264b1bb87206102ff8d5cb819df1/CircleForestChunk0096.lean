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
def state_23034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 21)))
def hex_23034 : String := "43444042084143440809080842084143440640080808084042090942410508414443070507094408400808"
theorem cover_23034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_23034)
  decide +kernel
#print axioms cover_23034

def state_23077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
def hex_23077 : String := "4344404142434440410705060744084007070742080541424344060744084007070742080640070744400808404142430706070841424307080708"
theorem cover_23077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_23077)
  decide +kernel
#print axioms cover_23077

def state_23137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_23137 : String := "42054344410940420906064105400705444105404205090505"
theorem cover_23137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_23137)
  decide +kernel
#print axioms cover_23137

def state_23163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_23163 : String := "4344420A40410A060642054041050A0544420540080505"
theorem cover_23163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_23163)
  decide +kernel
#print axioms cover_23163

def state_23187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
def hex_23187 : String := "4406404142444306404105420506050707424406430640420A070A064142050606"
theorem cover_23187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_23187)
  decide +kernel
#print axioms cover_23187

def state_23221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_23221 : String := "4041424344064041050805084306440640410908094208064142050606"
theorem cover_23221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_23221)
  decide +kernel
#print axioms cover_23221
end Mub6.Numerical.CircleFullPrototype.Forest
