module ApplicationHelper

  def image_link_to_product(product)
      link_to image_tag(first_image(product).present? ? first_image(product).url(:small) : product_without_image(:small)), product_url(product.friendly_id)
  end
  
  def first_image(product)
    if product.photos.first.present?
      product.photos.first.data
    else
      nil
    end
  end
  
  def product_without_image(size)
    if size == :medium
      "/images/product_without_image_medium.png"
    else
      "/images/product_without_image_small.png"
    end
  end
  
  def image_link_to_zoom(product)
    if first_image(product).present?
      link_to image_tag(first_image(product).url(:medium)), first_image(product).url(:big), :rel => "lightbox"
    else
      image_tag product_without_image(:medium)
    end
  end
  
  def thumb_link_to_zoom(img)
    link_to image_tag(img.url(:thumb)), img.url(:big), :rel => "lightbox"
  end

end