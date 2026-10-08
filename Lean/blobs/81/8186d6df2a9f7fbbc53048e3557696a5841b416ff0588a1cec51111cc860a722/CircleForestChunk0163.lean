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
def state_60476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_60476 : String := "41440905444342410909090943420505420505"
theorem cover_60476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_60476)
  decide +kernel
#print axioms cover_60476

def state_60496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_60496 : String := "444342400906090943420505420505"
theorem cover_60496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_60496)
  decide +kernel
#print axioms cover_60496

def state_60515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
def hex_60515 : String := "414409434240050909094408434208414009440843420A41050A080808"
theorem cover_60515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_60515)
  decide +kernel
#print axioms cover_60515

def state_60544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
def hex_60544 : String := "41440943420640410644094342064005060606064408434208404144084342404106080640414409054408430A084106440843420692060808414406060808"
theorem cover_60544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_60544)
  decide +kernel
#print axioms cover_60544

def state_60608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
def hex_60608 : String := "41094409434140094244094341094009424409054409050944094341070609404244084306080642440843414042080642084409070A084409430641070709"
theorem cover_60608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_60608)
  decide +kernel
#print axioms cover_60608

def state_60672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
def hex_60672 : String := "4409434041094244094340094109424406050A090A0A09"
theorem cover_60672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_60672)
  decide +kernel
#print axioms cover_60672

def state_60696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 16)))
def hex_60696 : String := "434041094208440843400905084142440743410705080A42050509"
theorem cover_60696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_60696)
  decide +kernel
#print axioms cover_60696
end Mub6.Numerical.CircleFullPrototype.Forest
