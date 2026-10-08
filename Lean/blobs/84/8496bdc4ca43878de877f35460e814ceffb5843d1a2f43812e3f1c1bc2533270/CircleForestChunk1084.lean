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
def state_1560545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 166 else 176)))
def hex_1560545 : String := "414044428906070706"
theorem cover_1560545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1560545)
  decide +kernel
#print axioms cover_1560545

def state_1560555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 242) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 176)))
def hex_1560555 : String := "404442894341054044060706410A400A0A42894307410740080744428943060A428907"
theorem cover_1560555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1560555)
  decide +kernel
#print axioms cover_1560555

def state_1560590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 243) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 176)))
def hex_1560590 : String := "40444289430641404406420A0606064289434140440607060641404408084406420706404406420806064406428906"
theorem cover_1560590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1560590)
  decide +kernel
#print axioms cover_1560590

def state_1560639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 166 else 177)))
def hex_1560639 : String := "4107404442430741074044050706070707"
theorem cover_1560639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1560639)
  decide +kernel
#print axioms cover_1560639

def state_1560656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 167 else 177)))
def hex_1560656 : String := "4140444209430708090940444243410905094341404408070740448942050744060741094005094209430708444209434107060909"
theorem cover_1560656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1560656)
  decide +kernel
#print axioms cover_1560656

def state_1560709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 177)))
def hex_1560709 : String := "43074140444207070707404442434107404489070641400844080740084489420807430741074008440607424307080744424306410740440607060707"
theorem cover_1560709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1560709)
  decide +kernel
#print axioms cover_1560709
end Mub6.Numerical.CircleFullD0.Forest
