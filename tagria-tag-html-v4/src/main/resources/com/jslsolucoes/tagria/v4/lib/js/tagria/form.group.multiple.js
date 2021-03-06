(function($) {
	$.widget("tagria.formGroupMultiple", {
		options : {
			atLeast : 0,
			empty : false,
			afterInsert : function(idx, element) {

			},
			afterRemove : function() {

			},
			indexed : false
		},
		_create : function() {
			var self = this;
			var detail = self.element;

			$('.fg-plus', detail).on('click', function() {
				self._addLine();
			});

			self._cloneToTemplate();
			self._attachRemoveEventTo('.fg-minus');
			self._reorganize();
			self._atLeast();
			self._setIndex(self._size());

			if (self.options.empty) {
				self._empty();
			}

		},
		_afterInsert : function() {
			var self = this;
			var detail = self.element;
			var idx = self._index();
			var element = $('.fg-row:last', detail);
			self.options.afterInsert(idx, element);
		},
		_afterRemove : function() {
			var self = this;
			self.options.afterRemove();
		},
		_size : function() {
			var self = this;
			var detail = self.element;
			return $('.fg-row', detail).length;
		},
		_empty : function() {
			var self = this;
			var detail = self.element;
			$('.fg-minus', detail).trigger("click");
		},
		_atLeast : function() {
			var self = this;
			var size = self._size();
			if (self.options.atLeast > 0) {
				var detail = this.element;
				if (size == self.options.atLeast) {
					$('.fg-minus', detail).hide();
				} else {
					$('.fg-minus', detail).show();
				}
			}
		},
		_attachRemoveEventTo : function(selector) {
			var self = this;
			var detail = self.element;
			$(selector, detail).on('click', function() {
				self._removeLine(this);
			});
		},
		_removeObjectLine : function(object) {
			$(object).parent().parent().remove();
		},
		_removeLine : function(object) {
			var self = this;
			self._removeObjectLine(object);
			self._reorganize();
			self._atLeast();
			self._afterRemove();
		},
		_addLine : function() {
			var self = this;
			self._cloneLine();
			self._incrementIndex();
			self._attachRemoveEventTo('.fg-minus:last');
			self._reorganize();
			self._atLeast();
			self._afterInsert();
		},
		_setIndex : function(value) {
			this.index = value;
		},
		_index : function() {
			return this.index;
		},
		_incrementIndex : function() {
			this.index++;
		},
		_cloneLine : function() {
			var self = this;
			var detail = self.element;
			var currentIndex = self._index();
			var template = $('.fg-template', detail).val().replace(
					new RegExp('__0', 'g'), '__' + currentIndex);
			var clone = $(template);
			$(':input:not(:button,:checkbox,:radio,.notClean)', clone).each(
					function() {
						$(this).val('').removeClass('is-not-empty is-empty');
					});

			$(':checkbox,:radio', clone).each(function() {
				$(this).prop('checked', false);
			});

			$('.fg-content', detail).append(clone);
		},
		_cloneToTemplate : function() {
			var self = this;
			var detail = self.element;
			var templateScript = $('.fg-template-script', detail).val();
			$('.fg-template', detail).val(
					'<div class="row fg-row my-2 p-2 border">'
							+ $('.fg-row:first', detail).html()
							+ templateScript + '</div>');
		},
		_reorganize : function() {
			var self = this;
			if(self.options.indexed) {
				var detail = self.element;
				$('.fg-row', detail).each(function(index) {
					$('*', this).each(function() {
						var name = $(this).attr('name');
						if (name) {
							$(this).attr('name',name.replace(/(\[.*?\])/, '[' + index + ']'));
						}
					});
				});
			}
		}
	});
})(jQuery);