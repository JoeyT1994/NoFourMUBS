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
def state_1524742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
def hex_1524742 : String := "43400A42830A4042440A0A0A4244414383400A084383400A08414383400A42090A4383400A4244410A0A4109050A0A"
theorem cover_1524742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1524742)
  decide +kernel
#print axioms cover_1524742

def state_1524789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 176)))
def hex_1524789 : String := "43400A42830A400A424441430A400A08430805414383400542050A050A"
theorem cover_1524789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1524789)
  decide +kernel
#print axioms cover_1524789

def state_1524818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 177)))
def hex_1524818 : String := "4143400A074042440A080A4244414307400A074383400A42444109050507070743400A42830A4042050A42444143830505050A"
theorem cover_1524818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1524818)
  decide +kernel
#print axioms cover_1524818

def state_1524871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 176)))
def hex_1524871 : String := "4143834042440841094383094408410943834042090908420808438340424407414383400508054408414383404205440505080608"
theorem cover_1524871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1524871)
  decide +kernel
#print axioms cover_1524871

def state_1524924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 177)))
def hex_1524924 : String := "414383404209444109438309090943834042444143830505054441438340050905414383050542440606440606"
theorem cover_1524924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1524924)
  decide +kernel
#print axioms cover_1524924
end Mub6.Numerical.CircleFullD0.Forest
