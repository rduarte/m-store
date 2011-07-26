	simpleCart.email = "brett@wojodesign.com";
	simpleCart.checkoutTo = PayPal;
//	simpleCart.merchantId = "118575326044237";
//	simpleCart.checkoutTo = GoogleCheckout;
	simpleCart.currency = USD;
//	simpleCart.currency = GBP;
//  simpleCart.currency = EUR;
	simpleCart.taxRate  = 0.08;
//	simpleCart.shippingFlatRate = 5.25;
	simpleCart.shippingQuantityRate = 1.00;
/*	CartItem.prototype.shipping = function(){
		if( this.size ){
			switch( this.size.toLowerCase() ){
				case 'small':
					return this.quantity * 10.00;
				case 'medium':
					return this.quantity * 12.00;
				case 'large':
					return this.quantity * 15.00;
				case 'bull':
					return 45.00;
				default:
					return this.quantity * 5.00;
			}
		}
	};
*/
	
	simpleCart.cartHeaders = ["Thumb_image_noHeader", "Name" , "Size_input_div_div", "Price" , "decrement_noHeader" , "Quantity", "increment_noHeader", "remove_noHeader", "Total" ];
