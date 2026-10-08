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
def state_2301810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 93)))
def hex_2301810 : String := "4041424344410A050505430705054142430744404105050705074243444005060505434440410705060708"
theorem cover_2301810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2301810)
  decide +kernel
#print axioms cover_2301810

def state_2301853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 46)))
def hex_2301853 : String := "44400841434244C4400841070844C40808434208080540054143080505"
theorem cover_2301853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2301853)
  decide +kernel
#print axioms cover_2301853

def state_2301882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 46)))
def hex_2301882 : String := "434440410A42434440084107080808430708410742430744400807400807074041070807444008414243070606084008410708"
theorem cover_2301882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2301882)
  decide +kernel
#print axioms cover_2301882

def state_2301934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 46)))
def hex_2301934 : String := "43444041420508054142430605434440414306080606060842054306050505"
theorem cover_2301934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2301934)
  decide +kernel
#print axioms cover_2301934

def state_2301965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 46)))
def hex_2301965 : String := "4344404108084142434440410806064008060843444008070708424306050840054142430805080508"
theorem cover_2301965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2301965)
  decide +kernel
#print axioms cover_2301965

def state_2302006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 47)))
def hex_2302006 : String := "4005414243444005410705050543444041070507070505"
theorem cover_2302006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2302006)
  decide +kernel
#print axioms cover_2302006
end Mub6.Numerical.CircleFullD0.Forest
