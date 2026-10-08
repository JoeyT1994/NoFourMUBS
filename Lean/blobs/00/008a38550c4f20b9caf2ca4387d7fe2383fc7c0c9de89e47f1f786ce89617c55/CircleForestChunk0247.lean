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
def state_134649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_134649 : String := "414244084340414208440643060A084142060606084409434042410A440643050A0A4206060A42084408434005064005410A05"
theorem cover_134649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_134649)
  decide +kernel
#print axioms cover_134649

def state_134706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
def hex_134706 : String := "414243090A0A4209430505"
theorem cover_134706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_134706)
  decide +kernel
#print axioms cover_134706

def state_134717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
def hex_134717 : String := "414243444041070841070807440840410A09414243070807420843070843070A4243440809440809434440054142430508050509440A4009410A09"
theorem cover_134717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_134717)
  decide +kernel
#print axioms cover_134717

def state_134776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
def hex_134776 : String := "40094142090709"
theorem cover_134776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_134776)
  decide +kernel
#print axioms cover_134776

def state_134783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
def hex_134783 : String := "44400A410A42080A4006414206064206430906"
theorem cover_134783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_134783)
  decide +kernel
#print axioms cover_134783

def state_134802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
def hex_134802 : String := "434442400A41074305050A42400707070A"
theorem cover_134802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_134802)
  decide +kernel
#print axioms cover_134802

def state_134819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_134819 : String := "424344414009420843050509094441400808080943440505440505"
theorem cover_134819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_134819)
  decide +kernel
#print axioms cover_134819

def state_134853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 26 else 26)))
def hex_134853 : String := "4344404107420606410606400707444008084041424307080742084307440840070741424305050742084307440840410708410508"
theorem cover_134853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_134853)
  decide +kernel
#print axioms cover_134853
end Mub6.Numerical.CircleFullPrototype.Forest
