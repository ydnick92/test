require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test"Instancia User" do
    user = User.new()
    assert_instance_of(User,user)
  end

  test"Test Guardar sin Nombre" do
    user = User.new()
    assert_equal(false,user.save)  # debe ser false para que no permita guardar datos sin parametros(mirar validacion) y agregar la validacion en el modelo user.rb
  end

  test"Test Guardar con Nombre" do
    user = User.new(name:"Juan")
    assert_equal(true,user.save)

  end

end
