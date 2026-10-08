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
def state_761449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 15)))
def hex_761449 : String := "414342440740050A4407050743424409404143050509094440414305050909404105430505414305050942440906440740410506410709"
theorem cover_761449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_761449)
  decide +kernel
#print axioms cover_761449

def state_761504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_761504 : String := "4342090842094409414043420908064309094043080609"
theorem cover_761504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_761504)
  decide +kernel
#print axioms cover_761504

def state_761527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_761527 : String := "4143420944090A42094409404143420944070A074309094143090709430909"
theorem cover_761527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_761527)
  decide +kernel
#print axioms cover_761527

def state_761558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_761558 : String := "44400941074407094041424344060606434407400641074342060706440740050742094344094140064309060909414208434407404107430907080709"
theorem cover_761558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_761558)
  decide +kernel
#print axioms cover_761558

def state_761624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_761624 : String := "42430A444143060A060A4344414206060641420A440A0A0A4441424306400A0A43404406060640074406054206070A"
theorem cover_761624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_761624)
  decide +kernel
#print axioms cover_761624

def state_761671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_761671 : String := "42430644064308444006060843440A060A"
theorem cover_761671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_761671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_761671)
  decide +kernel
#print axioms cover_761671
end Mub6.Numerical.CircleFullPrototype.Forest
