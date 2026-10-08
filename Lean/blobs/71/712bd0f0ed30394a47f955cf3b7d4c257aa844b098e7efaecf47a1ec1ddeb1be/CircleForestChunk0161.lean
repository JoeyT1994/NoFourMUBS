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
def state_976098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 56)))
def hex_976098 : String := "43400741444243074007414205070707070740414442050705074144420543400741444205090544090505054442434005060543070A420507"
theorem cover_976098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_976098)
  decide +kernel
#print axioms cover_976098

def state_976155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 56)))
def hex_976155 : String := "4307400741444243400707404144080507414408054408054307400741440807074243070507444243070A0707"
theorem cover_976155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_976155)
  decide +kernel
#print axioms cover_976155

def state_976200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 57)))
def hex_976200 : String := "4243070507"
theorem cover_976200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_976200)
  decide +kernel
#print axioms cover_976200

def state_976205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
def hex_976205 : String := "44424307400741440A07070707"
theorem cover_976205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_976205)
  decide +kernel
#print axioms cover_976205

def state_976221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 56)))
def hex_976221 : String := "434041440942430905090909404144420543404144090509090505444206430906420543400709054144060506"
theorem cover_976221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_976221)
  decide +kernel
#print axioms cover_976221

def state_976266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 56)))
def hex_976266 : String := "4309404144424309404144080544064309050609424340070905430940414443070505074144090509440942430740070609414409424309050909"
theorem cover_976266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_976266)
  decide +kernel
#print axioms cover_976266
end Mub6.Numerical.CircleFullD0.Forest
