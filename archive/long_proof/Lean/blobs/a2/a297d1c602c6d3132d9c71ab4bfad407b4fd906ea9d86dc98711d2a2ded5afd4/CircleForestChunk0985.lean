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
def state_1536863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 54) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 37)))
def hex_1536863 : String := "434042444341050A0A43050A440A43050A42444341050A09430509440A0A0A"
theorem cover_1536863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1536863)
  decide +kernel
#print axioms cover_1536863

def state_1536896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 37)))
def hex_1536896 : String := "424441434007420707070741434042074407054244070A0A070744414340420709420A0607074143404244090505050A430907"
theorem cover_1536896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1536896)
  decide +kernel
#print axioms cover_1536896

def state_1536947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 37)))
def hex_1536947 : String := "42444143080A0841434042080A080A430807444143060A064143050A43060A"
theorem cover_1536947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1536947)
  decide +kernel
#print axioms cover_1536947

def state_1536978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 37)))
def hex_1536978 : String := "40070A"
theorem cover_1536978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1536978)
  decide +kernel
#print axioms cover_1536978

def state_1536981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 18)))
def hex_1536981 : String := "44414340420A0A0A0A434042414306070606060A41434042440A0508420A0A0A43404244410A064143050A0909424406410A06060A"
theorem cover_1536981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1536981)
  decide +kernel
#print axioms cover_1536981

def state_1537036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
def hex_1537036 : String := "4441434006420505064340424407060842444143050607410543400605064441080941054305074006420607410643400642060506"
theorem cover_1537036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1537036)
  decide +kernel
#print axioms cover_1537036

def state_1537089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
def hex_1537089 : String := "44410843400842440905050808"
theorem cover_1537089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1537089)
  decide +kernel
#print axioms cover_1537089

def state_1537105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 54) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 38)))
def hex_1537105 : String := "4340420505050A"
theorem cover_1537105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1537105)
  decide +kernel
#print axioms cover_1537105
end Mub6.Numerical.CircleFullD0.Forest
