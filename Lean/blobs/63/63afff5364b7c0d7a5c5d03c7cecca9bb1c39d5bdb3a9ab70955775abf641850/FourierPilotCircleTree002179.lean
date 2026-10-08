import FourierPilotCircleTree002180
import FourierPilotCircleTree002199
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002179
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![55, 20, 31, 17, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002180.state FourierPilotCircleTree002199.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002180.covered FourierPilotCircleTree002199.covered
#print axioms covered
end FourierPilotCircleTree002179
