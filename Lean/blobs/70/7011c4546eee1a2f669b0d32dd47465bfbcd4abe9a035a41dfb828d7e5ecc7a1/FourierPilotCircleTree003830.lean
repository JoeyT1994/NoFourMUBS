import FourierPilotCircleTree003831
import FourierPilotCircleTree003832
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003830
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 27, 15, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003831.state FourierPilotCircleTree003832.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003831.covered FourierPilotCircleTree003832.covered
#print axioms covered
end FourierPilotCircleTree003830
