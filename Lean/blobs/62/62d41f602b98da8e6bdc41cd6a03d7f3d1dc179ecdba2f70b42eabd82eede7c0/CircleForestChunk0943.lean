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
def state_1526864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 180 else (if j.val < 4 then 67 else 88)))
def hex_1526864 : String := "4441434042050542440505440805400542050505414340054205050505"
theorem cover_1526864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1526864)
  decide +kernel
#print axioms cover_1526864

def state_1526893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 181 else (if j.val < 4 then 67 else 88)))
def hex_1526893 : String := "444143400A424408410A050A404205054244050544080A43400542050A054143400A4244410A05050A4005420544050505"
theorem cover_1526893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1526893)
  decide +kernel
#print axioms cover_1526893

def state_1526943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 89)))
def hex_1526943 : String := "4340424441070807070740084244410943400807090707"
theorem cover_1526943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1526943)
  decide +kernel
#print axioms cover_1526943

def state_1526966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 89)))
def hex_1526966 : String := "434042050A424441434007074005420505054107054441070A07400542440505444143400507050505"
theorem cover_1526966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1526966)
  decide +kernel
#print axioms cover_1526966

def state_1527007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 33 else 44)))
def hex_1527007 : String := "4441430A400A42440A0707430A400A42440A0A0A4107430A400842440A0707"
theorem cover_1527007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1527007)
  decide +kernel
#print axioms cover_1527007

def state_1527041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 88)))
def hex_1527041 : String := "43404244410808410743074042090707444107080742440807074042444109434042080808090944410943084042094408090841074307094209440807"
theorem cover_1527041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1527041)
  decide +kernel
#print axioms cover_1527041
end Mub6.Numerical.CircleFullD0.Forest
