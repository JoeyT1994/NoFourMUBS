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
def state_374716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_374716 : String := "42430544430544400541054205430544400541054205080505054344080544424305444008410808050808"
theorem cover_374716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 43) (hex := hex_374716)
  decide +kernel
#print axioms cover_374716

def state_374761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_374761 : String := "44410544400542054305410544400506050505"
theorem cover_374761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_374761)
  decide +kernel
#print axioms cover_374761

def state_374782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_374782 : String := "43054440424305440A054305444108080542430509434441054042050842440705444305410540050705054441400842070840424344410540050905090842094344410840080708444108080841050805"
theorem cover_374782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 81) (hex := hex_374782)
  decide +kernel
#print axioms cover_374782

def state_374864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_374864 : String := "4440424105440A0541050742410544430606054144430540420544090542064441054305400506050544434042050906404241444305400506050707420641444306404206070606444306060643050605"
theorem cover_374864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 81) (hex := hex_374864)
  decide +kernel
#print axioms cover_374864

def state_374947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_374947 : String := "424143440A050A430A0A4143444240074441050A05400744410807070544420A4007430808084307440A07"
theorem cover_374947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_374947)
  decide +kernel
#print axioms cover_374947

def state_374991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_374991 : String := "4143444042094441050A054206444107060605094344400A420641060606440A09"
theorem cover_374991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_374991)
  decide +kernel
#print axioms cover_374991

def state_375025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
def hex_375025 : String := "43444042444143054005420505434005420505400A420A444143050A0A41050A4105430505444143050843424005444105090509424007444143054240084443050A050843424007444105070507420A074105074007444108070741054305084244414305404205444305070507430640420944414305404209444305090507434042064441050A0506400A0941054305094206444106060641050644414340050A4042444305410540054205050508424407050A43404244410543054005060544090542060A4042449B4143054005054340050540424441050A0508420644410543054007060544414308084340090A40429B07429B084108430808424441430642070A430642409B06409B0641060644410A430A40429B0A0A410A430640424441060606080641430508430640424441050505084206444105060540054205410506444042434441400A090A0A094344410842400A444341420A080A0A43410807080808444106420A0608420943444140424443410740080709080842094443080808404244434140420908420944439B090840420A44439B0A439B0A420944439B09439B090943414008094042090809094443410840424443080608074244439B41084006424405090643080808410840064244060806084244434109420909090944434140424443080808080A404244439B4140420908094042094405084209440509439B41080944430A08084244430A09430A090A4140084207084042094443080508420944430A0509434108404244430808080842090841084008094108404209084209084441404209080940420943440608060909404209084209430808"
theorem cover_375025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 613) (hex := hex_375025)
  decide +kernel
#print axioms cover_375025


end Mub6.Numerical.CircleFullPrototype.Forest
