class ProductsPage
  include PageObject
  include MainMenu

  page_url "http://test.interesnee.ru/admin/products"
  
  cell(:new_product_name, :text => "New product name")

  def edit_first_product
    self.execute_script("document.getElementsByTagName('table')[0].children[0].children[1].children[0].click()")
  end

  def first_product_name
    return self.execute_script("document.getElementsByTagName('table')[0].children[0].children[1].children[0].innerHTML")
  end
end
