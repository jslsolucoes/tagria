(function($) {
	$.widget("tagria.select", {
		options: {
			
		},
		_create: function() {
			var self = this;
			var select = self.element;
			$(select).change(function(){
				if($(this).val() !== ''){
					$(this).removeClass('form-has-error');
				}
			});
		}
	});
})(jQuery);