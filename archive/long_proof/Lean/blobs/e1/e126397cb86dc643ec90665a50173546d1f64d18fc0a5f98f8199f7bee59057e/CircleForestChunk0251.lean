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
def state_135598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 53)))
def hex_135598 : String := "41424408434041420544088D08410508084409434042410944088D0A090942084408434041420844068D420844068D414244068D06420606400808"
theorem cover_135598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_135598)
  decide +kernel
#print axioms cover_135598

def state_135657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 53)))
def hex_135657 : String := "400A4142080908"
theorem cover_135657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_135657)
  decide +kernel
#print axioms cover_135657

def state_135666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_135666 : String := "4243444041064206064142054305054243050543444041060641054205430505060606064344400A4241074307060A0606"
theorem cover_135666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_135666)
  decide +kernel
#print axioms cover_135666

def state_135715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_135715 : String := "42434440094142084309060906064344404142060A0941424344400941424307060709060643440A070A4243090943444005410A05090A09440A06"
theorem cover_135715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_135715)
  decide +kernel
#print axioms cover_135715

def state_135776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 27)))
def hex_135776 : String := "4344404105420543440505050540410542050605444041054205060505"
theorem cover_135776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_135776)
  decide +kernel
#print axioms cover_135776

def state_135805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 27)))
def hex_135805 : String := "434440424107434440070707440A06410743070A42410543440505054107430744090740070744400A4241054305050A06"
theorem cover_135805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_135805)
  decide +kernel
#print axioms cover_135805
end Mub6.Numerical.CircleFullPrototype.Forest
