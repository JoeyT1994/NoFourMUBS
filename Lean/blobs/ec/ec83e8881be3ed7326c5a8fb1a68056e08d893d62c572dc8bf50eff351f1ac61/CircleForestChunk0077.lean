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
def state_955947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 54)))
def hex_955947 : String := "43440940064109074440080940410707414243440906444008410808054307440907424344070744080707"
theorem cover_955947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_955947)
  decide +kernel
#print axioms cover_955947

def state_955990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_955990 : String := "40064142444306050506424443400641064244070606400541054205430705430605444306400641060706"
theorem cover_955990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_955990)
  decide +kernel
#print axioms cover_955990

def state_956035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_956035 : String := "4142054344080505424344080505434408070A"
theorem cover_956035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_956035)
  decide +kernel
#print axioms cover_956035

def state_956055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_956055 : String := "424344050505434440084108080505"
theorem cover_956055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_956055)
  decide +kernel
#print axioms cover_956055

def state_956070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_956070 : String := "42434440084108064005410542050505434440080840414205054243070507414205434408050542434408050543440807440805440805"
theorem cover_956070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_956070)
  decide +kernel
#print axioms cover_956070

def state_956125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
def hex_956125 : String := "4005410542054344050505"
theorem cover_956125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_956125)
  decide +kernel
#print axioms cover_956125

def state_956136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 27)))
def hex_956136 : String := "40054105420505"
theorem cover_956136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_956136)
  decide +kernel
#print axioms cover_956136

def state_956146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 26)))
def hex_956146 : String := "4144430808430642400608064408434240060806420808"
theorem cover_956146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_956146)
  decide +kernel
#print axioms cover_956146
end Mub6.Numerical.CircleFullD0.Forest
