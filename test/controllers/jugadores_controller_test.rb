require 'test_helper'

class JugadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jugadore = jugadores(:one)
  end

  test "should get index" do
    get jugadores_url
    assert_response :success
  end

  test "should get new" do
    get new_jugadore_url
    assert_response :success
  end

  test "should create jugadore" do
    assert_difference('Jugadore.count') do
      post jugadores_url, params: { jugadore: { apellido: @jugadore.apellido, edad: @jugadore.edad, equipo_id: @jugadore.equipo_id, nombre: @jugadore.nombre } }
    end

    assert_redirected_to jugadore_url(Jugadore.last)
  end

  test "should show jugadore" do
    get jugadore_url(@jugadore)
    assert_response :success
  end

  test "should get edit" do
    get edit_jugadore_url(@jugadore)
    assert_response :success
  end

  test "should update jugadore" do
    patch jugadore_url(@jugadore), params: { jugadore: { apellido: @jugadore.apellido, edad: @jugadore.edad, equipo_id: @jugadore.equipo_id, nombre: @jugadore.nombre } }
    assert_redirected_to jugadore_url(@jugadore)
  end

  test "should destroy jugadore" do
    assert_difference('Jugadore.count', -1) do
      delete jugadore_url(@jugadore)
    end

    assert_redirected_to jugadores_url
  end
end
