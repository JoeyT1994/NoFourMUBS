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
def state_1558750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
def hex_1558750 : String := "40444243414006440505404442060808444241430506434044424308060808444243054105404408060705074006444206410643400605060641054305400844424105430505050542410643070607410640064442064341064006440806060643410540440805054105400844434105420805080842430806430708444243410540444241074307404442414305064340448907074006094105430540444206050505420707444241054305090507410543050507444207050741400605404442434106404442064341050606060906434105404442430506054206054442430509050541064006094209430706444209430509094305410540444305410542400805050505424307410644090707"
theorem cover_1558750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 271) (hex := hex_1558750)
  decide +kernel
#print axioms cover_1558750


end Mub6.Numerical.CircleFullD0.Forest
