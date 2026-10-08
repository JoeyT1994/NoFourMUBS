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
def state_1039224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1039224 : String := "4142430944420509060942434441094206070606430907"
theorem cover_1039224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1039224)
  decide +kernel
#print axioms cover_1039224

def state_1039253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1039253 : String := "42444107434042074407410707070741430A054340424407070A0A40070744414309074309400707410A430A40424407050A0A"
theorem cover_1039253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1039253)
  decide +kernel
#print axioms cover_1039253

def state_1039304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1039304 : String := "42444143090506410A430A060A"
theorem cover_1039304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1039304)
  decide +kernel
#print axioms cover_1039304

def state_1039317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1039317 : String := "4042410A430A4407050A0A"
theorem cover_1039317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1039317)
  decide +kernel
#print axioms cover_1039317

def state_1039328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_1039328 : String := "44404207074206074042050507"
theorem cover_1039328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1039328)
  decide +kernel
#print axioms cover_1039328

def state_1039341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1039341 : String := "43444044410A090A0A0A444043440707070740430A0707"
theorem cover_1039341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1039341)
  decide +kernel
#print axioms cover_1039341

def state_1039370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
def hex_1039370 : String := "444340420644064106060606434042414407074406074144430A070A444340420605060643084042070A0642410606410A0640420641070606"
theorem cover_1039370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1039370)
  decide +kernel
#print axioms cover_1039370

def state_1039428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1039428 : String := "430940440641070606"
theorem cover_1039428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1039428)
  decide +kernel
#print axioms cover_1039428
end Mub6.Numerical.CircleFullD0.Forest
