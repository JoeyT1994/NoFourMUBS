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
def state_1543016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 39)))
def hex_1543016 : String := "424144430540420A0A0A054443084007084305404241050741050742080541054443054042070942080605"
theorem cover_1543016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1543016)
  decide +kernel
#print axioms cover_1543016

def state_1543059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 39)))
def hex_1543059 : String := "404241440706074144070A0742410A44070A410A44070A"
theorem cover_1543059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_1543059)
  decide +kernel
#print axioms cover_1543059

def state_1543082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
def hex_1543082 : String := "4443400706074340420709424144084308400708084144064305400906064007420707"
theorem cover_1543082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1543082)
  decide +kernel
#print axioms cover_1543082

def state_1543118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
def hex_1543118 : String := "444340094244064143050A060640420744070A42440A0A0A43404241050905424105440905054042410A44070A410844090842410A0A410A0A"
theorem cover_1543118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1543118)
  decide +kernel
#print axioms cover_1543118

def state_1543175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
def hex_1543175 : String := "44430607430940420707424144074340070607074144060A06"
theorem cover_1543175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1543175)
  decide +kernel
#print axioms cover_1543175

def state_1543200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
def hex_1543200 : String := "440740074244074143400706070744064143060706"
theorem cover_1543200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1543200)
  decide +kernel
#print axioms cover_1543200

def state_1543221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 9)))
def hex_1543221 : String := "414407400742434144070A070743410A070707"
theorem cover_1543221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1543221)
  decide +kernel
#print axioms cover_1543221
end Mub6.Numerical.CircleFullD0.Forest
