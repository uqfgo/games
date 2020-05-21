/* 
		鸟对象
			属性：
				定位，宽，高，背景图
			方法：
				一直下落，停止下落，点击上升
 */
;(function (window, undefined) {
	// 构造函数
	function Bird(options) {
		options = options || {}
		this.position = options.position || 'absolute'
		this.top = options.top || 230
		this.left = options.left || 100
		this.width = options.width || 34
		this.height = options.height || 25
		this.background = options.background || 'url(images/birds.png) -8px -11px'
	}
	
	// 原型
	Bird.prototype.Render = function (parent) {
		var bird = document.createElement('div')
		bird.id = 'bd'
		var bs = bird.style
		bs.position = this.position
		bs.top = this.top + 'px'
		bs.left = this.left + 'px'
		bs.width = this.width + 'px'
		bs.height = this.height + 'px'
		bs.background = this.background
		parent.appendChild(bird)
	}
	
	// 一直下落，对象，定时器
	Bird.prototype.Drop = function (degree) {
		this.obj = document.getElementById('bd')
		this.objT = this.obj.offsetTop
		var that = this
		var num = 0
		this.timers_one = setInterval(function () {
			that.objT += 3
			that.obj.style.top = that.objT + 'px'
		}, degree)
	}
		
	// 小鸟翅膀动
	Bird.prototype.move = function () {
		var that = this
		var num = -8
		that.timers_two = setInterval(function () {
			num < -120? num = -8: num -= 52
			that.obj.style.backgroundPosition = num + 'px -11px'
		}, 80)
	}
	
	// 结束之后翅膀不动
	Bird.prototype.MoveEnd = function () {
		clearInterval(this.timers_two)
	}
	
	// 停止下落
	Bird.prototype.Clear = function () {
		clearInterval(this.timers_one)
	}
	
	// 点击上升
	Bird.prototype.Up = function (parent) {
		var that = this
		parent.onclick = function () {
			that.objT -= 20
			that.obj.style.top = that.objT + 'px'
		}
	}
	
	// 结束停止上升
	Bird.prototype.EndUp = function (parent) {
		parent.onclick = null
	}
	
	// 键盘按下的时候
	Bird.prototype.Down = function () {
		var that = this
		document.onkeydown = function (ev) {
			ev = ev || window.event
			if (ev.keyCode === 38) {
				that.objT -= 20
				that.obj.style.top = that.objT + 'px'
			}
		}
	}
	
	// 键盘事件停止
	Bird.prototype.DownEnd = function () {
		document.onkeydown = null
	}
	
	// window
	window.Bird = Bird
	
})(window, undefined)