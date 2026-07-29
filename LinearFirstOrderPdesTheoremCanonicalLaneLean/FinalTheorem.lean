import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

def ConstrainedLinearPdeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_pde_endgame (A : AdmissibleClass) : ConstrainedLinearPdeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean