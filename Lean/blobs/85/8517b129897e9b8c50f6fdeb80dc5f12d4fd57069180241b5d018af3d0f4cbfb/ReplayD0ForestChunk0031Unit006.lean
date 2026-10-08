import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1597798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_1597798 : String := "4143424443400841424406054443064106064305414007050508400841420844430808434140070505080843404142050705054008414205444305050505444340414407070741444243410606414007064007064309094243414007060741400744420507050743070744424306084306400706420507404107074144424341400709084140074409420807084341090741090742434140074407070741070743070744420843400741070707420807434007414244430507050705400741424443070707074205074244430808434008414205440805050844434041070741444243414007440842070708084341070741050742434107074107070744080840084144420841050642070608434007414244070707074006410607434208444143080808414305070508"
theorem cover_1597798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 299) (hex := hex_1597798)
  decide +kernel
#print axioms cover_1597798

def state_1598099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 25)))
def hex_1598099 : String := "424440430541420544404306410605050505050544404341440642054043064144094205070605064144424043410606414442060942404306090609440642054008050640434109094109440942400709074306410944064206400906424043414442054009050505414442054007050505054043414409420707444205070541440907444207070743414406050541444240090509420508444205404305070505444206404306414442060942400705070806420540430541070505430641440605054043054142054440430541070505050505"
theorem cover_1598099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 213) (hex := hex_1598099)
  decide +kernel
#print axioms cover_1598099

def state_1598313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
def hex_1598313 : String := "4440434142440A05444043410A08084306410A054043050A050841420A440A0A0843054142054440410A0505050505"
theorem cover_1598313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1598313)
  decide +kernel
#print axioms cover_1598313


end Mub6.Numerical.CircleFullD0.Forest
