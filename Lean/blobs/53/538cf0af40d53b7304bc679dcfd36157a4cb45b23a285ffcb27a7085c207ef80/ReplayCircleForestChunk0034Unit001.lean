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
def state_284539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
def hex_284539 : String := "4441424340444143420A064244070907434244404106060640410606060642444041434244404107430642D506064041094306090606424440090509094342444043064142D506050540430641060606064244054041094342D5064205054143060505444041070505094107430605404109434244404306410606064006060642444041094342070609410943060909094143060943064244060606444009060941430A0943424005060642404441094342070609054441094306090809444107430642404405060506410A43064206064044410942434440410943424405400905090505400909090909444107420507410842080943400906094243404443414244400606060642440606064142444043414244404306050540430641060606064244050606414244054043414205050505054405400A05050540434142444006060606074142444007430605074440430609064007064207444007050743064142440506060544404306410606064043064106060642444043414205050505054007430605444006050643414240070606420706414240074443064142060606074044430609060642074007064443064142050605430641060640444142434405404143424440070507094208094342070A0A054405400A054344400A0540094109054405094243440540070505434405400A0505414243404441090707444108434207400605080708094207434007444243060506070A44054142434044050805084340090609424340440507050543400605054340444243060606060640444241090A090944420506424109430605064142434044410543050905440A050909424340074443064106060640444109070744410842074306080843404406050609"
theorem cover_284539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 645) (hex := hex_284539)
  decide +kernel
#print axioms cover_284539

def state_285184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
def hex_285184 : String := "40444109420A0909444142434009090809424340440541080A440541080540080543400909094109420809"
theorem cover_285184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_285184)
  decide +kernel
#print axioms cover_285184

def state_285227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
def hex_285227 : String := "4243400744434142074007440507074142074007050707400744414205434005050505074340444243070A4341444008084007420706070A074442434140444342070642074144050606074443060543064206064007094140440507440542050540070543414044060606064140440A420A0A440542430605060A42074341404406060606414044420709074442430641060606060740440A0A44424143400A0505050A42414340070808074143400909090A"
theorem cover_285227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 179) (hex := hex_285227)
  decide +kernel
#print axioms cover_285227

def state_285406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 13)))
def hex_285406 : String := "4142430708434005444142050542074305090540080842074307400744420741080707"
theorem cover_285406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_285406)
  decide +kernel
#print axioms cover_285406

def state_285441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 7)))
def hex_285441 : String := "07"
theorem cover_285441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_285441)
  decide +kernel
#print axioms cover_285441

def state_285442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_285442 : String := "4344404243054441440805440840050505430544080542434441050805444140440805440606404408420505440606410540050543054406050544404244410943440A400A4207090A41094307400709094244414340094442410743060906090943404442434108060A08424341090609094442430641400A06060642430641090606400A440A0941094340420706424406060640090909404205054241054305444005090505"
theorem cover_285442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 167) (hex := hex_285442)
  decide +kernel
#print axioms cover_285442


end Mub6.Numerical.CircleFullPrototype.Forest
