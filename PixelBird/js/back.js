/* 
		背景对象
			属性：
				背景图
			方法：
				一直往左移
 */
;(function (window, undefined) {
	
	// 构造函数
	function Back(options) {
		options = options || {}
		this.position = options.position || 'relative'
		this.width = options.width || '800px'
		this.height = options.height || '600px'
		this.margin = options.margin || 'auto'
		this.border = options.border || '2px solid #000'
		this.overflow = options.overflow || 'hidden'
		this.background = options.background || 'url(images/sky.png)'
		this.backgroundPosition = options.bp || '0px 0px'
	}
	
	// 原型
	Back.prototype.Render = function (parent) {
		var div = document.createElement('div')
		div.id = 'back'
		var Dshort = div.style
		Dshort.position = this.position
		Dshort.width = this.width
		Dshort.height = this.height
		Dshort.margin = this.margin
		Dshort.border = this.border
		Dshort.overflow = this.overflow
		Dshort.background = this.background
		Dshort.backgroundPosition = this.backgroundPosition
		parent.appendChild(div)
	}
	
	Back.prototype.leftMove = function () {
		var obj = document.getElementById('back')
		var num = 0
		this.timers_two = setInterval(function () {
			num -= 3
			obj.style.backgroundPosition = num + 'px 0px'
		}, 20)
	}
	
	Back.prototype.Clear = function () {
		clearInterval(this.timers_two)
	}
	
	// window
	window.Back = Back
})(window, undefined)