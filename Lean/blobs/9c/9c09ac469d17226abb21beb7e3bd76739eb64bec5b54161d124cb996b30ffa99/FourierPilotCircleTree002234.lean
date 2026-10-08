import FourierPilotCircleTree002235
import FourierPilotCircleTree002238
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002234
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![58, 18, 31, 50, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002235.state FourierPilotCircleTree002238.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002235.covered FourierPilotCircleTree002238.covered
#print axioms covered
end FourierPilotCircleTree002234
