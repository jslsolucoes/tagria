(function($) {
	$.widget("tagria.detail", {
		options: {
			atLeast : 0,
			empty : false,
			afterInsert : function (tr) {
			
			}
		},
		_create: function() {
			var self = this;
			var detail = self.element;
			
			$('.detail-table-plus',detail).on('click',function(){
				self._cloneLine();
				self._bindRemove();
				self._reorganize();
				self._atLeast();
				self.options.afterInsert($('.detail-table-table > tbody > tr:last',detail));
			});
			
			self._cloneToTemplate();
			self._bindRemove();
			self._reorganize();
			self._atLeast();
			
			if(self.options.empty){
				self._empty();
			}
		},
		_empty : function() {
			var self = this;
			var detail = self.element;
			$('.detail-table-minus',detail).trigger("click");
		},
		_atLeast : function() {
			var self = this;
			if( self.options.atLeast > 0 ) {
				var detail = this.element;
				if($('.detail-table-table > tbody > tr',detail).length == self.options.atLeast) {
					$('.detail-table-minus',detail).hide();
				} else {
					$('.detail-table-minus',detail).show();
				}
			}
		},
		_bindRemove : function() {
			var self = this;
			var detail = self.element;
			$('.detail-table-minus',detail).on('click.detail',function(){
				$(this).parent().parent().remove();	
				self._reorganize();
				self._atLeast();
			});
		},
		_randString : function(string_length){
			var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
			var randomstring = '';
			for (var i=0; i<string_length; i++) {
				var rnum = Math.floor(Math.random() * chars.length);
				randomstring += chars.substring(rnum,rnum+1);
			}
			return randomstring;
		},
		_cloneLine : function() {
			var self = this;
			var detail = self.element;
		
			var clone = $($('.detail-table-template',detail).val());
			
			$('*',clone).each(function(){
				if($(this).attr('id')){
					var id = $(this).attr('id');
					var generated = id + '_' + self._randString(20);
					clone.html(clone.html()
							.replace(new RegExp('\\b' + id + '\\b', 'g'), generated));
				}
			}); 
			
			$(':input:not(:button,:checkbox,:radio,.notClean)',clone).each(function(){
				$(this).val('');
			});
			$(':checkbox,:radio',clone).each(function(){
				$(this).prop('checked',false);
			});
			$('.detail-table-table > tbody',detail).append(clone);	
		},
		_cloneToTemplate : function() {
			var self = this;
			var detail = self.element;
			var template = $('.detail-table-template',detail);
			template.val('<tr>' + $('.detail-table-table > tbody > tr:first',detail).html()
					.replace(new RegExp('id="(.*?)_([^_]*?)"','g'),'id="$1"')
					.replace(new RegExp("'#(.*?)_([^_]*?)'",'g'),"'#$1'") + '</tr>');
		},
		_reorganize : function (){
			var self = this;
			var detail = self.element;	
			$('.detail-table-table > tbody > tr',detail).each(function(index){
				$('*',this).each(function(){
					if($(this).attr('name')){
						var name = $(this).attr('name');
						$(this).attr('name',name.replace(/(\[.*?\])/,'['+index+']'));
					}
				});
			});
		}
	});
})(jQuery);