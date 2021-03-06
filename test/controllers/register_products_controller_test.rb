require 'test_helper'

class RegisterProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register_product = register_products(:one)
  end

  test "should get index" do
    get register_products_url
    assert_response :success
  end

  test "should get new" do
    get new_register_product_url
    assert_response :success
  end

  test "should create register_product" do
    assert_difference('RegisterProduct.count') do
      post register_products_url, params: { register_product: { email: @register_product.email, endereco: @register_product.endereco, id_seq: @register_product.id_seq, nome: @register_product.nome, preco: @register_product.preco } }
    end

    assert_redirected_to register_product_url(RegisterProduct.last)
  end

  test "should show register_product" do
    get register_product_url(@register_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_product_url(@register_product)
    assert_response :success
  end

  test "should update register_product" do
    patch register_product_url(@register_product), params: { register_product: { email: @register_product.email, endereco: @register_product.endereco, id_seq: @register_product.id_seq, nome: @register_product.nome, preco: @register_product.preco } }
    assert_redirected_to register_product_url(@register_product)
  end

  test "should destroy register_product" do
    assert_difference('RegisterProduct.count', -1) do
      delete register_product_url(@register_product)
    end

    assert_redirected_to register_products_url
  end
end
