class BoardCase
  attr_accessor :case_content, :case_name
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  def initialize(case_content, case_name)
    @case_content = case_content
    @case_name = case_name
  end

end
