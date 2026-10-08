import FourierPilotCircleTree005175
import FourierPilotCircleTree005176
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005174
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005175.state FourierPilotCircleTree005176.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005175.covered FourierPilotCircleTree005176.covered
#print axioms covered
end FourierPilotCircleTree005174
