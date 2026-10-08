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
def state_1318046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1318046 : String := "4344420606420741070644424140440608444306054307080541400644064306424140064409080609064207414008430A0840084344060708"
theorem cover_1318046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1318046)
  decide +kernel
#print axioms cover_1318046

def state_1318104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1318104 : String := "44420741404306440642060608064207414007430707404306074307440707"
theorem cover_1318104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1318104)
  decide +kernel
#print axioms cover_1318104

def state_1318136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
def hex_1318136 : String := "424140444307420541404405050A054307420541400707054443070A07054140444342060642414009440943420A0909400644060909434241404406074443064207060740060741400644060506424140444342070609434207414008070908444342074140094443060943070940064406430609420A094342074140070740070742074140094409434207050840084409084044094342060608444342050609434207414006070642050941400944094342410540094409050509400644094342060609444308420A08434241070708424140444342074140440843070A080A0A43420741070742074140440A4307060A0A440A43070A40440A4342074107070A0A41404443080943424105404443050905050542410540090A0544084305420A0540444308094342414044430609434206050944084308420A084006440843060A410506424140090A0909440843080A40440643064205064443060A43420708424140050A05414044094342060609440843080A40060A"
theorem cover_1318136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 377) (hex := hex_1318136)
  decide +kernel
#print axioms cover_1318136


end Mub6.Numerical.CircleFullD0.Forest
