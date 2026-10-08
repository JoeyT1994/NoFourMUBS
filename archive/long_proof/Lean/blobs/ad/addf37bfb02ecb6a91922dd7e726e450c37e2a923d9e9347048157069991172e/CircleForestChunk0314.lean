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
def state_150760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 27 else 27)))
def hex_150760 : String := "41084308440908"
theorem cover_150760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_150760)
  decide +kernel
#print axioms cover_150760

def state_150767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_150767 : String := "4241094344404209090908440940424109434409080908094108430809"
theorem cover_150767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_150767)
  decide +kernel
#print axioms cover_150767

def state_150798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
def hex_150798 : String := "444041424306084306440640410606064208430644060A41420606064041420A430A444041420A430644060A0A0A0A0A0A"
theorem cover_150798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_150798)
  decide +kernel
#print axioms cover_150798

def state_150848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
def hex_150848 : String := "4041420744084340414208440643060707414207440643060707070741420744074340410606060707"
theorem cover_150848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_150848)
  decide +kernel
#print axioms cover_150848

def state_150892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 27)))
def hex_150892 : String := "43440A0A4407400707"
theorem cover_150892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_150892)
  decide +kernel
#print axioms cover_150892

def state_150904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_150904 : String := "4142430A4407400707434440418D420A430607418D0A40418D0A0A4440418D070740418D42074344070907418D0742430A0743444007070907"
theorem cover_150904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_150904)
  decide +kernel
#print axioms cover_150904

def state_150961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_150961 : String := "41420A430A444007074041420A430A07070A4207430A07"
theorem cover_150961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_150961)
  decide +kernel
#print axioms cover_150961

def state_150984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 55)))
def hex_150984 : String := "4041420A44430A40418D09418D0A09090A"
theorem cover_150984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_150984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_150984)
  decide +kernel
#print axioms cover_150984
end Mub6.Numerical.CircleFullPrototype.Forest
