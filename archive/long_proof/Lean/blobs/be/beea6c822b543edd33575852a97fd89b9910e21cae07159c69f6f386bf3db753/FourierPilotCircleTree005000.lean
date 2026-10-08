import FourierPilotCircleTree005001
import FourierPilotCircleTree005002
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005000
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 24, 27, 21, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005001.state FourierPilotCircleTree005002.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005001.covered FourierPilotCircleTree005002.covered
#print axioms covered
end FourierPilotCircleTree005000
