import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticTreePackage (A : AdmissibleClass) where
  species : Type u
  molecularData : Type v
  treeTopologyValid : Prop
  branchLengthsEstimated : Prop
  monophylyConstraint : Prop

structure PhylogeneticTreeEvidence {A : AdmissibleClass} (P : PhylogeneticTreePackage A) where
  treeTopologyValidClosed : P.treeTopologyValid
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  monophylyConstraintClosed : P.monophylyConstraint

def PhylogeneticTreeClosed {A : AdmissibleClass} (P : PhylogeneticTreePackage A) : Prop :=
  P.treeTopologyValid ∧ P.branchLengthsEstimated ∧ P.monophylyConstraint

theorem phylogenetic_tree_closed_from_evidence {A : AdmissibleClass} (P : PhylogeneticTreePackage A) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyValidClosed (And.intro E.branchLengthsEstimatedClosed E.monophylyConstraintClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse