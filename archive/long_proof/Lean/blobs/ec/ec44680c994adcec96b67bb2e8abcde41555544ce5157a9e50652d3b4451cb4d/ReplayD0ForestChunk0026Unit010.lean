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
def state_1553032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 21)))
def hex_1553032 : String := "4441430540424441050908054244410543054042440905054244050505050543094009424441430940094244074309070909414305404244090809424443054105070505430940094244090909094143050543094044424108090942080544424143050543094009444243094105090942430508054105094241054305400844050505"
theorem cover_1553032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 131) (hex := hex_1553032)
  decide +kernel
#print axioms cover_1553032

def state_1553163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 10)))
def hex_1553163 : String := "4441404206430806424341440A064407400642060A4106074341440A0644404207070A4008420A0A41080A400742434144074007420707070743414407404207074243410A070743410A44070A070707410640420643440806064243444140064206434441060A0606400742074344074140060A07074106400642064443410640064206440706060644410607064344414042060842434441060A080A434441050A050840420743090742434407414008420A0A070743444140070A07414008440A0540074407094407410807410640440806444243410840084442430807080806434105400844420805080842430806084441060706"
theorem cover_1553163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 247) (hex := hex_1553163)
  decide +kernel
#print axioms cover_1553163

def state_1553410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
def hex_1553410 : String := "43444140410509410542430544400941050905054009414243094409090909410540094441050941050944414043080843414244080505424440080A40080A440A0541080A40430907434142444007430907404309084341420A05090A440909424407400743090709414244070A0A0741400843050840434409080843444142400843050805424009430944410A0741080909410542400844430508050544414208084240070A40080A4108420808"
theorem cover_1553410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 175) (hex := hex_1553410)
  decide +kernel
#print axioms cover_1553410
end Mub6.Numerical.CircleFullD0.Forest
