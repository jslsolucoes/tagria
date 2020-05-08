(function($) {
	$.widget("tagria.input", {
		options: {
			maxLengthCount: false
		},
		_create: function() {
			var self = this;
			var container = self.element;
			var parentSelectors = '.form-control-container,.form-group';
			var input = $('input',container);	
			var maxLengther = $('.maxlenght-counter',container);
			var maxLengthCount = self.options.maxLengthCount;
			input.on('change keyup',function(e){
				var inputValue = $(this).val();
				if(inputValue !== ''){
					$(this).parents(parentSelectors).removeClass('is-empty').addClass('is-not-empty');
				} else {
					$(this).parents(parentSelectors).removeClass('is-not-empty').addClass('is-empty');
				}
				
				if(maxLengthCount) {
					maxLengther.text(inputValue.length + '/' + input.attr('maxlength'));	
				}
				
				if(e.keyCode==13) {
					const id = $(this).attr('id');
					const enterEvent = new CustomEvent('inputEnterEvent', {
						  detail: { src: id }
					});
					dispatchEvent(enterEvent);
        		}
			}).on('focus',function(e){
				$(this).parents(parentSelectors).addClass('is-focus');		
			}).on('blur',function(e){
				$(this).parents(parentSelectors).removeClass('is-focus');
			});
		}
	});
})(jQuery);