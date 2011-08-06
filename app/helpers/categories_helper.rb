module CategoriesHelper

  def image_link_to(product)
    if product.photos.first.present?
      link_to image_tag(product.photos.first.data.url(:medium), :alt => (product.photos.first.description.present?) ? product.photos.first.description : ""), product_url(product.friendly_id)
    else
      link_to image_tag("/images/product_without_image.png"), product_url(product.friendly_id)
    end
  end
end
