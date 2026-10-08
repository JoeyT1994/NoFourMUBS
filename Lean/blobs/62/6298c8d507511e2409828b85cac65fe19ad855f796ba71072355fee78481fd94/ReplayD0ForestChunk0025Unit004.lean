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
def state_1537584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_1537584 : String := "4041420643444008410742090705064243444042064106434440064206410543050606064209410943444042094105430509090509060643444041420608424344404206054241054305050505064305440805414243050943054440080705424344404205050505444042094341050A09090943054440434105050A434105050A0540440506054440434106420608064341094209440A080906410942094344404142090742430709430544090541074209070509"
theorem cover_1537584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 181) (hex := hex_1537584)
  decide +kernel
#print axioms cover_1537584

def state_1537765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1537765 : String := "434440410742434406054440414243050A06060640410505074305060740410505074440410A434244400A410A064041084342440A0508084143070A43424406400505060A0A0A414307094342440640410706070642440643400A09090A40414308084344424041050541074305440A050505444240084341080A0808084143070943074442434041070A07090A420907"
theorem cover_1537765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 145) (hex := hex_1537765)
  decide +kernel
#print axioms cover_1537765

def state_1537913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_1537913 : String := "40424143440840420841440809060844404207414308440540070806084042414308440740420741434407400708070708084143440840424144080A0809084440420741430907070840424143444007084042430A060942084308410808440740064207414344060506074344074007080741434409094440074207094042410607094241434405054406054309074143054409050943094407400742070742084143084408404241430544080508410543084408050808430844074042070708084308440540420743060708414344064009064440424143064406400606060606404241430944400942414306440640090606064009424143440805444009084042410509050543064406400908094306440609094241430644064042080606060643060608"
theorem cover_1537913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 295) (hex := hex_1537913)
  decide +kernel
#print axioms cover_1537913

def state_1538213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 10)))
def hex_1538213 : String := "4042444143054042410A080A08084143054042440A0A0A4244050505430A40420A0A424408414305420805080A4441050941050A424408410508440805"
theorem cover_1538213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1538213)
  decide +kernel
#print axioms cover_1538213


end Mub6.Numerical.CircleFullD0.Forest
