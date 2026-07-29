import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure LinearAdvectionPackage where
  advectionField : Type u
  initialCondition : Type v
  solutionFormula : Prop
  uniquenessProof : Prop

structure LinearAdvectionEvidence (L : LinearAdvectionPackage) where
  advectionFieldClosed : L.advectionField
  initialConditionClosed : L.initialCondition
  solutionFormulaClosed : L.solutionFormula
  uniquenessProofClosed : L.uniquenessProof

def LinearAdvectionClosed (L : LinearAdvectionPackage) : Prop := 
  L.advectionField ∧ L.initialCondition ∧ L.solutionFormula ∧ L.uniquenessProof

theorem linear_advection_closed_from_evidence (L : LinearAdvectionPackage) (E : LinearAdvectionEvidence L) : LinearAdvectionClosed L := by
  exact And.intro E.advectionFieldClosed (And.intro E.initialConditionClosed (And.intro E.solutionFormulaClosed E.uniquenessProofClosed))

end HautevilleHouse
end HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean